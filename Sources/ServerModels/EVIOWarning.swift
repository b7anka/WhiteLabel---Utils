// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let warnings = try? newJSONDecoder().decode(EVIOWarning.self, from: jsonData)

import Foundation

// MARK: - EVIOWarning
public struct EVIOWarning: Codable {
    
    public var warningsMessage: [EVIOMessage]?
    public var warningActive: Bool?
    
}
