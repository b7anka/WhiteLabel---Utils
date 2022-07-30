//
//  EVIOContractInfoModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 27/01/2022.
//

import SwiftUI

public struct EVIOContractInfoModifier: ViewModifier {
    
    public var color: Color = .white
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .white, lineLimit: Int? = 1, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.evioContractInfoFont)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
