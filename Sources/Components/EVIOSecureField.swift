//
//  EVIOSecureField.swift
//  evio
//
//  Created by João Moreira on 18/06/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOSecureField: View {
    
    @Binding private var text: String
    @Binding private var error: Bool
    private let title: String
    private let placeholder: String
    private let errorMessage: String
    private let impactFeedbackGenerator: UIImpactFeedbackGenerator
    @State private var showPassword: Bool = false
    
    public init(text: Binding<String>, error: Binding<Bool>, title: String, placeholder: String, errorMessage: String) {
        self._text = text
        self._error = error
        self.title = title
        self.placeholder = placeholder
        self.errorMessage = errorMessage
        self.impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            HStack {
                Text(self.title)
                    .font(.custom(.appFontSemiBold, size: 16))
                    .foregroundColor(.primaryTextColor)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    HStack {
                        if self.text.isEmpty {
                            Text(self.placeholder)
                                .modifier(EVIOChargerAddressModifier(color: .primaryTextColor, lineLimit: 1))
                        }
                        Spacer()
                    }
                    if self.showPassword {
                        TextField("", text: self.$text)
                            .modifier(EVIOFiltersSliderSubtitleLabelsTextModifier(color: .primaryTextColor))
                            .textContentType(.oneTimeCode)
                    } else {
                        SecureField("", text: self.$text)
                            .foregroundColor(.primaryTextColor)
                            .textContentType(.oneTimeCode)
                    }
                }
                Button(action: self.toggleShowPassword) {
                    if self.showPassword {
                        Image(systemName: "eye.slash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 15)
                            .foregroundColor(.primaryTextColor)
                    } else {
                        Image(systemName: "eye")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 15)
                            .foregroundColor(.primaryTextColor)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 10)
            .frame(height: 40)
            .background(Color.primaryBackground)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.clear, lineWidth: 1)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(self.error ? Color.errorColor : Color.primaryTextColor, lineWidth: 1)
                )
            )
            if self.error {
                HStack {
                    Text(self.errorMessage)
                        .font(.custom(.appFontSemiBold, size: 13))
                        .foregroundColor(.errorColor)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
        }.frame(height: self.error ? 85 : 65)
    }
    
}

private extension EVIOSecureField {
    
    private func toggleShowPassword() {
        self.impactFeedbackGenerator.impactOccurred()
        withAnimation {
            self.showPassword.toggle()
        }
    }
    
}
