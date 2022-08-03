//
//  EVIOFiltersConfig.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 23/12/2021.
//

import Foundation

public struct EVIOFiltersConfig: Codable {
    
    public var showRating: Bool
    public var showParkingType: Bool
    public var showVehicleType: Bool
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.showRating = try container.decodeIfPresent(Bool.self, forKey: .showRating) ?? false
        self.showParkingType = try container.decodeIfPresent(Bool.self, forKey: .showParkingType) ?? false
        self.showVehicleType = try container.decodeIfPresent(Bool.self, forKey: .showVehicleType) ?? false
    }
    
    public init() {
        self.showRating = false
        self.showParkingType = false
        self.showVehicleType = false
    }
    
}
