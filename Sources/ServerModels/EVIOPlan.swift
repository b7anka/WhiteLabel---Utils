// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let plan = try? newJSONDecoder().decode(EVIOPlan.self, from: jsonData)

import Foundation

// MARK: - EVIOPlan
public struct EVIOPlan: Codable {
    
    public var id, country, ceme: String?
    public var tariffType: EVIOTariffType?
    public var planName: String?
    public var cycleType: EVIOCycleType?
    public var tariff: [EVIOPlanTariff]?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var visivel: Bool?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case country
        case ceme = "CEME"
        case tariffType, cycleType, planName, tariff, createdAt, updatedAt
        case v = "__v"
        case visivel
    }
    
    public init(id: String?, country: String?, ceme: String?, tariffType: EVIOTariffType?, planName: String?, cycleType: EVIOCycleType?, tariff: [EVIOPlanTariff] = [], createdAt: String?, updatedAt: String?, v: Int?, visivel: Bool?) {
        self.id = id
        self.country = country
        self.ceme = ceme
        self.tariffType = tariffType
        self.planName = planName
        self.cycleType = cycleType
        self.tariff = tariff
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.v = v
        self.visivel = visivel
    }
    
}
