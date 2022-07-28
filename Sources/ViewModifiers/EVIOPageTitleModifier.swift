//
//  EVIOPageTitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 28/12/2021.
//

import SwiftUI

public struct EVIOPageTitleModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 2
    public var textAlignment: TextAlignment = .leading
    public var paddingTop: CGFloat = 16
    
    public func body(content: Content) -> some View {
        content
            .font(.evioPageTitle)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
            .padding(.top, self.paddingTop)
    }
    
}
