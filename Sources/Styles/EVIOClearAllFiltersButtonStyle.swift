//
//  EVIOClearAllFiltersButtonStyle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/01/2022.
//

import Foundation
import SwiftUI

public struct EVIOClearAllFiltersButtonStyle: ButtonStyle {
    
    @Binding private var disabled: Bool
    
    public init(disabled: Binding<Bool>) {
        self._disabled = disabled
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(self.disabled ? Color.cleanFiltersButtonDisabledColor : Color.cleanFiltersButtonEnabledColor)
            .frame(width: 105, height: 37)
            .shadow(color: self.disabled ? .transparent : .tertiaryShadowColor, radius: 4, x: .zero, y: 2)
            .overlay(
                configuration.label
                    .modifier(EVIOClearAllFiltersButtonTitleModifier(disabled: self.$disabled))
            )
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
    
}
