//
//  EvioFiltersSliderLabelsTextModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI

public struct EvioFiltersSliderLabelsTextModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public func body(content: Content) -> some View {
        content
            .font(.evioFiltersSliderLabelsText)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(self.textAlignment)
    }
    
}
