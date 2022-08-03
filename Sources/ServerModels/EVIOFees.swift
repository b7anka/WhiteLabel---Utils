// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fees = try? newJSONDecoder().decode(EVIOFees.self, from: jsonData)

import Foundation

// MARK: - EVIOFees
public struct EVIOFees: Codable {
    
    public var iva, iec: Double?

    enum CodingKeys: String, CodingKey {
        case iva = "IVA"
        case iec = "IEC"
    }
    
}
