// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let geometry = try? newJSONDecoder().decode(EVIOGeometry.self, from: jsonData)

import Foundation

// MARK: - EVIOGeometry
public struct EVIOGeometry: Codable {
    
    public var type: String?
    public var coordinates: [Double]?
    
    public enum CodingKeys: String, CodingKey {
        case type, coordinates
    }
    
    public init(_ coordinates: [Double]?) {
        self.type = Self.defaultType
        self.coordinates = coordinates
    }
    
    public func toDictionary() -> [String: Any] {
        do {
            let data: Data = try JSONEncoder().encode(self)
            if let dict: [String: Any] = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
            return [:]
        } catch {
            return [:]
        }
    }
    
}

extension EVIOGeometry {
    
    static let defaultType: String = "Point"
    
}
