//
//  EVIONoObjectsDefaultView.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 18/11/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIONoObjectsDefaultView: View {
    
    private let title: String?
    private let textToUnderline: String?
    private let action: (() -> Void)?
    private let subtitle: String
    private let imageName: String
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(title: String? = nil, textToUnderline: String? = nil, action: (() -> Void)? = nil, subtitle: String, imageName: String = .noObjectsDefault) {
        self.title = title
        self.textToUnderline = textToUnderline
        self.action = action
        self.subtitle = subtitle
        self.imageName = imageName
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            Image(self.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.36, height: UIScreen.main.bounds.height * 0.15)
                .padding(.top, 30)
            if let title = self.title {
                Text(title)
                    .modifier(EVIONoObjectsDefaultTitleModifier())
                    .padding(.top, 25)
                    .padding(.horizontal, 40)
            }
            if let textToUnderline = self.textToUnderline {
                self.underineText(text: textToUnderline)
            } else {
                Text(self.subtitle)
                    .modifier(EVIONoObjectsDefaultSubtitleModifier())
                    .padding(.top, self.title != nil ? 14 : 25)
                    .padding(.horizontal, 40)
            }
            Spacer()
        }
        .contentShape(Rectangle())
        .onTapGesture {
            guard let action = self.action else { return }
            self.feedbackGenerator.impactOccurred()
            action()
        }
    }
    
    private func underineText(text: String) -> some View {
        let mainAttributes: [NSMutableAttributedString.Key: Any] = [
            .font: UIFont(name: .appFont, size: 14) ?? UIFont.systemFont(ofSize: 14),
            .foregroundColor: Color.secondaryTextColor.uiColor
        ]
        let otherAttributes: [NSMutableAttributedString.Key: Any] = [
            .underlineStyle: 1,
            .underlineColor: Color.secondaryTextColor.uiColor
        ]
        let mainAttributedString: NSMutableAttributedString = NSMutableAttributedString(string: self.subtitle, attributes: mainAttributes)
        let underlineAttributedString: NSMutableAttributedString = NSMutableAttributedString(string: text, attributes: mainAttributes)
        underlineAttributedString.addAttributes(otherAttributes, range: NSRange(location: 0, length: underlineAttributedString.length))
        if mainAttributedString.mutableString.contains(underlineAttributedString.string) {
            let range: NSRange = mainAttributedString.mutableString.range(of: underlineAttributedString.string)
            mainAttributedString.replaceCharacters(in: range, with: underlineAttributedString)
        }
        return Text(mainAttributedString)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
    }
    
}
