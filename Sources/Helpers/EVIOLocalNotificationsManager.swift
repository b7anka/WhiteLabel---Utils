//
//  EVIOLocalNotificationsManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation
import NotificationBannerSwift
import SwiftUI
import UIKit

/// # SINGLETON CLASS RESPONSIBLE FOR PRESENTING
/// # BANNER NOTIFICATIONS TO THE USER
public final class EVIOLocalNotificationsManager {
    
    // MARK: - STATIC PROPERTIES
    public static let shared: EVIOLocalNotificationsManager = EVIOLocalNotificationsManager()
    
    // MARK: - PRIVATE PROPERTIES
    private var isShowingBanner: Bool = false
    
    public init() { }
    
    // MARK: - PUBLIC METHODS
    
    /// # This method shows a banner notification to the user if there isn't any banner showing already
    /// - Parameters:
    ///   - msg: the message to be displayed to the user
    ///   - title: the title of the banner (optional)
    ///   - style: the style of banner to show (check ``BannerStyle`` enum for more information)
    public func showNotificationWithMessageAndTitle(_ msg: String, title: String? = nil, style: BannerStyle = .danger) {
        // Checks whether there is already a banner showing and if true returns from the method without executing anything else
        guard !self.isShowingBanner else {return}
        // calls this method to toggle the isShowingBanner property
        self.toggleIsShowingBanner()
        // creates the banner passing the required parameters
        let banner: NotificationBanner = NotificationBanner(title: title, subtitle: msg, leftView: nil, rightView: nil, style: style, colors: .none)
        // sets the banner delegate to be this calss
        banner.delegate = self
        /* sets the banner background color (overwrites the style parameter)
            this is done on purpose because right now all alerts have the same color but in the future
            this might change
        */
        banner.backgroundColor = Color.otherComponentsColor.uiColor
        // presents the banner to the user
        banner.show()
    }
    
    // MARK: - PUBLIC METHODS
    
    /// # This method toggles the `isShowingBanner` property
    private func toggleIsShowingBanner() {
        self.isShowingBanner = !self.isShowingBanner
    }
    
}

// MARK: - NOTIFICATION BANNER DELEGATE METHODS
extension EVIOLocalNotificationsManager: NotificationBannerDelegate {
    
    public func notificationBannerWillAppear(_ banner: BaseNotificationBanner) {
        // not needed
    }
    
    public func notificationBannerDidAppear(_ banner: BaseNotificationBanner) {
        // not needed
    }
    
    public func notificationBannerWillDisappear(_ banner: BaseNotificationBanner) {
        // not needed
    }
    
    public func notificationBannerDidDisappear(_ banner: BaseNotificationBanner) {
        // calls this function to toggle the isShowingBanner property back to it's default once the previous banner disappears
        self.toggleIsShowingBanner()
    }
    
}
