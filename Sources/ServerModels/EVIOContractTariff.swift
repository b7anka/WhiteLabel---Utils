// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tariffRoamingClass = try? newJSONDecoder().decode(EVIOContractTariff.self, from: jsonData)

import Foundation

// MARK: - EVIOContractTariff
public struct EVIOContractTariff: Codable {
    
    public var id, power, planID: String?
    public var network: EVIONetworkType?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case power
        case planID = "planId"
        case network
    }
    
}
