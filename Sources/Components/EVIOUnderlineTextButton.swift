//
//  EVIOUnderlineTextButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public struct EVIOUnderlineTextButton: View {
    
    public let normal: Bool
    public let title: String
    public let action: (() -> Void)
    public let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(normal: Bool = true, title: String, action: @escaping () -> Void) {
        self.normal = normal
        self.title = title
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        HStack {
            Spacer()
            Button(action: {
                self.feedbackGenerator.impactOccurred()
                self.action()
            }) {
                if self.normal {
                    self.text
                        .modifier(EVIOContractInfoModifier(color: .primaryTextColor))
                } else {
                    self.text
                        .modifier(EVIOClearAllFiltersButtonTitleModifier(disabled: .constant(false), color: .primaryTextColor))
                }
            }
        }
    }
    
    private var text: some View {
        Text(self.title)
            .underline(true, color: .primaryTextColor)
    }
    
}
