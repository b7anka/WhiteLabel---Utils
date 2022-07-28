//
//  EVIOSearchViewHeaderButtonAndTextDeselectedModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import SwiftUI

public struct EVIOSearchViewHeaderButtonAndTextDeselectedModifier: ViewModifier {
   
    public var color: Color = .tertiaryTextColor
    public var textAlignment: TextAlignment = .center
    public var lineLimit: Int? = 2
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(self.color)
            .font(.evioSearchButtonsAndText)
            .multilineTextAlignment(self.textAlignment)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
