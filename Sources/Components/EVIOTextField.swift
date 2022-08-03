//
//  EVIOTextField.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import MbSwiftUIFirstResponder

public struct EVIOTextField: View {
    
    @Binding private var text: String
    @Binding private var errorMessage: String?
    private let showTopPlaceholder: Bool
    private let keyboardType: UIKeyboardType
    private let autoCapitalization: UITextAutocapitalizationType
    private let disableAutoCorrection: Bool
    private let placeholder: String?
    private let padding: CGFloat
    private let noBorder: Bool
    private let leadingIcon: String?
    private let disabled: Bool
    private let textAligment: TextAlignment
    private let formatter: Formatter?
    private let onEditingChanged: ((Bool) -> Void)?
    private let onCommit: (() -> Void)?
    
    public init(text: Binding<String>, errorMessage: Binding<String?>, showTopPlaceholder: Bool = false, keyboardType: UIKeyboardType = .default, autoCapitalization: UITextAutocapitalizationType = .words, disableAutoCorrection: Bool = false, placeholder: String? = nil, padding: CGFloat = 23, noBorder: Bool = false, leadingIcon: String? = nil, disabled: Bool = false, textAligment: TextAlignment = .leading, formatter: Formatter? = nil, onEditingChanged: ((Bool) -> Void)? = nil, onCommit: (() -> Void)? = nil) {
        self._text = text
        self._errorMessage = errorMessage
        self.showTopPlaceholder = showTopPlaceholder
        self.keyboardType = keyboardType
        self.autoCapitalization = autoCapitalization
        self.disableAutoCorrection = disableAutoCorrection
        self.placeholder = placeholder
        self.padding = padding
        self.noBorder = noBorder
        self.leadingIcon = leadingIcon
        self.disabled = disabled
        self.textAligment = textAligment
        self.formatter = formatter
        self.onEditingChanged = onEditingChanged
        self.onCommit = onCommit
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            if self.showTopPlaceholder, let placeHolder = self.placeholder {
                EVIOTextFieldPlaceholder(showTopPlaceholder: self.showTopPlaceholder, placeholder: placeHolder)
            }
            ZStack {
                if self.text.isEmpty && !showTopPlaceholder, let placeHolder = self.placeholder {
                    EVIOTextFieldPlaceholder(showTopPlaceholder: self.showTopPlaceholder, placeholder: placeHolder)
                        .padding(.horizontal, self.padding)
                }
                if self.noBorder {
                    self.mainTextView
                } else {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(self.errorMessage != nil ? Color.errorColor : Color.primaryTextColor, lineWidth: 1)
                        .frame(width: nil, height: 40)
                        .overlay(
                            self.mainTextView
                        )
                }
            }
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
    
    public var mainTextView: some View {
        Group {
            if let leadingIcon = self.leadingIcon {
                HStack(spacing: .zero) {
                    EVIOTextFieldIcon(icon: leadingIcon)
                        .foregroundColor(.primaryTextColor)
                        .padding(.leading, 10)
                    self.textView
                        .padding(.horizontal, 10)
                    Spacer()
                }
            } else {
                self.textView
                    .padding(.horizontal, self.padding)
            }
        }
    }
    
    public var textView: some View {
        if let formatter = self.formatter {
            return TextField(String.empty, value: self.$text, formatter: formatter, onEditingChanged: { value in
                if let onEditingChanged = self.onEditingChanged {
                    onEditingChanged(value)
                }
            }, onCommit: {
                if let onCommit = self.onCommit {
                    onCommit()
                }
            })
            .disableAutocorrection(self.disableAutoCorrection)
            .autocapitalization(self.autoCapitalization)
            .keyboardType(self.keyboardType)
            .modifier(EVIOFiltersSliderSubtitleLabelsTextModifier(color: .primaryTextColor, textAlignment: self.textAligment))
        } else {
            return TextField(String.empty, text: self.$text, onEditingChanged: { value in
                if let onEditingChanged = self.onEditingChanged {
                    onEditingChanged(value)
                }
            }, onCommit: {
                if let onCommit = self.onCommit {
                    onCommit()
                }
            })
            .disableAutocorrection(self.disableAutoCorrection)
            .autocapitalization(self.autoCapitalization)
            .keyboardType(self.keyboardType)
            .modifier(EVIOFiltersSliderSubtitleLabelsTextModifier(color: .primaryTextColor, textAlignment: self.textAligment))
        }
            
    }
    
}

public struct EVIOTextFieldIcon: View {
    
    private let icon: String
    
    public init(icon: String) {
        self.icon = icon
    }
    
    public var body: some View {
        if self.icon.contains(String.noValue) {
            Image(systemName: self.icon.replacingOccurrences(of: String.noValue, with: String.empty))
                .resizable()
                .aspectRatio(nil, contentMode: .fit)
                .frame(width: 20, height: 20)
        } else {
            Image(self.icon)
                .resizable()
                .aspectRatio(nil, contentMode: .fit)
                .frame(width: 20, height: 20)
        }
    }
    
}

public struct EVIOTextFieldPlaceholder: View {
    
    private let showTopPlaceholder: Bool
    private let placeholder: String
    
    public init(showTopPlaceholder: Bool, placeholder: String) {
        self.showTopPlaceholder = showTopPlaceholder
        self.placeholder = placeholder
    }
    
    public var body: some View {
        HStack(spacing: .zero) {
            if self.showTopPlaceholder {
                self.text
                    .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor))
            } else {
                self.text
                    .modifier(EVIOChargerAddressModifier(color: .primaryTextColor, lineLimit: 1))
            }
            Spacer()
        }
        .allowsHitTesting(false)
    }
    
    private var text: some View {
        Text(self.placeholder)
    }
    
}
