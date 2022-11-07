//
//  EVIOLoadingView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import SwiftUI

public struct EVIOLoadingView: View {
    
    private let transparent: Bool
    private let paddingBottom: UIEdgeInsets
    
    public init(transparent: Bool = true, paddingBottom: UIEdgeInsets = UIEdgeInsets(top: .zero, left: .zero, bottom: .zero, right: .zero)) {
        self.transparent = transparent
        self.paddingBottom = paddingBottom
    }
    
    public var body: some View {
        ZStack {
            if self.transparent {
                Color.transparent
                    .edgesIgnoringSafeArea(.all)
            } else {
                Color.semiTransparent
                    .edgesIgnoringSafeArea(.all)
            }
            EVIOLoadingViewRepresentable(paddingBottom: self.paddingBottom)
        }
        .background(EVIOTransparentBackgroundView())
    }
    
}
