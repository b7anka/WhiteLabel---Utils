//
//  EVIOSearchButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/12/2021.
//

import SwiftUI

public struct EVIOSearchButton: View {
    
    private let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    private let languageManager: EVIOLanguage
    
    public init(action: @escaping () -> Void) {
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self.languageManager = EVIOLanguageManager.shared.language
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            ZStack {
                Rectangle()
                    .fill(Color.transparent)
                    .frame(height: 30)
                HStack(spacing: 0) {
                    Text(self.languageManager.generalSearch)
                        .modifier(EVIONoInternetConnectionModifier(color: .tertiaryTextColor, lineLimit: 1))
                    Spacer()
                }
            }
        }
    }
    
}
