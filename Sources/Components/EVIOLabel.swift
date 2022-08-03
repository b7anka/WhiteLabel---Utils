//
//  EVIOLabel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/01/2022.
//

import SwiftUI

public struct EVIOLabel: UIViewRepresentable {
    
    private let text: String
    private let fontName: String
    private let fontSize: CGFloat
    private let color: Color
    private let alignment: NSTextAlignment
    private let numberOfLines: Int
    private let minimumScaleFactor: CGFloat
    private let isUserInteractionEnabled: Bool
    
    public init(text: String, fontName: String = .appFontSemiBold, fontSize: CGFloat = 15, color: Color = .primaryTextColor, alignment: NSTextAlignment = .left, numberOfLines: Int = 1, minimumScaleFactor: CGFloat = 0.5, isUserInteractionEnabled: Bool = false) {
        self.text = text
        self.fontName = fontName
        self.fontSize = fontSize
        self.color = color
        self.alignment = alignment
        self.numberOfLines = numberOfLines
        self.minimumScaleFactor = minimumScaleFactor
        self.isUserInteractionEnabled = isUserInteractionEnabled
    }
    
    public func makeUIView(context: Context) -> UILabel {
        let label: UILabel = UILabel()
        label.isUserInteractionEnabled = self.isUserInteractionEnabled
        label.text = text
        label.font = UIFont(name: self.fontName, size: self.fontSize) ?? UIFont.systemFont(ofSize: self.fontSize, weight: .semibold)
        label.textAlignment = self.alignment
        label.textColor = self.color.uiColor
        label.numberOfLines = self.numberOfLines
        label.minimumScaleFactor = self.minimumScaleFactor
        return label
    }
    
    public func updateUIView(_ uiView: UILabel, context: Context) {}
    
}
