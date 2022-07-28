//
//  EVIOChargerDistanceModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/01/2022.
//

import SwiftUI

public struct EVIOChargerDistanceModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public func body(content: Content) -> some View {
        content
            .font(.evioChargerDistanceFont)
            .foregroundColor(self.color)
            .multilineTextAlignment(self.textAlignment)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
