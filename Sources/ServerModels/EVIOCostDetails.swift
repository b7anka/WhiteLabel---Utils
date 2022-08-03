// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let costDetails = try? newJSONDecoder().decode(EVIOCostDetails.self, from: jsonData)

import Foundation

// MARK: - EVIOCostDetails
public struct EVIOCostDetails: Codable {
    
    public var activationFee, parkingDuringCharging: Double?
    public var parkingAmount, timeCharged, totalTime, totalPower: Double?
    public var costDuringCharge: Double?
    public var id: String?

    enum CodingKeys: String, CodingKey {
        case activationFee, parkingDuringCharging, parkingAmount, timeCharged, totalTime, totalPower, costDuringCharge
        case id = "_id"
    }
    
}
