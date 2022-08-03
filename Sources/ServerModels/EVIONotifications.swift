//
//  EVIONotifications.swift
//  WLModels
//
//  Created by Tiago Moreira on 05/04/2022.
//

import Foundation

public final class EVIONotifications: Codable {
    
    public var id: String?
    public var clientType: String?
    public var userId: String?
    public var notifications: [EVIONotificationSetting]?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case clientType
        case notifications
        case userId
    }
    
    public init() {
        self.id = nil
        self.clientType = nil
        self.userId = nil
        self.notifications = nil
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
