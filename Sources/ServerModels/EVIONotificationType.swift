//
//  EVIONotificationType.swift
//  WLModels
//
//  Created by Tiago Moreira on 05/04/2022.
//

import Foundation

public enum EVIONotificationType: String, Codable {
    
    case chargingSessionStart = "CHARGING_SESSION_START"
    case chargingSessionStop = "CHARGING_SESSION_STOP"
    case chargingSessionData = "CHARGING_SESSION_DATA"
    case myChargersChargingSessionStart = "MY_CHARGERS_CHARGING_SESSION_START"
    case myChargersChargingSessionStop = "MY_CHARGERS_CHARGING_SESSION_STOP"
    case chargingSessionStopMissingPayment = "CHARGING_SESSION_STOP_MISSING_PAYMENT"
    case chargerAvailableNotifyMe = "CHARGER_AVAILABLE_NOTIFY_ME"
    case chargingSessionEnergyConsumptionEnding = "CHARGING_SESSION_ENERGY_CONSUMPTION_ENDING"
    case accountSuspention = "ACCOUNT_SUSPENSION"
    case accountReactivation = "ACCOUNT_REACTIVATION"
    case lowBalance = "ACCOUNT_LOW_BALANCE"
    case accountValidPartner = "ACCOUNT_VALID_PARTNER"
    case news = "NEWS"
    
    public init?(rawValue: String) {
        switch rawValue.uppercased() {
        case Self.chargingSessionStart.rawValue:
            self = .chargingSessionStart
        case Self.chargingSessionStop.rawValue:
            self = .chargingSessionStop
        case Self.chargingSessionData.rawValue:
            self = .chargingSessionData
        case Self.myChargersChargingSessionStart.rawValue:
            self = .myChargersChargingSessionStart
        case Self.myChargersChargingSessionStop.rawValue:
            self = .myChargersChargingSessionStop
        case Self.chargingSessionStopMissingPayment.rawValue:
            self = .chargingSessionStopMissingPayment
        case Self.chargerAvailableNotifyMe.rawValue:
            self = .chargerAvailableNotifyMe
        case Self.chargingSessionEnergyConsumptionEnding.rawValue:
            self = .chargingSessionEnergyConsumptionEnding
        case Self.accountSuspention.rawValue:
            self = .accountSuspention
        case Self.accountReactivation.rawValue:
            self = .accountReactivation
        case Self.lowBalance.rawValue:
            self = .lowBalance
        case Self.accountValidPartner.rawValue:
            self = .accountValidPartner
        default:
            self = .news
        }
    }
    
}
