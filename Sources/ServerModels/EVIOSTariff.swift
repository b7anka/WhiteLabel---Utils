//
//  EVIOSTariff.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOSTariff: Codable {
    
    public var id: String?
    public var activationFee: Double?
    public var bookingAmount: EVIOAmount?
    public var chargingAmount: EVIOAmount?
    public var parkingAmount: EVIOAmount?
    public var parkingDuringChargingAmount: EVIOAmount?
    public var evioCommission: EVIOCommission?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id", activationFee, bookingAmount, chargingAmount, parkingAmount, parkingDuringChargingAmount, evioCommission
    }
    
}
