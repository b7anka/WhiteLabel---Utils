//
//  EVIOAlertMessageModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import SwiftUI

/// # A VIEW MODIFIER TO BE USED BY ANY VIEW THAT WANTS TO IMPLEMENT THE ALERT MESSAGE TYPE FONT AND SIZE
public struct EVIOAlertMessageModifier: ViewModifier {
    
    // the color for the text (optional)
    public var color: Color = .primaryTextColor
    public var textAlignment: TextAlignment = .center
    public var lineLimit: Int?
    
    public init(color: Color = .primaryTextColor, textAlignment: TextAlignment = .center, lineLimit: Int? = nil) {
        self.color = color
        self.textAlignment = textAlignment
        self.lineLimit = lineLimit
    }
    
    // the body of the modifier
    public func body(content: Content) -> some View {
        content
            .font(.evioAlertMessage)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
