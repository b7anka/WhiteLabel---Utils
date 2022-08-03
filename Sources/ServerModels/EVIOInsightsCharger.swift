//
//  EVIOInsightsCharger.swift
//  WLModels
//
//  Created by Tiago Moreira on 26/05/2022.
//

import Foundation

public struct EVIOInsightsCharger: Codable {
    
    public var sessions: Int?
    public var totalChargingTime: Double?
    public var co2Saved: Double?
    public var incomeInclVat: Double?
    public var incomeExclVat: Double?
    public var totalEnergy: Double?
    public var averageChargingTimeSession: Double?
    public var averageEnergyChargedSession: Double?
    public var hwId: String?
    public var rating: Double?
    public var statistics: [EVIOStatistics]?
    public var charger: EVIOCharger?
    public var mostUsedPlug: EVIOMostUsedPlug?
    
    private enum CodingKeys: String, CodingKey {
        case sessions, totalChargingTime, co2Saved = "totalCO2Saved", incomeInclVat, incomeExclVat, totalEnergy, averageChargingTimeSession, averageEnergyChargedSession, hwId, rating, statistics, charger, mostUsedPlug
    }
    
}
