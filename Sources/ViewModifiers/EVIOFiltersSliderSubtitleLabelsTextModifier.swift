//
//  EVIOFiltersSliderSubtitleLabelsTextModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI

public struct EVIOFiltersSliderSubtitleLabelsTextModifier: ViewModifier {
    
    public var color: Color = .tertiaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .leading
    
    public func body(content: Content) -> some View {
        content
            .font(.evioFiltersSliderSubtitleLabelsText)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
