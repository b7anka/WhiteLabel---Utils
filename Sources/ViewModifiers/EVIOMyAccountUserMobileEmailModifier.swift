//
//  EVIOMyAccountUserMobileEmailModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/03/2022.
//

import SwiftUI

public struct EVIOMyAccountUserMobileEmailModifier: ViewModifier {
    
    public var color: Color = .primaryTextColor
    public var lineLimit: Int?
    public var textAlignment: TextAlignment = .leading
    
    public init(color: Color = .primaryTextColor, lineLimit: Int?, textAlignment: TextAlignment = .leading) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioMyAccountUserMobileEmailFont)
            .foregroundColor(self.color)
            .fixedSize(horizontal: false, vertical: true)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
        
    }
    
}
