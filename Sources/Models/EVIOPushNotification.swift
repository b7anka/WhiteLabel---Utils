//
//  EVIOPushNotification.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/05/2022.
//

import Foundation

public struct EVIOPushNotification: Codable {
    
    public var id: String?
    public var notificationType: EVIOPushNotificationType?
    public var totalPower: Double?
    public var estimatedPrice: Double?
    public var batteryCharged: Double?
    public var timeCharged: Double?
    public var instantPower: Double?
    
    public enum CodingKeys: String, CodingKey {
        case id = "_id"
        case notificationType
        case totalPower
        case estimatedPrice
        case batteryCharged
        case timeCharged
        case instantPower
    }
    
    public init(_ userInfo: [AnyHashable: Any]) {
        self.id = userInfo[CodingKeys.id.rawValue] as? String
        if let totalPower = userInfo[CodingKeys.totalPower.rawValue] as? String {
            self.totalPower = Double(totalPower)
        } else if let totalPower = userInfo[CodingKeys.totalPower.rawValue] as? Double {
            self.totalPower = totalPower
        }
        if let estimatedPrice = userInfo[CodingKeys.estimatedPrice.rawValue] as? String {
            self.estimatedPrice = Double(estimatedPrice)
        } else if let estimatedPrice = userInfo[CodingKeys.estimatedPrice.rawValue] as? Double {
            self.estimatedPrice = estimatedPrice
        }
        if let batteryCharged = userInfo[CodingKeys.batteryCharged.rawValue] as? String {
            self.batteryCharged = Double(batteryCharged)
        } else if let batteryCharged = userInfo[CodingKeys.batteryCharged.rawValue] as? Double {
            self.batteryCharged = batteryCharged
        }
        if let timeCharged = userInfo[CodingKeys.timeCharged.rawValue] as? String {
            self.timeCharged = Double(timeCharged)
        } else if let timeCharged = userInfo[CodingKeys.timeCharged.rawValue] as? Double {
            self.timeCharged = timeCharged
        }
        if let instantPower = userInfo[CodingKeys.instantPower.rawValue] as? String {
            self.instantPower = Double(instantPower)
        } else if let instantPower = userInfo[CodingKeys.instantPower.rawValue] as? Double {
            self.instantPower = instantPower
        }
        if let notificationType = userInfo[CodingKeys.notificationType.rawValue] as? String, let type: EVIOPushNotificationType = EVIOPushNotificationType(rawValue: notificationType) {
            self.notificationType = type
        }
    }
    
}
