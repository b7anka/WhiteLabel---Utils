//
//  EVIONoRoamingContractAlert.swift
//  evio
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIONoRoamingContractAlert: View {
    
    @Environment(\.presentationMode) private var presentationMode
    private let buttonTitle: String
    private let title: String
    private let footer: String
    private let action: (() -> Void)
    
    public init(buttonTitle: String, title: String, footer: String, action: @escaping () -> Void) {
        self.buttonTitle = buttonTitle
        self.title = title
        self.footer = footer
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            Color.alternativeSemiTransparent
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.primaryBackground)
                .shadow(color: .fifthShadow, radius: 5, x: 0, y: 0)
                .frame(height: 300)
                .padding(.horizontal, 20)
                .overlay(
                    VStack(spacing: 0) {
                        EVIOCloseButtonView(containsTitle: false, dismissAction: {
                            withoutAnimation {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        }, buttonColor: .primaryTextColor)
                        .padding(.leading, 45)
                        .padding(.top, 25)
                        Spacer()
                        Text(self.title)
                            .modifier(EVIOAlertTitleModifier(color: .primaryTextColor, lineLimit: 3, textAlignment: .center))
                            .padding(.horizontal, 40)
                        Spacer()
                        Text(self.footer)
                            .modifier(EVIOChargerDistanceModifier(color: .primaryTextColor))
                            .padding(.horizontal, 40)
                        Spacer()
                        EVIOMainButton(disabled: .constant(false), title: self.buttonTitle) {
                            withoutAnimation {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                            self.action()
                        }
                        .padding(.horizontal, 40)
                        Spacer()
                    }
                )
        }
        .background(EVIOTransparentBackgroundView())
    }
}
