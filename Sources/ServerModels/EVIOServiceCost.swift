//
//  EVIOServiceCost.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOServiceCost: Codable {
    
    public var initialCost: Double?
    public var costByTime: [EVIOCostByTime]?
    public var costByPower: EVIOCostByPower?
    public var elements: [EVIOOCPIPriceElement]?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let initialCost = try? container.decodeIfPresent(Double.self, forKey: .initialCost) {
            self.initialCost = initialCost
        } else if let initialCost = try? container.decodeIfPresent(String.self, forKey: .initialCost) {
            self.initialCost = Double(initialCost)
        }
        self.costByTime = try container.decodeIfPresent([EVIOCostByTime].self, forKey: .costByTime)
        self.costByPower = try container.decodeIfPresent(EVIOCostByPower.self, forKey: .costByPower)
        self.elements = try container.decodeIfPresent([EVIOOCPIPriceElement].self, forKey: .elements)
    }
    
}
