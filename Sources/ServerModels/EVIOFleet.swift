//
//  EVIOFleet.swift
//  WLModels
//
//  Created by Tiago Moreira on 14/04/2022.
//

import Foundation

public struct EVIOFleet: Codable {
    
    public var id: String?
    public var name: String?
    public var imageContent: String?
    public var listEvs: [EVIOEv]
    public var createUserId: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", name, imageContent, listEvs, createUserId
    }
    
    public init(id: String?, name: String?, imageContent: String?, listEvs: [EVIOEv] = [], createUserId: String?) {
        self.id = id
        self.name = name
        self.imageContent = imageContent
        self.listEvs = listEvs
        self.createUserId = createUserId
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}

extension EVIOFleet: Equatable {
    
    public static func == (lhs: EVIOFleet, rhs: EVIOFleet) -> Bool {
        return lhs.id == rhs.id
    }
    
}

extension EVIOFleet {
    
    public static let defaultFleetId: String = "default"
    public static let defaultFleetName: String = "My Cars"
    
}
