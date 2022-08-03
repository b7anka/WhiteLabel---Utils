//
//  EVIONotificationSetting.swift
//  WLModels
//
//  Created by Tiago Moreira on 05/04/2022.
//

import Foundation

public final class EVIONotificationSetting: Codable {
    
    public var id: String?
    public var enabled: Bool?
    public var notificationType: EVIONotificationType?
    public var translationKey: String?
    public var type: EVIOTypeOfNotification?
    public var chargers: [EVIOCharger]?
    public var editable: Bool = true
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case enabled
        case translationKey
        case chargers
        case notificationType
        case type
    }
    
    public init() {
        self.id = nil
        self.enabled = nil
        self.notificationType = nil
        self.translationKey = nil
        self.type = nil
        self.chargers = nil
    }
    
}

extension EVIONotificationSetting: Equatable {
    
    public static func == (lhs: EVIONotificationSetting, rhs: EVIONotificationSetting) -> Bool {
        return lhs.id == rhs.id
    }
    
}
