// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let purpleTariff = try? newJSONDecoder().decode(EVIORoamingTariffDetails.self, from: jsonData)

import Foundation

// MARK: - EVIORoamingTariffDetails
public struct EVIORoamingTariffDetails: Codable {
    
    public var id: String?
    public var type: EVIORoamingTariffDetailsType?
    public var uom: String?
    public var price: Double?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case type, uom, price
    }
    
}
