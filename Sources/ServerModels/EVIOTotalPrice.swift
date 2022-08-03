// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let totalPrice = try? newJSONDecoder().decode(EVIOTotalPrice.self, from: jsonData)

import Foundation

// MARK: - EVIOTotalPrice
public struct EVIOTotalPrice: Codable {
    
    public var exclVat, inclVat: Double?
    public var id: String?

    enum CodingKeys: String, CodingKey {
        case exclVat = "excl_vat"
        case inclVat = "incl_vat"
        case id = "_id"
    }
    
}
