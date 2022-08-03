// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let paymentMethodInfo = try? newJSONDecoder().decode(EVIOPaymentMethodInfo.self, from: jsonData)

import Foundation

// MARK: - EVIOPaymentMethodInfo
public struct EVIOPaymentMethodInfo: Codable {
    
    public var brand, expiryMonth, expiryYear, holderName: String?
    public var id, lastFour, name: String?
    public var supportedShopperInteractions: [String]?
    public var type: String?
    public var defaultPaymentMethod: Bool?
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
    public func toRemove() -> [String: Any] {
        return [
            "recurringDetailReference": self.id as Any
        ]
    }
    
}
