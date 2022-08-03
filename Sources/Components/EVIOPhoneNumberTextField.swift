//
//  EVIOPhoneNumberTextField.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOPhoneNumberTextField: View {
    
    @Binding private var showPicker: String?
    @Binding private var country: Country
    @Binding private var text: String
    @Binding private var errorMessage: String?
    private let showTopSeparator: Bool
    private let pickerValue: String
    private let showArrow: Bool
    private let disabled: Bool
    @Binding private var showVerifiedIcon: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    private let languageManager: EVIOLanguage
    
    public init(showPicker: Binding<String?>, country: Binding<Country>, text: Binding<String>, errorMessage: Binding<String?>, showTopSeparator: Bool = false, pickerValue: String, showArrow: Bool = true, disabled: Bool = false, showVerifiedIcon: Binding<Bool>) {
        self._showPicker = showPicker
        self._country = country
        self._text = text
        self._errorMessage = errorMessage
        self.showTopSeparator = showTopSeparator
        self.pickerValue = pickerValue
        self.showArrow = showArrow
        self.disabled = disabled
        self._showVerifiedIcon = showVerifiedIcon
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self.languageManager = EVIOLanguageManager.shared.language
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            if self.showTopSeparator {
                EVIOTextFieldPlaceholder(showTopPlaceholder: self.showTopSeparator, placeholder: self.languageManager.generalPhoneNumber)
            }
            RoundedRectangle(cornerRadius: 20)
                .stroke(self.errorMessage != nil ? Color.errorColor : Color.primaryTextColor, lineWidth: 1)
                .frame(width: nil, height: 40)
                .overlay(
                    HStack(spacing: .zero) {
                        Button(action: {
                            self.feedbackGenerator.impactOccurred()
                            self.showPicker = self.pickerValue
                        }) {
                            HStack(spacing: 10) {
                                Image(uiImage: self.country.flag)
                                    .resizable()
                                    .aspectRatio(nil, contentMode: .fit)
                                    .frame(width: 25, height: 19)
                                Text(self.country.phoneCode)
                                    .modifier(EVIOChargerAddressModifier(color: .primaryTextColor, lineLimit: 1))
                                if self.showArrow {
                                    Image(.downArrow)
                                        .resizable()
                                        .aspectRatio(nil, contentMode: .fit)
                                        .frame(width: nil, height: 8)
                                }
                            }
                        }
                        .padding(.leading, 23)
                        .padding(.trailing, 10)
                        Rectangle()
                            .fill(Color.primaryTextColor)
                            .frame(width: 2, height: nil)
                            .padding(.vertical, 5)
                        EVIOTextField(text: self.$text, errorMessage: .constant(nil), showTopPlaceholder: false, keyboardType: .numberPad, placeholder: self.showTopSeparator ? nil : self.languageManager.generalPhoneNumber, padding: .zero, noBorder: true, leadingIcon: nil)
                            .padding(.horizontal, 10)
                        if self.showVerifiedIcon {
                            Image(.checkmarkIcon)
                                .resizable()
                                .aspectRatio(nil, contentMode: .fit)
                                .frame(width: 22, height: 22)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                        }
                    }
                )
                .opacity(self.disabled ? 0.5 : 1.0)
            if let errorMessage = self.errorMessage {
                HStack(spacing: .zero) {
                    Text(errorMessage)
                        .modifier(EVIOClearAllFiltersButtonTitleModifier(disabled: .constant(false), color: .errorColor))
                    Spacer()
                }
                .padding(.top, 3)
            }
        }
        .disabled(self.disabled)
    }
    
}
