// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let amount = try? newJSONDecoder().decode(EVIOCurrency.self, from: jsonData)

import Foundation

// MARK: - EVIOCurrency
public struct EVIOCurrency: Codable, Identifiable {
    
    public var id: UUID
    public var value: Double?
    public var currency: String?
    
    public enum CodingKeys: String, CodingKey {
        case value
        case currency
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.value = try container.decodeIfPresent(Double.self, forKey: .value)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
    }
    
    public init(value: Double?, currency: String? = EVIOCurrency.defaultCurrency) {
        self.id = UUID()
        self.value = value
        self.currency = currency
    }
    
}

extension EVIOCurrency {
    
    static public let defaultCurrency: String = "EUR"
    
}
