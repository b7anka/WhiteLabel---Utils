// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let myActiveSessionTariff = try? newJSONDecoder().decode(EVIOSessionTariff.self, from: jsonData)

import Foundation

// MARK: - EVIOSessionTariff
public struct EVIOSessionTariff: Codable {
    
    public var tariff: EVIOSessionTariffDetails?
    public var id, name, createUser: String?
    public var tariffType: EVIOTariffType?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var modifyUser, billingType, tariffID: String?

    enum CodingKeys: String, CodingKey {
        case tariff
        case id = "_id"
        case name, tariffType, createUser, createdAt, updatedAt
        case v = "__v"
        case modifyUser, billingType
        case tariffID = "tariffId"
    }
    
}
