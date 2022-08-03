//
//  EVIODeleteButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/12/2021.
//

import SwiftUI

public struct EVIODeleteButton: View {
    
    public let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(action: @escaping () -> Void) {
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            VStack {
                Image(systemName: .trash)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: nil, height: 20)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal, 30)
                    
            }
            .background(Color.red)
        }
        .transition(.move(edge: .trailing))
    }
    
}
