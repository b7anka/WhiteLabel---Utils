//
//  EVIOPushNotificationType.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/05/2022.
//

import Foundation

public enum EVIOPushNotificationType: String, Codable, Identifiable {
    
    case chargingSessionStart = "CHARGING_SESSION_START"
    case chargingSessionStop = "CHARGING_SESSION_STOP"
    case chargingSessionData = "CHARGING_SESSION_DATA"
    case myChargersChargingSessionStart = "MY_CHARGERS_CHARGING_SESSION_START"
    case myChargersChargingSessionStop = "MY_CHARGERS_CHARGING_SESSION_STOP"
    
    public var id: EVIOPushNotificationType {
        return self
    }
    
}
