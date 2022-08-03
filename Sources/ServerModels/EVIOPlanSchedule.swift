// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let scheduleElement = try? newJSONDecoder().decode(EVIOPlanSchedule.self, from: jsonData)

import Foundation

// MARK: - EVIOPlanSchedule
public struct EVIOPlanSchedule: Codable {
    
    public var id, period: String?
    public var tariffType: EVIOTariffType?
    public var weekDays, season: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case period, tariffType, weekDays, season
    }
    
    public init(id: String?, period: String?, tariffType: EVIOTariffType?, weekDays: String?, season: String?) {
        self.id = id
        self.period = period
        self.tariffType = tariffType
        self.weekDays = weekDays
        self.season = season
    }
    
}
