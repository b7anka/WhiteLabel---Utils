// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let wallet = try? newJSONDecoder().decode(EVIOWallet.self, from: jsonData)

import Foundation

// MARK: - EVIOWallet
public struct EVIOWallet: Codable {
    
    public var amount: EVIOCurrency?
    public var creditAmount: Int?
    public var autoRecharger: Bool?
    public var id, userID, createdAt, updatedAt: String?
    public var v: Int?

    enum CodingKeys: String, CodingKey {
        case amount, creditAmount, autoRecharger
        case id = "_id"
        case userID = "userId"
        case createdAt, updatedAt
        case v = "__v"
    }
    
}
