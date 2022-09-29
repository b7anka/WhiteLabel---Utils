//
//  EVIOBookButton.swift
//  evio
//
//  Created by Tiago Moreira on 20/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOBookButton: View {
    
    @Binding private var disabled: Bool
    private let title: String
    private let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(disabled: Binding<Bool>, title: String, action: @escaping () -> Void) {
        self._disabled = disabled
        self.title = title
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button {
            self.feedbackGenerator.impactOccurred()
            self.action()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.primaryTextColor, lineWidth: 1)
                .overlay(
                    Text(self.title)
                        .modifier(EVIOAlertTitleModifier(color: Color.primaryTextColor, lineLimit: 1, textAlignment: .center))
                        .padding(.horizontal, 10)
                )
                .frame(width: nil, height: 45)
                .shadow(color: Color.fourthShadow, radius: 3, x: 0, y: 0)
        }

    }
    
}
