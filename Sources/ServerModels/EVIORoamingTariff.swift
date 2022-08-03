// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tariffRoamingInfoTariff = try? newJSONDecoder().decode(EVIORoamingTariff.self, from: jsonData)

import Foundation

// MARK: - EVIORoamingTariff
public struct EVIORoamingTariff: Codable {
    
    public var tariff: [EVIORoamingTariffDetails]?
    public var id: String?
    public var country, region: String?
    public var currency: String?
    public var partyID: String?

    enum CodingKeys: String, CodingKey {
        case tariff
        case id = "_id"
        case country, region, currency
        case partyID = "partyId"
    }
    
}
