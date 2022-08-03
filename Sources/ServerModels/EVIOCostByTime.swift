//
//  EVIOCostByTime.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOCostByTime: Codable {
    
    public var minTime: Double?
    public var maxTime: Double?
    public var cost: Double?
    public var uom: String?
    public var description: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let minTime = try? container.decodeIfPresent(Double.self, forKey: .minTime) {
            self.minTime = minTime
        } else if let minTime = try? container.decodeIfPresent(String.self, forKey: .minTime) {
            self.minTime = Double(minTime)
        }
        if let value = try? container.decodeIfPresent(Double.self, forKey: .maxTime) {
            self.maxTime = value
        } else if let value = try? container.decodeIfPresent(String.self, forKey: .maxTime) {
            self.maxTime = Double(value)
        }
        if let value = try? container.decodeIfPresent(Double.self, forKey: .cost) {
            self.cost = value
        } else if let value = try? container.decodeIfPresent(String.self, forKey: .cost) {
            self.cost = Double(value)
        }
        self.uom = try container.decodeIfPresent(String.self, forKey: .uom)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
    }
    
}
