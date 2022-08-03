//
//  EVIOInfrastructure.swift
//  WLModels
//
//  Created by Tiago Moreira on 06/05/2022.
//

import Foundation

public struct EVIOInfrastructure: Codable {
    
    public var id: String?
    public var name: String?
    public var imageContent: String?
    public var listChargers: [EVIOCharger]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", name, imageContent, listChargers
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}

extension EVIOInfrastructure: Equatable {
    
    public static func == (lhs: EVIOInfrastructure, rhs: EVIOInfrastructure) -> Bool {
        return lhs.id == rhs.id
    }
    
}
