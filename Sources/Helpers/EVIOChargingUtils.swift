//
//  EVIOChargingUtils.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 05/04/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation
import CoreLocation
import MapKit
import WLModels

public protocol EVIOChargingUtilsWebServiceProtocol {
    
    func checkIfChargerIsCharging(sessionId: String, charger: EVIOCharger, isToStop: Bool)
    func isChargerCharging(data: (id: String, type: String))
    func isSessionStopped(data: (id: String, type: String))
    func startCharging(charger: EVIOCharger, evId: String, idTag: String?, sessionId: String?, autoStop: EVIOAutoStop?, contract: EVIOContract)
    func stopCharging(command: EVIOCommand?)
    func failedToStartCharging(charger: EVIOCharger, evId: String)
    func checkChargerStatus(charger: EVIOCharger)
    
}

public protocol EVIOChargingUtilsWebServiceDelegate {
    
    func chargingUtilsDidConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage)
    
    func chargingUtilsDidFailToStartChargingVehicle(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage)
    func chargingUtilsDidFailToStartChargingVehicle(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidStartChargingVehicle(_ utils: EVIOChargingUtilsWebService, commandResponse: EVIOCommandResponse)
    
    func chargingUtilsDidFailToGetChargerInfo(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToGetChargerInfo(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage)
    func chargingUtilsDidGetChargerInfo(_ utils: EVIOChargingUtilsWebService, charger: EVIOCharger)
    
    func chargingUtilsDidFailToSendTransactionFailedReport(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidSendTransactionFailedReport(_ utils: EVIOChargingUtilsWebService)
    
    func chargingUtilsDidConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage)
    
    func chargingUtilsDidFailToStopChargingSession(_ utils: EVIOChargingUtilsWebService)
    func chargingUtilsDidFailToStopChargingSession(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage)
    func chargingUtilsDidStopChargingSession(_ utils: EVIOChargingUtilsWebService, commandResponse: EVIOCommandResponse)
    
}

public final class EVIOChargingUtils: EVIOChargingUtilsWebServiceDelegate {
    
    private var didStartCharging: Bool!
    private var didStopCharging: Bool!
    private var adHocActivated: Bool?
    private var animationDuration: Int!
    private var animationSecondsCounter: Int!
    private let networkManager: EVIONetworkManager = EVIONetworkManager.shared
    private var selectedContract: EVIOContract?
    private var selectedPlug: EVIOPlug?
    private var selectedEV: EVIOEv?
    private var charger: EVIOCharger?
    private var autoStop: EVIOAutoStop?
    private var userLocation: CLLocationCoordinate2D?
    private var animationTimer: Timer!
    private var timeoutTimer: Timer?
    private var isToStop: Bool = false
    private var command: EVIOCommand?
    private var sessionToStop: EVIOSession?
    private var shouldReturnErrors: Bool
    private var webService: EVIOChargingUtilsWebServiceProtocol!
    public var startedChargingSuccessCallback: (() -> Void) = {}
    public var stoppedChargingSuccessCallback: (() -> Void) = {}
    public var showAnimatedLoadingCallback: (() -> Void) = {}
    public var startedChargingErrorMessageCallback: ((EVIOServerMessage) -> Void) = {_ in}
    public var startedChargingErrorCallback: (() -> Void) = {}
    public var stoppedChargingErrorMessageCallback: ((EVIOServerMessage) -> Void) = {_ in}
    public var stoppedChargingErrorCallback: (() -> Void) = {}
    
    public init(webService: EVIOChargingUtilsWebServiceProtocol?) {
        self.shouldReturnErrors = false
        self.didStopCharging = false
        self.didStartCharging = false
        self.animationDuration = 0
        self.animationSecondsCounter = 0
        self.webService = webService ?? EVIOChargingUtilsWebService(delegate: self)
    }
    
    deinit {
        self.didStartCharging = nil
        self.didStopCharging = nil
        self.shouldReturnErrors = false
        self.animationDuration = nil
        self.animationSecondsCounter = nil
        self.adHocActivated = nil
        self.isToStop = false
    }
    
    public func startChargingProcess(charger: EVIOCharger, plug: EVIOPlug?, contract: EVIOContract, userLocation: CLLocationCoordinate2D, ev: EVIOEv, adHocActivated: Bool, autoStop: EVIOAutoStop?) {
        self.charger = charger
        self.selectedContract = contract
        self.autoStop = autoStop
        self.userLocation = userLocation
        self.selectedEV = ev
        self.selectedPlug = plug
        self.adHocActivated = adHocActivated
        self.isToStop = false
        self.shouldReturnErrors = true
        self.checkIfUserIsNearEnoughFromTheChargingPoint()
    }
    
    public func stopChargingProcess(session: EVIOSession) {
        self.sessionToStop = session
        if self.command == nil {
            self.command = EVIOCommand(chargerId: session.hwID, evId: session.evID?.evId != nil ? session.evID?.evId : session.evID?.id, tariffId: nil, action: .stop, plugId: session.plugID, idTag: session.idTag, sessionId: session.sessionID, chargerType: session.chargerType, hardwareId: session.hwID, address: session.address, fees: session.fees, autoStop: nil, stopReason: nil)
        }
        self.isToStop = true
        self.shouldReturnErrors = true
        self.showAnimatedLoadingCallback()
        self.startOrStopChargingProcess()
    }
    
    public func stopChargingProcessByOwner(session: EVIOSession, reason: EVIOStopReason?) {
        self.command = EVIOCommand(chargerId: session.hwID, evId: session.evID?.evId != nil ? session.evID?.evId : session.evID?.id, tariffId: nil, action: .stop, plugId: session.plugID, idTag: session.idTag, sessionId: session.sessionID, chargerType: session.chargerType, hardwareId: session.hwID, address: session.address, fees: session.fees, autoStop: nil, stopReason: reason)
        self.stopChargingProcess(session: session)
    }
    
    private func checkIfUserIsNearEnoughFromTheChargingPoint() {
        guard let charger =  self.charger, let geometry = charger.geometry, let coordinates = geometry.coordinates, coordinates.count == 2, let userLocation = self.userLocation else {
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
            return
        }
        var isNearEnough = true
        let chargingDistance = charger.chargingDistance ?? "500"
        let allowedMinDistance = (Double(chargingDistance) ?? 0) / 1000.0
        let to = CLLocationCoordinate2D(latitude: coordinates.last ?? 0.0, longitude: coordinates.first ?? 0.0)
        EVIOAppUtils.shared.calculateDistance(sourceCoordinate: userLocation, destinationCoordinate: to) { (value) in
            DispatchQueue.main.async { [weak self] in
                if value != "-" {
                    let result = value.components(separatedBy: "-")
                    if let distance = Double(result[0].replacingOccurrences(of: "km", with: "").replacingOccurrences(of: " ", with: "")) {
                        if distance <= allowedMinDistance {
                            isNearEnough = true
                        }
                    }
                }
                if isNearEnough {
                    self?.showAnimatedLoadingCallback()
                    self?.startOrStopChargingProcess()
                } else {
                    guard let returnErrors = self?.shouldReturnErrors, returnErrors else {return}
                    self?.shouldReturnErrors = false
                    let message = EVIOServerMessage(code: "chargerDetails_tooFarFromTheCharger", message: nil, redirect: nil, amount: nil, charger: nil)
                    self?.startedChargingErrorMessageCallback(message)
                }
            }
        }
    }
    
    private func invalidateAnimationTimer() {
        if self.animationTimer != nil {
            self.animationDuration = nil
            self.animationSecondsCounter = nil
            self.animationTimer.invalidate()
            self.animationTimer = nil
            self.timeoutTimer?.invalidate()
            self.timeoutTimer = nil
        }
    }
    
    @objc private func checkIfTimerShouldBeDisabled() {
        if self.animationDuration != nil {
            self.animationDuration -= 1
            let valueToCheck: Bool = self.isToStop ? self.didStopCharging : self.didStartCharging
            if !valueToCheck {
                if self.animationDuration == 0 {
                    self.terminateTimer()
                }
            }
        }
    }
    
    private func terminateTimer() {
        self.invalidateAnimationTimer()
        let valueToCheck: Bool = self.isToStop ? self.didStopCharging : self.didStartCharging
        if valueToCheck {
            if self.isToStop {
                self.stoppedCharging()
            } else {
                self.startedCharging()
            }
        } else {
            if self.isToStop {
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.stoppedChargingErrorCallback()
            } else {
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
            }
        }
    }
    
    private func startOrStopChargingProcess() {
        guard let chargerType: String = self.isToStop ? self.sessionToStop?.chargerType : self.charger?.chargerType else {
            if self.isToStop {
                self.invalidateAnimationTimer()
                guard self.shouldReturnErrors else { return }
                self.shouldReturnErrors = false
                self.stoppedChargingErrorCallback()
            } else {
                guard self.shouldReturnErrors else { return }
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
            }
            return
        }
        if self.isToStop {
            guard self.command != nil, self.sessionToStop != nil else {
                self.invalidateAnimationTimer()
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.stoppedChargingErrorCallback()
                return
            }
        } else {
            guard self.charger != nil else {
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
                return
            }
        }
        self.animationSecondsCounter = 0
        switch chargerType {
        case .ocpp16ChargerType:
            self.animationDuration = .ocpp16TimoutDuration
        case .siemensChargerType:
            self.animationDuration = .siemensTimoutDuration
        case .sonoffChargerType, .evioBoxChargerType:
            self.animationDuration = .evioTimoutDuration
        case .zeroZeroSixChargerType:
            self.animationDuration = .zeroZeroSixTimoutDuration
        case .occpsChargerType:
            self.animationDuration = .ocpsTimoutDuration
        default:
            self.animationDuration = .otherChargerTimoutDuration
        }
        self.timeoutTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.checkIfTimerShouldBeDisabled), userInfo: nil, repeats: true)
        if self.isToStop {
            self.webService.stopCharging(command: self.command)
        } else {
            if let charger = self.charger {
                self.webService.checkChargerStatus(charger: charger)
            } else {
                guard self.shouldReturnErrors else { return }
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
            }
        }
    }
    
    private func startChargingSession(charger: EVIOCharger, evId: String) {
        self.charger = charger
        guard let contract = self.selectedContract else {
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
            return
        }
        
        var tagId = ""
        
        if charger.isEvio {
            if charger.isInternal {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                tagId = internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            } else {
                let evioToken = contract.networks?.first(where: {return $0.network == .evio})?.tokens?.first(where: {return $0.tokenType == .appUser})
                tagId = evioToken?.idTagDEC ?? evioToken?.idTagHexa ?? .empty
            }
        } else if charger.isGoCharge {
            if charger.isInternal {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                tagId = internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            } else {
                let goChargeToken = contract.networks?.first(where: { $0.network == .goCharge})?.tokens?.first(where: { $0.tokenType == .appUser})
                tagId = goChargeToken?.idTagDEC ?? goChargeToken?.idTagHexa ?? .empty
            }
        } else if charger.isHyundai {
            if charger.isInternal {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                tagId = internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            } else {
                let hyundaiToken = contract.networks?.first(where: { $0.network == .hyundai})?.tokens?.first(where: { $0.tokenType == .appUser})
                tagId = hyundaiToken?.idTagDEC ?? hyundaiToken?.idTagHexa ?? .empty
            }
        } else if charger.isMobie, let mobieToken = contract.networks?.first(where: {return $0.network == .mobie})?.tokens?.first(where: {return $0.tokenType == .appUser}) {
            tagId = mobieToken.idTagDEC ?? mobieToken.idTagHexa ?? .empty
        } else if charger.isGireve, let gireveToken = contract.networks?.first(where: {return $0.network == .gireve})?.tokens?.first(where: {return $0.tokenType == .other}) {
            tagId = gireveToken.idTagDEC ?? gireveToken.idTagHexa ?? .empty
        }
        
        if charger.isMobie && self.adHocActivated ?? false {
            tagId = "-1"
        } else {
            if tagId.isEmpty {
                self.invalidateAnimationTimer()
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                let message: EVIOServerMessage = EVIOServerMessage(code: "chargerPointFullDetails_noRFID", message: nil, redirect: nil, amount: nil, charger: nil)
                self.startedChargingErrorMessageCallback(message)
                return
            }
        }
        self.webService.startCharging(charger: charger, evId: evId, idTag: tagId, sessionId: nil, autoStop: self.autoStop, contract: contract)
    }
    
    private func startChargerIsChargingConfirmProcess(id: String) {
        guard let charger = self.charger else {
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
            return
        }
        self.webService.checkIfChargerIsCharging(sessionId: id, charger: charger, isToStop: false)
    }
    
    private func checkIfSessionHasStopped() {
        guard let session = self.sessionToStop else {
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.stoppedChargingErrorCallback()
            return
        }
        let charger = EVIOCharger()
        charger.chargerType = session.chargerType
        self.webService.checkIfChargerIsCharging(sessionId: session.id ?? .empty, charger: charger, isToStop: true)
    }
    
    @objc private func checkIfAnimationCanBeStopped() {
        guard let chargerType: String = self.isToStop ? self.sessionToStop?.chargerType : self.charger?.chargerType, self.animationSecondsCounter != nil, self.animationTimer != nil else {return}
        switch chargerType {
        case .siemensChargerType:
            if self.animationSecondsCounter >= .siemensAnimationDuration {
                self.terminateTimer()
            }
        default:
            if self.animationSecondsCounter >= .evioAnimationDuration {
                self.terminateTimer()
            }
        }
        if self.animationSecondsCounter != nil {
            self.animationSecondsCounter += 1
        }
    }
    
    private func startedCharging() {
        self.startedChargingSuccessCallback()
    }
    
    private func stoppedCharging() {
        self.stoppedChargingSuccessCallback()
    }
    
    // MARK: DELEGATE METHODS
    
    public func chargingUtilsDidConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.didStartCharging = true
            self.animationTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.checkIfAnimationCanBeStopped), userInfo: nil, repeats: true)
            self.checkIfAnimationCanBeStopped()
        }
    }
    
    public func chargingUtilsDidFailToConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard let charger = self.charger, let evId = self.selectedEV?.evId ?? self.selectedEV?.id else {
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
                return
            }
            if charger.chargerType == .sonoffChargerType || charger.chargerType == .zeroZeroSixChargerType || charger.chargerType == .evioBoxChargerType {
                self.webService.failedToStartCharging(charger: charger, evId: evId)
            }
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
        }
    }
    
    public func chargingUtilsDidFailToConfirmChargerIsCharging(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard let charger = self.charger, let evId = self.selectedEV?.evId ?? self.selectedEV?.id else {
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
                return
            }
            if charger.chargerType == .sonoffChargerType || charger.chargerType == .zeroZeroSixChargerType || charger.chargerType == .evioBoxChargerType {
                self.webService.failedToStartCharging(charger: charger, evId: evId)
            }
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorMessageCallback(message)
        }
    }
    
    public func chargingUtilsDidFailToStartChargingVehicle(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorMessageCallback(message)
        }
    }
    
    public func chargingUtilsDidFailToStartChargingVehicle(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
        }
    }
    
    public func chargingUtilsDidStartChargingVehicle(_ utils: EVIOChargingUtilsWebService, commandResponse: EVIOCommandResponse) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.startChargerIsChargingConfirmProcess(id: commandResponse.sessionId ?? .empty)
        }
    }
    
    public func chargingUtilsDidFailToGetChargerInfo(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorCallback()
        }
    }
    
    public func chargingUtilsDidFailToGetChargerInfo(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.startedChargingErrorMessageCallback(message)
        }
    }
    
    public func chargingUtilsDidGetChargerInfo(_ utils: EVIOChargingUtilsWebService, charger: EVIOCharger) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self, let evId = self.selectedEV?.evId ?? self.selectedEV?.id else {return}
            let selectedPlug: EVIOPlug? = charger.plugs?.first(where: { $0.plugId == self.selectedPlug?.plugId })
            if charger.status == .free && selectedPlug?.status == .free {
                selectedPlug?.selected = true
                self.startChargingSession(charger: charger, evId: evId)
            } else if charger.status == .charging || selectedPlug?.status == .charging {
                self.invalidateAnimationTimer()
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                let message: EVIOServerMessage = EVIOServerMessage(code: "connectstation_plugAlreadyBeingUsed", message: nil, redirect: nil, amount: nil, charger: charger)
                self.startedChargingErrorMessageCallback(message)
            } else {
                self.invalidateAnimationTimer()
                guard self.shouldReturnErrors else {return}
                self.shouldReturnErrors = false
                self.startedChargingErrorCallback()
            }
        }
    }
    
    public func chargingUtilsDidFailToSendTransactionFailedReport(_ utils: EVIOChargingUtilsWebService) {
        print("did fail to send report to transaction failed")
    }
    
    public func chargingUtilsDidSendTransactionFailedReport(_ utils: EVIOChargingUtilsWebService) {
        print("did send report to transaction failed")
    }
    
    public func chargingUtilsDidConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.didStopCharging = true
            self.animationTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.checkIfAnimationCanBeStopped), userInfo: nil, repeats: true)
            self.checkIfAnimationCanBeStopped()
        }
    }
    
    public func chargingUtilsDidFailToConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.stoppedChargingErrorCallback()
        }
    }
    
    public func chargingUtilsDidFailToConfirmSessionHasStopped(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.stoppedChargingErrorMessageCallback(message)
        }
    }
    
    public func chargingUtilsDidStopChargingSession(_ utils: EVIOChargingUtilsWebService, commandResponse: EVIOCommandResponse) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.checkIfSessionHasStopped()
        }
    }
    
    public func chargingUtilsDidFailToStopChargingSession(_ utils: EVIOChargingUtilsWebService, message: EVIOServerMessage) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.stoppedChargingErrorMessageCallback(message)
        }
    }
    
    public func chargingUtilsDidFailToStopChargingSession(_ utils: EVIOChargingUtilsWebService) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.invalidateAnimationTimer()
            guard self.shouldReturnErrors else {return}
            self.shouldReturnErrors = false
            self.stoppedChargingErrorCallback()
        }
    }
    
}

