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
    case news = "NEWS"
    
}
