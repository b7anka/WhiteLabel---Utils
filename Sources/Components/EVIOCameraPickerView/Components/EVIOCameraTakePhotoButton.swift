//
//  EVIOCameraTakePhotoButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/05/2022.
//

import SwiftUI

public struct EVIOCameraTakePhotoButton: View {
    
    public var action: (() -> Void)
    public let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(action: @escaping () -> Void) {
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            Image(systemName: .cameraFill)
                .resizable()
                .aspectRatio(nil, contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 30, height: nil)
        }
    }
    
}
