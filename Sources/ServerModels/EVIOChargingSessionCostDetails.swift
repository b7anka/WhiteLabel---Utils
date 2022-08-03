//
//  EVIOChargingSessionCostDetails.swift
//  WLModels
//
//  Created by Tiago Moreira on 28/04/2022.
//

import Foundation

public struct EVIOChargingSessionCostDetails: Codable {
    
    public var activationFee: Double?
    public var parkingDuringCharging: Double?
    public var parkingAmount: Double?
    public var timeCharged: Double?
    public var totalTime: Double?
    public var totalPower: Double?
    public var costDuringCharge: Double?
    public var id: String?
    
    private enum CodingKeys: String, CodingKey {
        case activationFee, parkingDuringCharging, parkingAmount, timeCharged, totalTime, totalPower, costDuringCharge, id = "_id"
    }
    
}
