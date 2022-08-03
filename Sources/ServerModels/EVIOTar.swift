// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tarClass = try? newJSONDecoder().decode(EVIOTar.self, from: jsonData)

import Foundation

// MARK: - EVIOTar
public struct EVIOTar: Codable {
    
    public var id, country: String?
    public var cycleType: EVIOCycleType?
    public var tariffType: EVIOTariffType?
    public var schedules: [EVIOPlanSchedule]?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var tariff: [EVIOTarTariff]?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case country, tariffType, cycleType, schedules, createdAt, updatedAt
        case v = "__v"
        case tariff
    }
    
}
