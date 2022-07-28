//
//  UIView+TakeScreenshot.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/12/2021.
//

import UIKit

/// # EXTENSION THAT ADDS FUNCTIONS TO THE SWIFT BUILT-IN UIVIEW CLASS
public extension UIView {
    
    /// # METHOD THAT TAKES A SCREENSHOT OF A VIEW
    /// - Returns: returns the image with the screenshot or an empty one if something failed
    func takeScreenshot() -> UIImage {

        // Begin context
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)

        // Draw view in that context
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)

        // And finally, get image
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        // if image exists
        if image != nil {
            // returns image
            return image!
        }
        // otherwise returns an empty image
        return UIImage()
    }
    
}
