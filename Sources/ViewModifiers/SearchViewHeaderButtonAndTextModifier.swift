//
//  EVIOSearchViewHeaderButtonAndTextModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import SwiftUI

public struct EVIOSearchViewHeaderButtonAndTextModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .foregroundColor(.primaryTextColor)
            .font(.evioSearchButtonsAndText)
            .lineLimit(2)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
