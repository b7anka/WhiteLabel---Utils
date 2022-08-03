//
//  EVIOInsightsEv.swift
//  WLModels
//
//  Created by Tiago Moreira on 26/05/2022.
//

import Foundation

public struct EVIOInsightsEv: Codable {
    
    public var sessions: Int?
    public var totalEnergy: Double?
    public var totalChargingTime: Double?
    public var totalSpendInclVat: Double?
    public var totalSpendExclVat: Double?
    public var averageChargingTimeSession: Double?
    public var averageEnergyChargedSession: Double?
    public var evId: String?
    public var favouriteCharger: EVIOCharger?
    public var statistics: [EVIOStatistics]?
    public var ev: EVIOEv?
    public var co2Saved: Double?
    
    private enum CodingKeys: String, CodingKey {
        case sessions, totalEnergy, totalChargingTime, totalSpendInclVat, totalSpendExclVat, averageChargingTimeSession, averageEnergyChargedSession, evId, favouriteCharger, statistics, ev, co2Saved = "totalCO2Saved"
    }
    
    public init(from decoder: Decoder) throws {
        let containder = try decoder.container(keyedBy: CodingKeys.self)
        self.sessions = try containder.decodeIfPresent(Int.self, forKey: .sessions)
        self.totalEnergy = try containder.decodeIfPresent(Double.self, forKey: .totalEnergy)
        self.totalChargingTime = try containder.decodeIfPresent(Double.self, forKey: .totalChargingTime)
        self.totalSpendInclVat = try containder.decodeIfPresent(Double.self, forKey: .totalSpendInclVat)
        self.totalSpendExclVat = try containder.decodeIfPresent(Double.self, forKey: .totalSpendExclVat)
        self.averageChargingTimeSession = try containder.decodeIfPresent(Double.self, forKey: .averageChargingTimeSession)
        self.averageEnergyChargedSession = try containder.decodeIfPresent(Double.self, forKey: .averageEnergyChargedSession)
        self.favouriteCharger = try containder.decodeIfPresent(EVIOCharger.self, forKey: .favouriteCharger)
        self.statistics = try containder.decodeIfPresent([EVIOStatistics].self, forKey: .statistics)
        self.ev = try containder.decodeIfPresent(EVIOEv.self, forKey: .ev)
        if let id = try? containder.decodeIfPresent(String.self, forKey: .evId) {
            self.evId = id
        } else if let id = try? containder.decodeIfPresent(Int.self, forKey: .evId) {
            self.evId = "\(id)"
        }
        if let co2Saved = try? containder.decodeIfPresent(Double.self, forKey: .co2Saved) {
            self.co2Saved = co2Saved
        } else if let co2Saved = try? containder.decodeIfPresent(String.self, forKey: .co2Saved) {
            self.co2Saved = Double(co2Saved)
        }
    }
    
}
