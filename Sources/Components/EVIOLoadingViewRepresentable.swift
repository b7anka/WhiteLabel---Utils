//
//  EVIOLoadingViewRepresentable.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/07/2022.
//

import SwiftUI

public struct EVIOLoadingViewRepresentable: UIViewRepresentable {
    
    private let staticSpinningImage: UIImageView
    
    public init() {
        self.staticSpinningImage = UIImageView(frame: .zero)
    }
    
    public func makeUIView(context: Context) -> UIView {
        let view: UIView = UIView(frame: .zero)
        view.backgroundColor = .clear
        let staticLoadingImage: UIImageView = UIImageView(frame: .zero)
        staticLoadingImage.image = UIImage(named: .loadingStaticCircle)
        staticLoadingImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(staticLoadingImage)
        self.staticSpinningImage.image = UIImage(named: .loadingSpinningCircle)
        self.staticSpinningImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(self.staticSpinningImage)
        NSLayoutConstraint.activate([
            staticLoadingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            staticLoadingImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            staticLoadingImage.widthAnchor.constraint(equalToConstant: 100),
            staticLoadingImage.heightAnchor.constraint(equalToConstant: 100),
            self.staticSpinningImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.staticSpinningImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.staticSpinningImage.widthAnchor.constraint(equalToConstant: 100),
            self.staticSpinningImage.heightAnchor.constraint(equalToConstant: 100)
        ])
        return view
    }
    
    public func updateUIView(_ uiView: UIView, context: Context) {
        self.staticSpinningImage.startRotating()
    }
    
}