public final class EVIOChargingUtilsWebService: EVIOChargingUtilsWebServiceProtocol {
    
    private var timeout: Int
    private var chargingTimeout: Timer?
    private var serverDidAnswerForStartCharging: Bool
    private var connectionStationAlreadyStartedCharging: Bool
    private var delegate: EVIOChargingUtilsWebServiceDelegate?
    
    public init(delegate: EVIOChargingUtilsWebServiceDelegate?) {
        self.delegate = delegate
        self.timeout = 5
        self.chargingTimeout = nil
        self.serverDidAnswerForStartCharging = false
        self.connectionStationAlreadyStartedCharging = false
    }
    
    // MARK: - METHODS REGARDING START CHARGING SESSION
    @objc private func checkIfTimmerSouldBeStopped(timer: Timer) {
        let info = timer.userInfo as? String
        let infoArray = info?.components(separatedBy: ";")
        guard let sessionId = infoArray?[0], let chargerType = infoArray?[1], let isToStop = Bool(infoArray?[2] ?? "false") else {
            self.chargingTimeout?.invalidate()
            self.chargingTimeout = nil
            self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
            self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
            return
        }
        if self.timeout == 0 {
            self.chargingTimeout?.invalidate()
            self.chargingTimeout = nil
            if isToStop {
                self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
            } else {
                self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
            }
        } else {
            if self.serverDidAnswerForStartCharging {
                self.serverDidAnswerForStartCharging = false
                if isToStop {
                    self.isSessionStopped(data: (sessionId, chargerType))
                } else {
                    self.isChargerCharging(data: (sessionId, chargerType))
                }
            }
            self.timeout -= 3
        }
    }
    
