//
//  EVIOCharger+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 13/01/2022.
//

import Foundation

/// # EXTENSION THAT ADDS PROPERTIES AND FUNCTIONS TO THE EVIO CHARGER STRUCT
public extension EVIOCharger {
    
    // holds all charger types that belong to the EVIO network
    private static let EVIO_NETWORK_CHARGERS: [String?] = ["001", "002", "005", "006", "007", "008"]
    // holds all charger types that belong to the MOBIE network
    private static let MOBIE_NETWORK_CHARGERS: [String?] = ["004"]
    // holds all charger types that belong to the Tesla network
    private static let TESLA_NETWORK_CHARGERS: [String?] = ["009"]
    // holds all charger types that belong to the OCM network
    private static let OCM_NETWORK_CHARGERS: [String?] = ["003"]
    // holds all charger types that belong to the Gireve network
    private static let GIREVE_NETWORK_CHARGERS: [String?] = ["010"]
    // holds all charger types that belong to the go charge network
    private static let GO_CHARGE_NETWORK_CHARGERS: [String?] = ["011"]
    // holds all charger types that belong to the hyundai network
    private static let HYUNDAI_NETWORK_CHARGERS: [String?] = ["012"]
    
    // tells if this charger belongs to the EVIO network
    var isEvio: Bool {
        // if the evio array contains this object's charger type than it means it belongs to the network
        return Self.EVIO_NETWORK_CHARGERS.contains(self.chargerType)
    }
    // tells if this charger belongs to the MOBIE network
    var isMobie: Bool {
        // if the mobie array contains this object's charger type than it means it belongs to the network
        return Self.MOBIE_NETWORK_CHARGERS.contains(self.chargerType)
    }
    // tells if this charger belongs to the Tesla network
    var isTesla: Bool {
        // if the tesla array contains this object's charger type than it means it belongs to the network
        return Self.TESLA_NETWORK_CHARGERS.contains(self.chargerType)
    }
    // tells if this charger belongs to the Open Charge Map network
    var isOpenChargeMap: Bool {
        // if the ocm array contains this object's charger type than it means it belongs to the network
        return Self.OCM_NETWORK_CHARGERS.contains(self.chargerType)
    }
    // tells if this charger belongs to the Gireve network
    var isGireve: Bool {
        // if the gireve array contains this object's charger type than it means it belongs to the network
        return Self.GIREVE_NETWORK_CHARGERS.contains(self.chargerType)
    }
    
    var isGoCharge: Bool {
        return Self.GO_CHARGE_NETWORK_CHARGERS.contains(self.chargerType)
    }
    
    var isHyundai: Bool {
        return Self.HYUNDAI_NETWORK_CHARGERS.contains(self.chargerType)
    }
    
    // returns the name for this charger's network
    var networkName: String {
        // if charger is Gireve
        if self.isGireve {
            // return the translation for Roaming
            return EVIOLanguageManager.shared.language.networkRoaming
            // else if charger is open charge map
        } else if self.isOpenChargeMap {
            // return the translation for others
            return EVIOLanguageManager.shared.language.networkOthers
        }
        // if all else fails returns the network's property raw value or in case it's nil the translation for the unknown network
        return self.network?.rawValue ?? .noValue
    }
    
