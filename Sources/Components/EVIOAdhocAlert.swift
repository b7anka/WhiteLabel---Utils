//
//  EVIOAdhocAlert.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 09/02/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public enum EVIOAdHocAlertType {
    case contracts, proceed
}

public struct EVIOAdHocAlert: View {
    
    @Environment(\.presentationMode) private var presentationMode
    public var completion: ((EVIOAdHocAlertType) -> Void)
    private let languageManager: EVIOLanguage
    public let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(completion: @escaping (EVIOAdHocAlertType) -> Void) {
        self.completion = completion
        self.languageManager = EVIOLanguageManager.shared.language
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        ZStack {
            Color.semiTransparent
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    EVIOCloseButtonView(dismissAction: {
                        withoutAnimation {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    })
                        .padding([.leading, .top], 30)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width * 0.92, height: 40)
                ScrollView(.vertical, showsIndicators: false, content: {
                    HStack {
                        Text(self.languageManager.validationMessageAdhocInfoNew)
                            .modifier(EVIOAlertTitleModifier(lineLimit: nil))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.68)
                })
                    .padding(.top)
                HStack {
                    self.getMiddleText()
                        .foregroundColor(.primaryTextColor)
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width * 0.68)
                .padding(.bottom, 5)
                HStack {
                    Button(action: {
                        self.feedbackGenerator.impactOccurred()
                        withoutAnimation {
                            self.presentationMode.wrappedValue.dismiss()
                            self.completion(.contracts)
                        }
                    }, label: {
                        Text("\(self.languageManager.validationMessageAdhocFooterNote.replacingOccurrences(of: self.languageManager.validationMessageAdhocFooterNoteUnderline, with: "")) ")
                            .font(.custom(.appFont, size: 13))
                            .foregroundColor(.primaryTextColor) + Text(self.languageManager.validationMessageAdhocFooterNoteUnderline)
                            .font(.custom(.appFont, size: 13))
                            .foregroundColor(.primaryTextColor)
                            .underline(true, color: .primaryTextColor)
                    })
                }
                .frame(width: UIScreen.main.bounds.width * 0.65)
                .padding(.bottom)
                EVIOMainButton(disabled: .constant(false), title: self.languageManager.validationMessageProceedNowBt, action: {
                    withoutAnimation {
                        self.presentationMode.wrappedValue.dismiss()
                        self.completion(.proceed)
                    }
                })
                .padding(.bottom)
                .padding(.horizontal, 65)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width * 0.92, height: 412)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .fifthShadow, radius: 6, x: 0, y: 0)
        }
        .background(EVIOTransparentBackgroundView())
    }
    
}

private extension EVIOAdHocAlert {
    private func getMiddleText() -> Text {
        let value: Double = Double(EVIOLanguageManager.shared.getTranslationFor(key: "estimatedCost_evioActivationValue")) ?? .zero
        let text = Text(self.languageManager.validationMessageAdhocInfo2iOS)
            .font(.custom(.appFont, size: 14))
        + Text(String(format: "%.\(value.numberOfDecimalPlaces(maxPlaces: 2))f€", locale: Locale.current, value))
            .font(.custom(.appFont, size: 14))
            .bold()
        return text
    }
}
