// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let plugsFastChargingTable = try? newJSONDecoder().decode(EVIOPlugsFastChargingTable.self, from: jsonData)

import Foundation

// MARK: - EVIOPlugsFastChargingTable
public struct EVIOPlugsFastChargingTable: Codable {
    
    public var id, plugType: String?
    public var fastChargePower, fastChargeTime: Double?
    public var currentType: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case plugType, fastChargePower, fastChargeTime, currentType
    }
    
}
