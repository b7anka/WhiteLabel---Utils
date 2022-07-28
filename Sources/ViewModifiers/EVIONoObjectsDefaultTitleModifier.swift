//
//  EVIONoObjectsDefaultTitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 21/12/2021.
//

import SwiftUI

public struct EVIONoObjectsDefaultTitleModifier: ViewModifier {
    
    public var color: Color = .secondaryTextColor
    public var textAligment: TextAlignment = .center
    public var lineLimit: Int?
    
    public func body(content: Content) -> some View {
        content
            .font(.evioNoObjectsTitle)
            .foregroundColor(self.color)
            .fixedSize(horizontal: false, vertical: true)
            .lineLimit(self.lineLimit)
            .multilineTextAlignment(self.textAligment)
            .minimumScaleFactor(0.5)
    }
    
}
