//
//  UIApplication+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/06/2022.
//

import UIKit

public extension UIApplication {
    
    var currentKeyWindow: UIWindow? {
        UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?.windows
            .filter { $0.isKeyWindow }
            .first
    }
    
    var rootViewController: UIViewController? {
        self.currentKeyWindow?.rootViewController
    }
    
}
