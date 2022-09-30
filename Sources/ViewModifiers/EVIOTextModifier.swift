//
//  SwiftUIView.swift
//  
//
//  Created by Tiago Moreira on 30/09/2022.
//

import SwiftUI

public struct EVIOTextModifier: ViewModifier {
    
    public let color: Color
    public let textAlignment: TextAlignment
    public let lineLimit: Int?
    public let fontType: String
    public let fontSize: CGFloat
    
    public init(color: Color = .primaryTextColor, textAlignment: TextAlignment = .center, lineLimit: Int? = nil, fontType: String = .appFont, fontSize: CGFloat = 15) {
        self.color = color
        self.textAlignment = textAlignment
        self.lineLimit = lineLimit
        self.fontType = fontType
        self.fontSize = fontSize
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.custom(self.fontType, size: self.fontSize))
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
