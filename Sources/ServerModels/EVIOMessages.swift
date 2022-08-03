// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let messages = try? newJSONDecoder().decode(EVIOMessages.self, from: jsonData)

import Foundation

// MARK: - EVIOMessages
public struct EVIOMessages: Codable {
    
    public var warnings: EVIOWarning?
    public var stop: EVIOStop?
    public var info: EVIOInfo?
    
}
