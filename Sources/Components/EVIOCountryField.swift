//
//  EVIOCountryField.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/03/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOCountryField: View {
    
    @Binding private var country: Country
    public let placeholder: String
    public let disabled: Bool
    public let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(country: Binding<Country>, placeholder: String, disabled: Bool = false, action: @escaping () -> Void) {
        self._country = country
        self.placeholder = placeholder
        self.disabled = disabled
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            EVIOTextFieldPlaceholder(showTopPlaceholder: true, placeholder: self.placeholder)
            Button(action: {
                self.feedbackGenerator.impactOccurred()
                self.action()
            }) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.primaryTextColor)
                    .frame(width: nil, height: 40)
                    .overlay(
                        HStack(spacing: 10) {
                            Image(uiImage: self.country.flag)
                                .resizable()
                                .aspectRatio(nil, contentMode: .fit)
                                .frame(width: 25, height: 19)
                           Text(self.country.localizedName() ?? self.country.name)
                                .modifier(EVIOSearchViewHeaderButtonAndTextModifier(lineLimit: 1))
                            Spacer()
                        }
                            .padding(.horizontal, 23)
                    )
            }
            .opacity(self.disabled ? 0.5 : 1.0)
        }
        .disabled(self.disabled)
    }
    
}
