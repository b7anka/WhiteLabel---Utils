//
//  UIWindow+ShakeNotification.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import UIKit

/// # EXTENSION THAT ADDS FUNCTIONS OR PROPERTIES TO THE SWIFT BUILT-IN UIWINDOW INTERFACE
/// # YOU CAN ALSO ADD HERE FUNCTIONS OR PROPERTIES TO OVERRIDE
public extension UIWindow {
    
    /// # CLASS METHOD THAT DETECTS WHEN THERE IS MOTION ON THE DEVICE
    /// # WE ARE HERE OVERRIDING THE METHOD SO IT FIRES A NOTIFICATION WHEN DEVICE WAS SHAKEN
    /// - Parameters:
    ///   - motion: motion that happened
    ///   - event: the ui event that came wtth the motion (can be nil)
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         // if motion is shaking device
        if motion == .motionShake {
            // post a notification about device being shaken
            NotificationCenter.default.post(name: .deviceDidShakeNotification, object: nil)
        }
     }
    
}
