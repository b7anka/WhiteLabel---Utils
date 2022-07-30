//
//  EVIOAlertTitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import SwiftUI

/// # VIEW MODIFIER TO BE USED BY ANY VIEW THAT WANTS THE FONT AND THE SIZE OF THE ALERT TITLE
public struct EVIOAlertTitleModifier: ViewModifier {
    
    // the color of the text (optional)
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .primaryTextColor, lineLimit: Int? = 1, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    // the body of the modifier
    public func body(content: Content) -> some View {
        content
            .font(.evioAlertTitle)
            .fixedSize(horizontal: false, vertical: true)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
            .foregroundColor(self.color)
    }
    
}
