//
//  EVIOMapRightSideButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/12/2021.
//

import SwiftUI

public struct EVIOMapRightSideButton: View {
    
    private let backgroundColor: Color
    private let imageFile: String
    private let action: (() -> Void)
    private let impactFeedbackGenerator: UIImpactFeedbackGenerator
    
    public init(backgroundColor: Color = .mapButtonsColor, imageFile: String, action: @escaping () -> Void) {
        self.backgroundColor = backgroundColor
        self.imageFile = imageFile
        self.action = action
        self.impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.impactFeedbackGenerator.impactOccurred()
            self.action()
        }) {
            ZStack {
                Circle()
                    .fill(self.backgroundColor)
                Image(self.imageFile)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(height: 25)
            }
        }
    }
    
}
