//
//  UIApplication+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/06/2022.
//

import UIKit

public extension UIApplication {
    
    var currentKeyWindow: UIWindow? {
        return UIApplication.shared.windows.first(where: \.isKeyWindow)
    }
    
    var rootViewController: UIViewController? {
        self.currentKeyWindow?.rootViewController
    }
    
    var notchSize: CGFloat {
        self.currentKeyWindow?.safeAreaInsets.top ?? self.rootViewController?.view.window?.windowScene?.statusBarManager?.statusBarFrame.size.height ?? .zero
    }
    
}
