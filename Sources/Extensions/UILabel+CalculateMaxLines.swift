//
//  UILabel+CalculateMaxLines.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import UIKit

/// # A SIMPLE EXTENSION THAT ADDS METHODS AND PROPERTIES TO THE SWIFT BUILT-IN UILABEL CLASS
public extension UILabel {
    
    /// # CALCULATES THE MAXIMUM NUNBER OF LINES A LABEL NEEDS TO FIT IT'S TEXT
    /// - Returns: the number of lines needed for the label to fit it's text
    func calculateMaxLines() -> Int {
        // sets the max size to be the size of its width and the height to be infinity
        let maxSize = CGSize(width: frame.size.width, height: CGFloat(Float.infinity))
        // gets the size of the characters
        let charSize = font.lineHeight
        // defines the text property to it's own or an empty string in case there is no text property as casts it into an NSString
        let text = (self.text ?? "") as NSString
        // defines the text size passing the max size rect as a parameter with the font defined for this label or in case it's nil the system's default
        let textSize = text.boundingRect(with: maxSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font ?? UIFont.systemFontSize], context: nil)
        // defines the lines needed round up
        let linesRoundedUp = Int(floor(textSize.height/charSize))
        // returns it
        return linesRoundedUp
    }
    
}
