//
//  EVIOVehicle.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOVehicle: Codable {
    
    public var id: String?
    public var vehicle: EVIOVehicleType?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id", vehicle
    }
    
}
