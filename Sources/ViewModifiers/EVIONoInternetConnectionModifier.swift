//
//  EVIONoInternetConnectionModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/12/2021.
//

import SwiftUI

/// # A VIEW MODIFIER TO BE IMPLEMENTED BY ANY VIEW THAT WANTS TO USE THE FONT AND SIZE OF THE NO INTERNET CONNECTION VIEW
public struct EVIONoInternetConnectionModifier: ViewModifier {
    
    // the text color to be used (optional)
    public var color: Color = .white
    // the maximum number of lines that this text can have (pass 0 for unlimited)
    public var lineLimit: Int? = 4
    public var textAlignment: TextAlignment = .center
    
    public init(color: Color = .white, lineLimit: Int? = 4, textAlignment: TextAlignment = .center) {
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }
    
    // the body of the modifier
    public func body(content: Content) -> some View {
        content
            .font(.evioDefaultNoInternetConnection)
            .foregroundColor(self.color)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAlignment)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
    }
    
}
