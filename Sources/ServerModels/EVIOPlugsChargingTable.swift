// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let plugsChargingTable = try? newJSONDecoder().decode(EVIOPlugsChargingTable.self, from: jsonData)

import Foundation

// MARK: - EVIOPlugsChargingTable
public struct EVIOPlugsChargingTable: Codable {
    
    public var id, plugType: String?
    public var chargePhaseVolt, chargePhaseAmp, chargePhase: Double?
    public var chargePower: Double?
    public var chargeTime: Double?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case plugType, chargePhaseVolt, chargePhaseAmp, chargePhase, chargePower, chargeTime
    }
    
}
