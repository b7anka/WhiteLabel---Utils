// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let eVIOTranslationElement = try? newJSONDecoder().decode(EVIOTranslation.self, from: jsonData)

import Foundation

// MARK: - EVIOTranslation
public struct EVIOTranslation: Codable {
    
    public var id, languageCode, languageName: String?
    public var translations: [EVIOTranslationElement]?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var asDictionary: [String: String] {
        var dict: [String: String] = [:]
        if let translations = translations {
            for t in translations {
                if let key = t.key, let value = t.value {
                    dict[key] = value
                }
            }
        }
        return dict
    }

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case languageCode, languageName, translations, createdAt, updatedAt
        case v = "__v"
    }
    
}
