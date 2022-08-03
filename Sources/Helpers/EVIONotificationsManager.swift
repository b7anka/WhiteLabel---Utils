//
//  EVIONotificationsManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/05/2022.
//

import Foundation
import UserNotifications

public struct EVIONotificationsManager {
    
    public static let shared: EVIONotificationsManager = EVIONotificationsManager()
    
    public func notificationReceived(_ userInfo: [AnyHashable: Any], completionHandler: ((UNNotificationPresentationOptions) -> Void)? = nil) {
        let presentationOptions: UNNotificationPresentationOptions = [.banner, .badge, .sound, .list]
        let notification: EVIOPushNotification = EVIOPushNotification(userInfo)
        if let notificationType = notification.notificationType {
            switch notificationType {
            case .chargingSessionData:
                NotificationCenter.default.post(name: .sessionDataUpdated, object: notification)
                UNUserNotificationCenter.current().getDeliveredNotifications { (notifications) in
                    var index: Int = -1
                    for (i, n) in notifications.enumerated() {
                        let info = n.request.content.userInfo
                        if let newId = info[EVIOPushNotification.CodingKeys.id] as? String {
                            if newId == notification.id {
                                index = i
                                break
                            }
                        }
                    }
                    if index > -1 {
                        completionHandler?([])
                    } else {
                        completionHandler?(presentationOptions)
                    }
                }
            default:
                completionHandler?(presentationOptions)
            }
        } else {
            completionHandler?(presentationOptions)
        }
    }
    
}
