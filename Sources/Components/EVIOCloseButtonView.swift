//
//  CloseButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/08/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOCloseButtonView: View {
    
    public let containsTitle: Bool
    public let dismissAction: (() -> Void)
    public let buttonColor: Color
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(containsTitle: Bool = false, dismissAction: @escaping () -> Void, buttonColor: Color = .primaryTextColor) {
        self.containsTitle = containsTitle
        self.dismissAction = dismissAction
        self.buttonColor = buttonColor
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                self.feedbackGenerator.impactOccurred()
                self.dismissAction()
            }) {
                Image(.closeIcon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 18, height: 18)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(self.buttonColor)
            }
            if !self.containsTitle {
                Spacer()
            }
        }
    }
}
