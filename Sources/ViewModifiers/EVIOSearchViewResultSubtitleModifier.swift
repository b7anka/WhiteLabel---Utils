//
//  EVIOSearchViewResultSubtitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import SwiftUI

public struct EVIOSearchViewResultSubtitleModifier: ViewModifier {
    
    public var color: Color = .tertiaryTextColor
    public var lineLimit: Int? = 2
    public var textAlignment: TextAlignment = .leading
    
    public init(color: Color = .tertiaryTextColor, lineLimit: Int? = 2, textAlignment: TextAlignment = .leading) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioSearchResultSubtitle)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
