//
//  EVIOMainButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

public struct EVIOMainButton: View {
    
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
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            Text(self.title)
        }
        .buttonStyle(EVIOMainButtonStyle(disabled: self.$disabled))
        .disabled(self.disabled)
    }
    
}
