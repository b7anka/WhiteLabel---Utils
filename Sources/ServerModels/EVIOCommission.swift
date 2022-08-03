// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let evioCommission = try? newJSONDecoder().decode(EVIOCommission.self, from: jsonData)

import Foundation

// MARK: - EVIOCommission
public struct EVIOCommission: Codable {
    
    public var minAmount, transaction: EVIOAmount?
    public var id: String?

    enum CodingKeys: String, CodingKey {
        case minAmount, transaction
        case id = "_id"
    }
    
}
