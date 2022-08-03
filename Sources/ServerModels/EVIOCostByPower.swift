//
//  EVIOCostByPower.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOCostByPower: Codable {
    
    public var cost: Double?
    public var uom: String?
 
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let cost = try? container.decodeIfPresent(Double.self, forKey: .cost) {
            self.cost = cost
        } else if let cost = try? container.decodeIfPresent(String.self, forKey: .cost) {
            self.cost = Double(cost)
        }
        self.uom = try container.decodeIfPresent(String.self, forKey: .uom)
    }
    
}
