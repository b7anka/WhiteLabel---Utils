// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let info = try? newJSONDecoder().decode(EVIOInfo.self, from: jsonData)

import Foundation

// MARK: - EVIOInfo
public struct EVIOInfo: Codable {
    
    public var infoMessage: EVIOMessage?
    public var infoActive: Bool?
    
}