    func getTariffInUse(plug: EVIOPlug?, contract: EVIOContract?) -> EVIOTariff? {
        guard self.isEvio || self.isGoCharge || self.isHyundai, let plug = plug else { return nil }
        let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
            if self.accessType != .private {
                if self.createUser == user?.id {
                    return nil
                } else {
                    if let contract = contract {
                        if contract.contractType == .user {
                            if plug.tariff?.isEmpty ?? true {
                                return nil
                            } else {
                                var selectedTariff: EVIOTariff!
                                if plug.tariff?.count == 1 {
                                    selectedTariff = plug.tariff?[0]
                                } else {
                                    var indexOfPublicTariff:Int!
                                    for t in plug.tariff ?? [] {
                                        if t.groupName != .publicGroupName {
                                            var groupId: String?
                                            self.listOfGroups?.forEach { (ls) in
                                                ls.listOfUsers?.forEach { (lu) in
                                                    if lu.userId == user?.id {
                                                        groupId = ls.groupId
                                                    }
                                                }
                                            }
                                            if groupId != nil {
                                                plug.tariff?.forEach { (t) in
                                                    if t.groupId == groupId! {
                                                        selectedTariff = t
                                                    }
                                                }
                                            }
                                        } else {
                                            indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                        }
                                    }
                                    if selectedTariff == nil {
                                        if indexOfPublicTariff != nil {
                                            if indexOfPublicTariff > -1 {
                                                selectedTariff = plug.tariff?[indexOfPublicTariff]
                                            }
                                        }
                                    }
                                }
                                if selectedTariff != nil {
                                    return selectedTariff
                                }
                                return nil
                            }
                        } else {
                            var tariffId = plug.tariff?.first(where: {return $0.fleetId == contract.fleetId})?.tariffId
                            if tariffId == nil && self.accessType == .public {
                                tariffId = plug.tariff?.first(where: {return $0.groupName == .publicGroupName})?.tariffId
                                let tariff = plug.tariff?.first(where: { $0.tariffId == tariffId })
                                return tariff
                            }
                        }
                    } else {
                        if plug.tariff?.isEmpty ?? true {
                            return nil
                        } else {
                            var selectedTariff: EVIOTariff!
                            if plug.tariff?.count == 1 {
                                selectedTariff = plug.tariff?[0]
                            } else {
                                var indexOfPublicTariff:Int!
                                for t in plug.tariff ?? [] {
                                    if t.groupName != .publicGroupName {
                                        var groupId: String?
                                        self.listOfGroups?.forEach { (ls) in
                                            ls.listOfUsers?.forEach { (lu) in
                                                if lu.userId == user?.id {
                                                    groupId = ls.groupId
                                                }
                                            }
                                        }
                                        if groupId != nil {
                                            plug.tariff?.forEach { (t) in
                                                if t.groupId == groupId! {
                                                    selectedTariff = t
                                                }
                                            }
                                        }
                                    } else {
                                        indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                    }
                                }
                                if selectedTariff == nil {
                                    if indexOfPublicTariff != nil {
                                        if indexOfPublicTariff > -1 {
                                            selectedTariff = plug.tariff?[indexOfPublicTariff]
                                        }
                                    }
                                }
                            }
                            if selectedTariff != nil {
                                return selectedTariff
                            }
                            return nil
                        }
                    }
                }
            }
            return nil
    }
    
