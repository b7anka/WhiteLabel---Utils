//
//  EVIOCharger+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 13/01/2022.
//

import Foundation
import WLModels

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
    
    var isInternal: Bool {
        return self.network == .´internal´
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
    
}
