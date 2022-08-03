//
//  EVIOMapFunctionButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import SwiftUI

public struct EVIOMapFunctionButton: View {
    
    @Binding private var rotate: Bool
    private let imageName: String
    private let width: CGFloat
    private let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(rotate: Binding<Bool>, imageName: String, width: CGFloat = 34.09, action: @escaping () -> Void) {
        self._rotate = rotate
        self.imageName = imageName
        self.width = width
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            Image(self.imageName)
                .resizable()
                .aspectRatio(nil, contentMode: .fit)
                .frame(width: self.width)
                .rotationEffect(.degrees(self.rotate ? 360 : 0))
                .animation(self.rotate ? .linear(duration: 0.5).repeatForever(autoreverses: false) : .default, value: self.rotate)
        }
    }
    
}
