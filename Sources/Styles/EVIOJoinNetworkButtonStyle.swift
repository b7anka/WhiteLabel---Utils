//
//  EVIOJoinNetworkButtonStyle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/04/2022.
//

import SwiftUI

public struct EVIOJoinNetworkButtonStyle: ButtonStyle {
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.contractStatusActiveColor)
            .frame(width: nil, height: 34)
            .overlay(
                configuration.label
                    .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryButtonTextSelectedColor, textAligment: .center))
                    .padding(.horizontal, 15)
            )
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .padding(.horizontal, 80)
    }
    
}
