// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fluffyTariff = try? newJSONDecoder().decode(EVIOSessionTariffDetails.self, from: jsonData)

import Foundation

// MARK: - EVIOSessionTariffDetails
public struct EVIOSessionTariffDetails: Codable {
    
    public var bookingAmount, chargingAmount, parkingDuringChargingAmount, parkingAmount: EVIOAmount?
    public var activationFee: Double?
    
}
