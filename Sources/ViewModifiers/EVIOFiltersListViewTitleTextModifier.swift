//
//  EVIOFiltersListViewTitleTextModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

public struct EVIOFiltersListViewTitleTextModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .primaryTextColor, lineLimit: Int? = 1, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioFiltersListViewTitleText)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
