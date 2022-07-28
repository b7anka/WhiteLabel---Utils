//
//  EVIOWalletBalanceTitleFontModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/05/2022.
//

import SwiftUI

public struct EVIOWalletBalanceTitleFontModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int?
    public var textAlignment: TextAlignment = .center
    
    public func body(content: Content) -> some View {
        content
            .font(.evioWalletBalanceTitleFont)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
        
    }
    
}
