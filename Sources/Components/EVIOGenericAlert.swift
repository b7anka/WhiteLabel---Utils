//
//  EVIOGenericAlertSUI.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 29/04/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOGenericAlertSUI: View {
    
    @Environment(\.presentationMode) private var presentationMode
    private let message: String
    private let buttonTitle: String
    private let buttonColor: Color
    private let backgroundColor: Color
    private let boldText: String?
    private let messageToBold: String?
    private let completion: (() -> Void)
    
    public init(message: String, buttonTitle: String = EVIOLanguageManager.shared.language.generalOk, buttonColor: Color = .primaryTextColor, backgroundColor: Color = .semiTransparent, boldText: String? = nil, messageToBold: String? = nil, completion: @escaping () -> Void) {
        self.message = message
        self.buttonTitle = buttonTitle
        self.buttonColor = buttonColor
        self.backgroundColor = backgroundColor
        self.boldText = boldText
        self.messageToBold = messageToBold
        self.completion = completion
    }
    
    public var body: some View {
        ZStack {
            self.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    EVIOCloseButtonView(dismissAction: {
                        withoutAnimation {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }, buttonColor: self.buttonColor)
                        .padding(.leading)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width * 0.92, height: 40)
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack {
                        Group {
                            if let boldText = self.boldText, let messageToBold = self.messageToBold {
                                self.getTextWithBoldPart(boldText: boldText, messageToBold: messageToBold)
                            } else {
                                Text(self.message)
                            }
                        }
                        .font(.custom(.appFont, size: 18))
                        .foregroundColor(.primaryTextColor)
                        .multilineTextAlignment(.center)
                        .padding(.top, 40)
                    }
                    .padding(.horizontal)
                }).padding(.top)
                EVIOMainButton(disabled: .constant(false), title: self.buttonTitle, action: {
                    withoutAnimation {
                        self.completion()
                        self.presentationMode.wrappedValue.dismiss()
                    }
                })
                .padding(.bottom)
                .padding(.horizontal, 55)
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

public extension EVIOGenericAlertSUI {
    
    func getTextWithBoldPart(boldText: String, messageToBold: String) -> Text {
        let messageComponents: [String] = messageToBold.components(separatedBy: boldText)
        guard let firstPart = messageComponents.first, let lastPart = messageComponents.last else {
            return Text(messageToBold) + Text(self.message)
        }
        let firstPartText: Text = Text(firstPart)
        let boldPart: Text = Text(boldText).bold()
        let lastPartText: Text = Text(lastPart)
        return firstPartText + Text(" ") + boldPart + Text(" ") + lastPartText + Text(self.message)
    }
    
}
