//
//  EVIOLoadingView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import SwiftUI

public struct EVIOLoadingView: View {
    
    private let transparent: Bool
    
    public init(transparent: Bool = false) {
        self.transparent = transparent
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
            EVIOLoadingViewRepresentable()
        }
        .background(EVIOTransparentBackgroundView())
    }
    
}
