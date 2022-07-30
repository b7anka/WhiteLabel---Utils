//
//  EVIOSearchViewRecentTextModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import SwiftUI

public struct EVIOSearchViewRecentTextModifier: ViewModifier {
    
    public var color: Color = .secondaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .secondaryTextColor, lineLimit: Int? = 1, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(self.color)
            .font(.evioSearchRecentTitle)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
