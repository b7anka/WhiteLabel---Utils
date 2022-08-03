//
//  EVIOFavouriteData.swift
//  WLModels
//
//  Created by Tiago Moreira on 10/01/2022.
//

import Foundation

public struct EVIOFavouriteData: Codable {
    
    public let baseId: String
    public let hwId: String
    public let chargerType: String
    
    public init(baseId: String, hwId: String, chargerType: String) {
        self.baseId = baseId
        self.hwId = hwId
        self.chargerType = chargerType
    }
    
    public func toDictionary() -> [String: String] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: String] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: String] else { return [:] }
        return dict
    }
    
}
