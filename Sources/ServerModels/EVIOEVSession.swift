// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let session = try? newJSONDecoder().decode(EVIOEVSession.self, from: jsonData)

import Foundation

// MARK: - EVIOEVSession
public struct EVIOEVSession: Codable {
    
    public var id, userID: String?
    public var numberOfSessions: Int?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case userID = "userId"
        case numberOfSessions
    }
    
}
