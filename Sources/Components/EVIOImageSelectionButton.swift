//
//  EVIOImageSelectionButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI

public struct EVIOImageSelectionButton: View {
    
    @Binding private var image: UIImage?
    private let defaultImage: String
    private let action: (() -> Void)
    private let feedback: UIImpactFeedbackGenerator
    
    public init(image: Binding<UIImage?>, defaultImage: String = .userDefaultImage, action: @escaping () -> Void) {
        self._image = image
        self.defaultImage = defaultImage
        self.action = action
        self.feedback = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        ZStack {
            Image(uiImage: self.image ?? UIImage(named: self.defaultImage)!)
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 85, height: 85)
                .clipShape(Circle())
                .onLongPressGesture {
                    guard self.image != nil else { return }
                    self.feedback.impactOccurred()
                    self.image = nil
                }
            Button(action: {
                self.feedback.impactOccurred()
                self.action()
            }) {
                VStack(spacing: .zero) {
                    Spacer()
                    Image(.cameraIcon)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                }
                .offset(y: 10)
            }
        }
    }
    
}
