// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let favorite = try? newJSONDecoder().decode(WLFavorite.self, from: jsonData)

import Foundation

// MARK: - WLFavorite
public struct EVIOFavorite: Codable, EVIOChargerProtocol {
    
    public var id, baseId, chargerType, hwId: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case baseId
        case chargerType
        case hwId
    }
    
}
