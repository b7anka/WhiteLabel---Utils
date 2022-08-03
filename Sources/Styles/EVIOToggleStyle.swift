//
//  EVIOToggleStyle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI

public struct EVIOToggleStyle: ToggleStyle {
    
    private let feedbackGenerator: UIImpactFeedbackGenerator
    private let action: (() -> Void)?
    
    public init(action: (() -> Void)? = nil) {
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        Group {
            configuration.label.hidden()
            Spacer()
            Button(action: {
                self.feedbackGenerator.impactOccurred()
                configuration.isOn.toggle()
                if let action = self.action {
                    action()
                }
            }, label: {
                VStack(spacing: .zero) {
                    Circle()
                        .fill(configuration.isOn ? Color.switchThumbSelectedColor : Color.switchThumbUnselectedColor)
                        .frame(width: 21, height: 21)
                        .offset(x: configuration.isOn ? 18 : -18)
                }
                .frame(width: 60, height: 25)
                .background(configuration.isOn ? Color.switchSelectedBackgroundColor : Color.switchUnselectedBackgroundColor)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.transparent)
                        .frame(height: 26)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(configuration.isOn ? Color.switchSelectedBorderColor : Color.switchUnselectedBorderColor, lineWidth: 1)
                                .frame(height: 24)
                        )
                )
            })
        }
    }
    
}
