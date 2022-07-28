//
//  EvioAvailabilityTitleFontModifier.swift
//  EVIO - WhiteLabel
//
//  Created by João Tiago Ferreira Moreira on 30/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EvioAvailabilityTitleFontModifier: ViewModifier {
    
    public var color: Color = .tertiaryBackground
    public var lineLimit: Int?
    public var textAlignment: TextAlignment = .center
    
    public func body(content: Content) -> some View {
        content.font(.evioAvailabilityTitleFont)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