    public func checkIfChargerIsCharging(sessionId: String, charger: EVIOCharger, isToStop: Bool = false) {
        if self.chargingTimeout != nil {
            self.chargingTimeout?.invalidate()
            self.chargingTimeout = nil
        }
        guard let chargerType = charger.chargerType else { return }
        switch chargerType {
        case .siemensChargerType:
            self.timeout = .siemensTimoutDuration
        case .sonoffChargerType, .evioBoxChargerType:
            self.timeout = .evioTimoutDuration
        case .zeroZeroSixChargerType:
            self.timeout = .zeroZeroSixTimoutDuration
        case .occpsChargerType:
            self.timeout = .ocpsTimoutDuration
        default:
            self.timeout = .otherChargerTimoutDuration
        }
        self.serverDidAnswerForStartCharging = false
        self.chargingTimeout = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.checkIfTimmerSouldBeStopped(timer:)), userInfo: "\(sessionId);\(charger.chargerType ?? .empty);\(isToStop)", repeats: true)
        if isToStop {
            self.isSessionStopped(data: (sessionId, chargerType))
        } else {
            self.isChargerCharging(data: (sessionId, chargerType))
        }
    }
    
    public func isChargerCharging(data: (id: String, type: String)) {
        // Calls the helper struct to perform the request passing the endpoint along side with the parameter
        _ = EVIOAPIClient.shared.getRequest(urlString: "\(EVIOEndpoints.checkSession)?_id=\(data.id)&chargerType=\(data.type)", params: nil, completion: { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self, message: message)
                    self.chargingTimeout?.invalidate()
                } catch {
                    self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
                    self.chargingTimeout?.invalidate()
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the sessions object from the data object
                    let sessions: [EVIOChargingSession] = try JSONDecoder().decode(EVIOArrayOfChargingSession.self, from: data).chargingSession
                    if let session = sessions.first {
                        if let sessionId = session.sessionId, !sessionId.isEmpty, session.status == .charging {
                            self.delegate?.chargingUtilsDidConfirmChargerIsCharging(self)
                            self.chargingTimeout?.invalidate()
                            self.connectionStationAlreadyStartedCharging = false
                        } else if session.status == .failed {
                            if let statusCode = session.statusCode {
                                let message = EVIOServerMessage(code: statusCode, message: nil, redirect: nil, amount: nil, charger: nil)
                                self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self, message: message)
                            } else {
                                self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
                            }
                            self.chargingTimeout?.invalidate()
                        } else {
                            self.serverDidAnswerForStartCharging = true
                        }
                    } else {
                        self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
                        self.chargingTimeout?.invalidate()
                    }
                } catch {
                    self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
                    self.chargingTimeout?.invalidate()
                }
            } else {
                self.delegate?.chargingUtilsDidFailToConfirmChargerIsCharging(self)
                self.chargingTimeout?.invalidate()
            }
        })
    }
    
    public func isSessionStopped(data: (id: String, type: String)) {
        // Calls the helper struct to perform the request passing the endpoint along side with the parameter
        _ = EVIOAPIClient.shared.getRequest(urlString: "\(EVIOEndpoints.checkSession)?_id=\(data.id)&chargerType=\(data.type)", params: nil, completion: { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self, message: message)
                    self.chargingTimeout?.invalidate()
                } catch {
                    self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
                    self.chargingTimeout?.invalidate()
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the sessions object from the data object
                    let sessions: [EVIOChargingSession] = try JSONDecoder().decode(EVIOArrayOfChargingSession.self, from: data).chargingSession
                    if let session = sessions.first {
                        if session.status == .unavailable || session.status == .failed || session.status == .standby {
                            self.delegate?.chargingUtilsDidConfirmSessionHasStopped(self)
                            self.chargingTimeout?.invalidate()
                            self.connectionStationAlreadyStartedCharging = false
                        } else {
                            self.serverDidAnswerForStartCharging = true
                        }
                    } else {
                        self.connectionStationAlreadyStartedCharging = false
                        self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
                        self.chargingTimeout?.invalidate()
                    }
                } catch {
                    self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
                    self.chargingTimeout?.invalidate()
                }
            } else {
                self.delegate?.chargingUtilsDidFailToConfirmSessionHasStopped(self)
                self.chargingTimeout?.invalidate()
            }
        })
    }
    
    public func startCharging(charger: EVIOCharger, evId: String, idTag: String?, sessionId: String?, autoStop: EVIOAutoStop?, contract: EVIOContract) {
        guard let selectedPlug: EVIOPlug = charger.plugs?.first(where: {$0.selected}) else {
            self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self)
            return
        }
        let tariffId: String? = EVIOEstimatedCostUtils.shared.getTariffIdByPlug(charger: charger, plug: selectedPlug, contract: contract)
        if tariffId == nil {
            let serverMessage = EVIOServerMessage(code: "detailsGroupChargingSessions_missingTariff", message: nil, redirect: nil, amount: nil, charger: nil)
            self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self, message: serverMessage)
            return
        }
        let command: EVIOCommand = EVIOCommand(chargerId: charger.hwId, evId: evId, tariffId: tariffId, action: .start, plugId: selectedPlug.plugId, idTag: idTag, sessionId: sessionId, chargerType: charger.chargerType, hardwareId: nil, address: charger.address, fees: charger.fees, autoStop: autoStop, stopReason: nil)
        // Calls the helper struct to perform the request passing the endpoint along side with the parameter
        _ = EVIOAPIClient.shared.postRequest(urlString: .connectionStation, params: command.toDictionary(), completion: { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self, message: message)
                } catch {
                    self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self)
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the command response object from the data object
                    let commandResponse: EVIOCommandResponse = try JSONDecoder().decode(EVIOCommandResponse.self, from: data)
                    self.delegate?.chargingUtilsDidStartChargingVehicle(self, commandResponse: commandResponse)
                } catch {
                    self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self)
                }
            } else {
                self.delegate?.chargingUtilsDidFailToStartChargingVehicle(self)
            }
        })
    }
    
    public func stopCharging(command: EVIOCommand?) {
        guard let command = command else {
            self.delegate?.chargingUtilsDidFailToStopChargingSession(self)
            return
        }
        // Calls the helper struct to perform the request passing the endpoint along side with the parameter
        _ = EVIOAPIClient.shared.postRequest(urlString: .connectionStation, params: command.toDictionary(), completion: { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    self.delegate?.chargingUtilsDidFailToStopChargingSession(self, message: message)
                } catch {
                    self.delegate?.chargingUtilsDidFailToStopChargingSession(self)
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the command response object from the data object
                    let commandResponse: EVIOCommandResponse = try JSONDecoder().decode(EVIOCommandResponse.self, from: data)
                    self.delegate?.chargingUtilsDidStopChargingSession(self, commandResponse: commandResponse)
                } catch {
                    self.delegate?.chargingUtilsDidFailToStopChargingSession(self)
                }
            } else {
                self.delegate?.chargingUtilsDidFailToStopChargingSession(self)
            }
        })
    }
    
    public func failedToStartCharging(charger: EVIOCharger, evId: String) {
        let selectedPlug: EVIOPlug? = charger.plugs?.first(where: {$0.selected})
        let params: EVIOTransactionFailed = EVIOTransactionFailed(hwId: charger.id, evId: evId, plugId: selectedPlug?.plugId)
        _ = EVIOAPIClient.shared.postRequest(urlString: .transactionFailedEndpoint, params: params.toDictionary(), completion: { response in
            if let res = response.response, res.statusCode == HTTPStatusCode.ok {
                self.delegate?.chargingUtilsDidSendTransactionFailedReport(self)
            } else {
                self.delegate?.chargingUtilsDidFailToSendTransactionFailedReport(self)
            }
        })
    }
    
    public func checkChargerStatus(charger: EVIOCharger) {
        // Calls the helper struct to perform the request passing the endpoint along side with the parameter
        _ = EVIOAPIClient.shared.getRequest(urlString: "\(EVIOEndpoints.chargerDetails)?_id=\(charger.id ?? charger.chargerId ?? .empty)&chargerType=\(charger.chargerType ?? .empty)", params: nil, completion: { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    self.delegate?.chargingUtilsDidFailToGetChargerInfo(self, message: message)
                } catch {
                    self.delegate?.chargingUtilsDidFailToGetChargerInfo(self)
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the sessions object from the data object
                    let updatedCharger: EVIOCharger = try JSONDecoder().decode(EVIOCharger.self, from: data)
                    self.delegate?.chargingUtilsDidGetChargerInfo(self, charger: updatedCharger)
                } catch {
                    self.delegate?.chargingUtilsDidFailToGetChargerInfo(self)
                }
            } else {
                self.delegate?.chargingUtilsDidFailToGetChargerInfo(self)
            }
        })
    }
    
}
