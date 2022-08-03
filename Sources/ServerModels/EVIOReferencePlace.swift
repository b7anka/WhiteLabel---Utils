// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let referencePlace = try? newJSONDecoder().decode(EVIOReferencePlace.self, from: jsonData)

import Foundation

// MARK: - EVIOReferencePlace
public struct EVIOReferencePlace: Codable {
    
    public var geometry: EVIOGeometry?
    public var id: String?
    public var address: EVIOAddress?
    public var name: String?
    public var type: EVIOReferencePlaceType?

    public init() {}
    
    enum CodingKeys: String, CodingKey {
        
        case geometry
        case id = "_id"
        case address, type, name
        
    }
    
}

extension EVIOReferencePlace: Equatable {
    
    public static func == (lhs: EVIOReferencePlace, rhs: EVIOReferencePlace) -> Bool {
        return lhs.id == rhs.id
    }
    
}
