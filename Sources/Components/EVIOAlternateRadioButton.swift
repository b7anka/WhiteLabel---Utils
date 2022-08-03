//
//  EVIOAlternateRadioButton.swift
//  evio
//
//  Created by João Moreira on 18/06/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOAlternateRadioButton: View {
    
    @Binding public var selected: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(selected: Binding<Bool>) {
        self._selected = selected
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: self.toggleSelected) {
            Circle()
                .fill(Color.clear)
                .frame(width: 26, height: 26)
                .background(
                Circle()
                    .stroke(Color.primaryTextColor, lineWidth: 1)
                    .frame(width: 24, height: 24)
                    .overlay(
                    Circle()
                        .fill(self.selected ? Color.primaryTextColor : Color.clear)
                        .frame(width: 18, height: 18)
                )
            )
        }
    }
    
}

private extension EVIOAlternateRadioButton {
    
    private func toggleSelected() {
        self.feedbackGenerator.impactOccurred()
        withAnimation {
            self.selected.toggle()
        }
    }
    
}
