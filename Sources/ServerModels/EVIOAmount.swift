// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let minAmount = try? newJSONDecoder().decode(EVIOAmount.self, from: jsonData)

import Foundation

// MARK: - EVIOAmount
public struct EVIOAmount: Codable {
    
    public var uom: String?
    public var value: Double?
    
}
