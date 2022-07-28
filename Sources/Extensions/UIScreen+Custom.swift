//
//  UIScreen+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 12/12/2021.
//

import Foundation
import UIKit

/// # EXTENSION THAT ADDS FUNCTIONS TO THE SWIFT'S BUILT IN UI SCREEN CLASS
public extension UIScreen {
    
    /// # METHOD THAT RETURNS THE HEIGHT CALCULATED BASED ON PERCENTAGE
    /// - Parameter points: the size to be converted to percentage
    /// - Returns: the correct size based on the percentage for the given size
    func percentageOfHeightIn(points: CGFloat) -> CGFloat {
        // we multiply the given size by one hundred and divide that by the screen's height and then we divide it again by one hundred and thus getting the percentage
        // for the given size
        let percentage: CGFloat = ((points * 100) / Self.main.bounds.height) / 100
        // than we multiply the screen's height with the percentage
        let height: CGFloat = Self.main.bounds.height * percentage
        // we return the new value
        return height
    }
    
}
