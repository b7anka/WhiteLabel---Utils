//
//  EVIOReferencePlaceAddressModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/03/2022.
//

import SwiftUI

public struct EVIOReferencePlaceAddressModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int?
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .primaryTextColor, lineLimit: Int?, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioReferencePlaceAddressFont)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
        
    }
    
}
