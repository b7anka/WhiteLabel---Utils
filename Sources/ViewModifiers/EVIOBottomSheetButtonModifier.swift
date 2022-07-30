//
//  EVIOBottomSheetButtonModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/02/2022.
//

import SwiftUI

public struct EVIOBottomSheetButtonModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    
    public init(color: Color = .primaryTextColor) {
        self.color = color
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioBottomSheetViewButtonFont)
            .foregroundColor(self.color)
            .lineLimit(1)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