    func isInternal(_ plug: EVIOPlug?, contract: EVIOContract?) -> Bool {
        guard let plug = plug else { return false }
        let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
        if self.isEvio || self.isHyundai || self.isGoCharge {
            if self.accessType != .private {
                if self.createUser == user?.id {
                    return true
                } else {
                    if let contract = contract {
                        if contract.contractType == .user {
                            if plug.tariff?.isEmpty ?? true {
                                return false
                            } else {
                                var selectedTariff: EVIOTariff!
                                if plug.tariff?.count == 1 {
                                    selectedTariff = plug.tariff?[0]
                                } else {
                                    var indexOfPublicTariff:Int!
                                    for t in plug.tariff ?? [] {
                                        if t.groupName != .publicGroupName {
                                            var groupId: String?
                                            self.listOfGroups?.forEach { (ls) in
                                                ls.listOfUsers?.forEach { (lu) in
                                                    if lu.userId == user?.id {
                                                        groupId = ls.groupId
                                                    }
                                                }
                                            }
                                            if groupId != nil {
                                                plug.tariff?.forEach { (t) in
                                                    if t.groupId == groupId! {
                                                        selectedTariff = t
                                                    }
                                                }
                                            }
                                        } else {
                                            indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                        }
                                    }
                                    if selectedTariff == nil {
                                        if indexOfPublicTariff != nil {
                                            if indexOfPublicTariff > -1 {
                                                selectedTariff = plug.tariff?[indexOfPublicTariff]
                                            }
                                        }
                                    }
                                }
                                if selectedTariff != nil {
                                    return true
                                }
                                return false
                            }
                        } else {
                            var tariffId = plug.tariff?.first(where: {return $0.fleetId == contract.fleetId})?.tariffId
                            if tariffId == nil && self.accessType == .public {
                                tariffId = plug.tariff?.first(where: {return $0.groupName == .publicGroupName})?.tariffId
                                return tariffId != nil ? true : false
                            }
                        }
                    } else {
                        if plug.tariff?.isEmpty ?? true {
                            return false
                        } else {
                            var selectedTariff: EVIOTariff!
                            if plug.tariff?.count == 1 {
                                selectedTariff = plug.tariff?[0]
                            } else {
                                var indexOfPublicTariff:Int!
                                for t in plug.tariff ?? [] {
                                    if t.groupName != .publicGroupName {
                                        var groupId: String?
                                        self.listOfGroups?.forEach { (ls) in
                                            ls.listOfUsers?.forEach { (lu) in
                                                if lu.userId == user?.id {
                                                    groupId = ls.groupId
                                                }
                                            }
                                        }
                                        if groupId != nil {
                                            plug.tariff?.forEach { (t) in
                                                if t.groupId == groupId! {
                                                    selectedTariff = t
                                                }
                                            }
                                        }
                                    } else {
                                        indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                    }
                                }
                                if selectedTariff == nil {
                                    if indexOfPublicTariff != nil {
                                        if indexOfPublicTariff > -1 {
                                            selectedTariff = plug.tariff?[indexOfPublicTariff]
                                        }
                                    }
                                }
                            }
                            if selectedTariff != nil {
                                return true
                            }
                            return false
                        }
                    }
                }
            }
            return true
        }
        return false
    }
    
    func getIdTag(plug: EVIOPlug?, contract: EVIOContract) -> String? {
        if self.isEvio {
            if self.isInternal(plug, contract: contract) {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                return internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            }
            let evioToken = contract.networks?.first(where: {return $0.network == .evio})?.tokens?.first(where: {return $0.tokenType == .appUser})
            return evioToken?.idTagDEC ?? evioToken?.idTagHexa ?? .empty
        } else if self.isGoCharge {
            if self.isInternal(plug, contract: contract) {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                return internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            }
            let goChargeToken = contract.networks?.first(where: { $0.network == .goCharge})?.tokens?.first(where: { $0.tokenType == .appUser})
            return goChargeToken?.idTagDEC ?? goChargeToken?.idTagHexa ?? .empty
        } else if self.isHyundai {
            if self.isInternal(plug, contract: contract) {
                let internalToken = contract.networks?.first(where: { $0.network == .´internal´})?.tokens?.first(where: { $0.tokenType == .appUser})
                return internalToken?.idTagDEC ?? internalToken?.idTagHexa ?? .empty
            }
            let hyundaiToken = contract.networks?.first(where: { $0.network == .hyundai})?.tokens?.first(where: { $0.tokenType == .appUser})
            return hyundaiToken?.idTagDEC ?? hyundaiToken?.idTagHexa ?? .empty
        } else if self.isMobie, let mobieToken = contract.networks?.first(where: {return $0.network == .mobie})?.tokens?.first(where: {return $0.tokenType == .appUser}) {
            return mobieToken.idTagDEC ?? mobieToken.idTagHexa ?? .empty
        } else if self.isGireve, let gireveToken = contract.networks?.first(where: {return $0.network == .gireve})?.tokens?.first(where: {return $0.tokenType == .other}) {
            return gireveToken.idTagDEC ?? gireveToken.idTagHexa ?? .empty
        }
        return nil
    }
    
    func sortPlugsByPrice() {
        self.plugs?.sort(by: { $0.price ?? -1 < $1.price ?? -1})
    }
    
}
