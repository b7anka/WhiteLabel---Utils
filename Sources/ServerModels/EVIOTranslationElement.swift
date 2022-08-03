// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let translation = try? newJSONDecoder().decode(EVIOTranslationElement.self, from: jsonData)

import Foundation

// MARK: - EVIOTranslationElement
public struct EVIOTranslationElement: Codable {
    
    public var id, key, value: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case key, value
    }
    
}
