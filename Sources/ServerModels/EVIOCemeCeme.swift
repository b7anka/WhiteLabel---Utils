// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cemeCeme = try? newJSONDecoder().decode(EVIOCemeCeme.self, from: jsonData)

import Foundation

// MARK: - EVIOCemeCeme
public struct EVIOCemeCeme: Codable {
    
    public var fontCardBlack: Bool?
    public var id, ceme: String?
    public var imageCEME, imageCard: String?
    public var order: Int?
    public var createdAt, updatedAt: String?
    public var v: Int?

    enum CodingKeys: String, CodingKey {
        case fontCardBlack
        case id = "_id"
        case ceme = "CEME"
        case imageCEME, imageCard, order, createdAt, updatedAt
        case v = "__v"
    }
    
}
