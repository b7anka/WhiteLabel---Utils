//
//  EVIOInsightsMyChargers.swift
//  WLModels
//
//  Created by Tiago Moreira on 26/05/2022.
//

import Foundation

public struct EVIOInsightsMyChargers: Codable {
    
    public var totalChargingTime: Double?
    public var totalSessions: Int?
    public var income: Double?
    public var incomeExclVat: Double?
    public var totalEnergy: Double?
    public var chargers: [EVIOInsightsCharger]?
    public var co2Saved: Double?
    
    private enum CodingKeys: String, CodingKey {
        case totalChargingTime, totalSessions, totalEnergy, chargers, co2Saved = "totalCO2Saved", income = "incomeInclVat", incomeExclVat
    }
    
}
