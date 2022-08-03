//
//  EVIOInsightsMyEvs.swift
//  WLModels
//
//  Created by Tiago Moreira on 26/05/2022.
//

import Foundation

public struct EVIOInsightsMyEvs: Codable {
    
    public var totalChargingTime: Double?
    public var totalSessions: UInt?
    public var totalCostInclVat: Double?
    public var totalCostExclVat: Double?
    public var totalEnergy: Double?
    public var evs: [EVIOInsightsEv]?
    public var co2Saved: Double?
    
    private enum CodingKeys: String, CodingKey {
        case totalChargingTime, totalSessions, totalCostInclVat, totalCostExclVat, totalEnergy, evs, co2Saved = "totalCO2Saved"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalChargingTime = try container.decodeIfPresent(Double.self, forKey: .totalChargingTime)
        self.totalSessions = try container.decodeIfPresent(UInt.self, forKey: .totalSessions)
        self.totalCostInclVat = try container.decodeIfPresent(Double.self, forKey: .totalCostInclVat)
        self.totalCostExclVat = try container.decodeIfPresent(Double.self, forKey: .totalCostExclVat)
        self.totalEnergy = try container.decodeIfPresent(Double.self, forKey: .totalEnergy)
        self.evs = try container.decodeIfPresent([EVIOInsightsEv].self, forKey: .evs)
        if let co2Saved = try? container.decodeIfPresent(Double.self, forKey: .co2Saved) {
            self.co2Saved = co2Saved
        } else if let co2Saved = try? container.decodeIfPresent(String.self, forKey: .co2Saved) {
            self.co2Saved = Double(co2Saved)
        }
    }
    
}
