//
//  EVIOHistory.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/05/2022.
//

import Foundation

public struct EVIOHistory: Codable {
    
    public var totalPower, timeCharged, co2Saved: Double?
    public var id, evID, chargerType, startDate: String?
    public var purchaseTariff: EVIOPurchaseTariff?
    public var costDetails: EVIOChargingSessionCostDetails?
    public var totalPrice: EVIOTotalPrice?
    public var stopDate: String?
    public var ev: EVIOEv?

    enum CodingKeys: String, CodingKey {
        case totalPower, timeCharged
        case co2Saved = "CO2Saved"
        case id = "_id"
        case evID = "evId"
        case chargerType, startDate, purchaseTariff, costDetails, totalPrice, stopDate, ev
    }
    
}
