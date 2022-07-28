//
//  EVIOClearAllFiltersButtonTitleModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 28/12/2021.
//

import SwiftUI

public struct EVIOClearAllFiltersButtonTitleModifier: ViewModifier {
    
    @Binding public var disabled: Bool
    public var color: Color?
    public var lineLimit: Int? = 1
    public var textAlignment: TextAlignment = .center
    
    public func body(content: Content) -> some View {
        content
            .font(.evioClearAllFiltersButtonTitle)
            .foregroundColor(self.color != nil ? self.color! : self.disabled ? .tertiaryTextColor : .secondaryBackground)
            .lineLimit(self.lineLimit)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(self.textAlignment)
            .minimumScaleFactor(0.5)
    }
    
}
