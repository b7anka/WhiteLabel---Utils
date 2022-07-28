//
//  EVIOMainFontModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/01/2022.
//

import SwiftUI

public struct EVIOMainFontModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 2
    public var textAlignment: TextAlignment = .leading
    
    public func body(content: Content) -> some View {
        content
            .font(.evioMainFont)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
