//
//  EVIOSearchBarButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import SwiftUI

public struct EVIOSearchBarButton: View {
    
    private let imageName: String
    private let action: (() -> Void)
    private var useSystemImage: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    @Binding private var systemImageColor: Color
    
    public init(systemImageColor: Binding<Color> = .constant(.secondaryTextColor), useSystemImage: Bool = false, imageName: String, action: @escaping () -> Void) {
        self.useSystemImage = useSystemImage
        self.imageName = imageName
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self._systemImageColor = systemImageColor
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            if self.useSystemImage {
                Image(systemName: self.imageName)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .foregroundColor(self.systemImageColor)
                    .frame(height: 22)
            } else {
                Image(self.imageName)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(height: 22)
            }
        }
    }
}
