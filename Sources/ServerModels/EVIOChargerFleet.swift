//
//  EVIOChargerFleet.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOChargerFleet: Codable, Hashable {
    
    public var fleetId: String?
    public var fleetName: String?
    
    public init() {}
    
}

extension EVIOChargerFleet: Equatable {
    
    public static func == (lhs: EVIOChargerFleet, rhs: EVIOChargerFleet) -> Bool {
        return lhs.fleetId == rhs.fleetId
    }
    
}
