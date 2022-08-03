//
//  EVIOVerticalDivider.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import SwiftUI

public struct EVIOVerticalDivider: View {
    
    public init() {}
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 1)
            .fill(Color.tertiaryTextColor)
            .frame(height: 1)
    }
    
}
