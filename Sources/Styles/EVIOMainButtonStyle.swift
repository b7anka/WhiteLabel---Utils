//
//  EVIOMainButtonStyle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

public struct EVIOMainButtonStyle: ButtonStyle {
    
    @Binding private var disabled: Bool
    
    public init(disabled: Binding<Bool>) {
        self._disabled = disabled
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(self.disabled ? Color.fourthBackground : Color.mainButtonColor)
            .frame(width: nil, height: 45)
            .overlay(
                configuration.label
                    .font(.evioAlertTitle)
                    .foregroundColor(self.disabled ? .tertiaryTextColor : .secondaryBackground)
                    .lineLimit(1)
                    .fixedSize(horizontal: false, vertical: true)
                    .minimumScaleFactor(0.5)
                    .padding(.horizontal, 10)
            )
            .shadow(color: self.disabled ? .transparent : .secondaryShadowColor, radius: 4, x: 0, y: 2)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
    
}
