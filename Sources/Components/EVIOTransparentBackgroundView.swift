//
//  EVIOTransparentBackgroundView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import SwiftUI

public struct EVIOTransparentBackgroundView: UIViewRepresentable {
    
    private let view: EVIOTransparentView
    
    public init(view: EVIOTransparentView) {
        self.view = view
    }
    
    public init(dismissAction: (() -> Void)? = nil) {
        self.view = EVIOTransparentView(dismissAction: dismissAction)
    }
    
    public func makeUIView(context: Context) -> EVIOTransparentView {
        DispatchQueue.main.async {
            self.view.superview?.superview?.backgroundColor = .clear
        }
        return self.view
    }

    public func updateUIView(_ uiView: EVIOTransparentView, context: Context) { }
    
}
