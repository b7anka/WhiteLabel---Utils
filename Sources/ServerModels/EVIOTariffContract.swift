// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cemeTariffTariff = try? newJSONDecoder().decode(EVIOTariffContract.self, from: jsonData)

import Foundation

// MARK: - EVIOTariffContract
public struct EVIOTariffContract: Codable {
    
    public var power, planID: String?

    enum CodingKeys: String, CodingKey {
        case power
        case planID = "planId"
    }
    
    public init(power: String?, planID: String?) {
        self.power = power
        self.planID = planID
    }
    
}
