//
//  EVIOCustomTextView.swift
//  evio
//
//  Created by João Moreira on 07/10/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOCustomTextViewAlternate: View {
    
    @Binding private var text: String
    private let title: String
    private let placeHolder: String
    private let height: CGFloat
    private let fontName: String?
    private let fontSize: CGFloat
    private let color: Color
    
    public init(text: Binding<String>, title: String, placeHolder: String, height: CGFloat = 150.0, fontName: String? = nil, fontSize: CGFloat = 16.0, color: Color = .primaryTextColor) {
        self._text = text
        self.title = title
        self.placeHolder = placeHolder
        self.height = height
        self.fontName = fontName
        self.fontSize = fontSize
        self.color = color
    }
    
    public var body: some View {
        VStack {
            HStack {
                Text(self.title)
                    .modifier(EVIOTextModifier(color: self.color, textAlignment: .leading, lineLimit: 1, fontType: self.fontName ?? .appFontSemiBold, fontSize: self.fontSize))
                Spacer()
            }
            Spacer()
            EVIOCustomTextViewRepresentable(text: self.$text, placeHolder: self.placeHolder)
                .frame(height: self.height).cornerRadius(10)
        }
        .frame(height: self.height + 10)
    }
}
