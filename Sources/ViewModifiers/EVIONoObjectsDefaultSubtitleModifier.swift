//
//  EVIONoObjectsDefaultSubtitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 21/12/2021.
//

import SwiftUI

public struct EVIONoObjectsDefaultSubtitleModifier: ViewModifier {
    
    public var color: Color = .secondaryTextColor
    public var lineLimit: Int?
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .secondaryTextColor, lineLimit: Int? = nil, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioNoObjectsSubTitle)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
