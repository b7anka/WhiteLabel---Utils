//
//  EVIOCheckBoxButton.swift
//  
//
//  Created by Tiago Moreira on 10/11/2022.
//

import SwiftUI

public struct EVIOCheckBoxButton: View {
    
    @Binding public var selected: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(selected: Binding<Bool>) {
        self._selected = selected
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: self.toggleSelected) {
            Rectangle()
                .fill(Color.clear)
                .frame(width: 22, height: 22)
                .background(
                    Rectangle()
                    .stroke(Color.mainButtonColor)
                    .frame(width: 20, height: 20)
                    .overlay(
                        Rectangle()
                            .fill(self.selected ? Color.mainButtonColor : Color.clear)
                            .frame(width: 20, height: 20)
                            .overlay(
                                Image(systemName: .checkmark)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(self.selected ? Color.white : Color.clear)
                                    .frame(width: 18, height: 18)
                            )
                )
            )
        }
    }
    
}

private extension EVIOCheckBoxButton {
    
    private func toggleSelected() {
        self.feedbackGenerator.impactOccurred()
        withAnimation {
            self.selected.toggle()
        }
    }
    
}
