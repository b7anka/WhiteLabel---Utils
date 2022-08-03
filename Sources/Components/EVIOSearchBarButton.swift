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
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(imageName: String, action: @escaping () -> Void) {
        self.imageName = imageName
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
                .frame(height: 22)
        }
    }
}
