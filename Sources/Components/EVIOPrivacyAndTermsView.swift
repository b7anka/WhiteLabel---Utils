//
//  EVIOPrivacyAndTermsView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 13/04/2022.
//

import SwiftUI

public struct EVIOPrivacyAndTermsView: View {
    
    @Binding private var selected: Bool
    @Binding private var error: Bool
    private let messageError: String
    private let completion: (() -> Void)
    private let text: NSMutableAttributedString
    private let feedbackGenerator: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    
    public init(selected: Binding<Bool>, error: Binding<Bool>, messageError: String, completion: @escaping () -> Void, text: NSMutableAttributedString) {
        self._selected = selected
        self._error = error
        self.messageError = messageError
        self.completion = completion
        self.text = text
    }
    
    public var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                EVIOAlternateRadioButton(selected: self.$selected)
                Button(action: {
                    self.feedbackGenerator.impactOccurred()
                    self.completion()
                }) {
                    Text(self.text)
                }
                Spacer()
            }
            if self.error {
                HStack {
                    Text(self.messageError)
                        .font(.custom(.appFontSemiBold, size: 13))
                        .foregroundColor(.errorColor)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
        }
    }
    
}
