// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let plug = try? newJSONDecoder().decode(EVIOEvPlug.self, from: jsonData)

import Foundation

// MARK: - EVIOEvPlug
public struct EVIOEvPlug: Codable {
    
    public var id, plugType: String?
    public var plugPower: Double?
    public var plugPowerAux: [EVIOEvPlugPowerAux]?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case plugType, plugPower, plugPowerAux
    }
    
}
