//
//  EVIOClearAllFiltersButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 28/12/2021.
//

import SwiftUI

public struct EVIOClearAllFiltersButton: View {
    
    @Binding private var disabled: Bool
    public var title: String
    public var action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(disabled: Binding<Bool>, title: String, action: @escaping () -> Void) {
        self._disabled = disabled
        self.title = title
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.disabled = true
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            Text(self.title)
        }
        .buttonStyle(EVIOClearAllFiltersButtonStyle(disabled: self.$disabled))
        .disabled(self.disabled)
    }
    
}
