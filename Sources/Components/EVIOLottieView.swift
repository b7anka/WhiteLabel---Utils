//
//  EVIOLottieView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 29/04/2022.
//

import SwiftUI
import Lottie

public struct EVIOLottieView: UIViewRepresentable {
    
    private let name: String
    private let loopMode: LottieLoopMode
    private let reverse: Bool
    private let animationView: AnimationView
    
    public init(name: String, loopMode: LottieLoopMode = .loop, reverse: Bool = false) {
        self.name = name
        self.loopMode = loopMode
        self.reverse = reverse
        self.animationView = AnimationView()
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIOLottieView>) -> UIView {
        let view = UIView(frame: .zero)
        self.animationView.animation = Animation.named(self.name)
        self.animationView.contentMode = .scaleAspectFit
        if !self.reverse {
            self.animationView.loopMode = self.loopMode
            self.animationView.play()
        } else {
            self.animationView.play(fromFrame: self.animationView.animation!.endFrame, toFrame: self.animationView.animation!.startFrame, loopMode: self.loopMode, completion: nil)
        }
        self.animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(self.animationView)
        NSLayoutConstraint.activate([
            self.animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            self.animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<EVIOLottieView>) {}
}
