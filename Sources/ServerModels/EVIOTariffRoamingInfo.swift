// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tariffRoamingInfo = try? newJSONDecoder().decode(EVIOTariffRoamingInfo.self, from: jsonData)

import Foundation

// MARK: - EVIOTariffRoamingInfo
public struct EVIOTariffRoamingInfo: Codable {
    
    public var id, roamingType: String?
    public var tariffs: [EVIORoamingTariff]?
    public var updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case roamingType, tariffs, updatedAt
    }
    
}
