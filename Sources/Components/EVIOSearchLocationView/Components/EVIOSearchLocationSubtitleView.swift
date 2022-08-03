//
//  EVIOSearchLocationSubtitleView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationSubtitleView: View {
    
    public let viewModel: EVIOSearchLocationViewViewModel
    
    public init(viewModel: EVIOSearchLocationViewViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Group {
            EVIOVerticalDivider()
                .padding(.vertical, 10)
            HStack(spacing: .zero) {
                Text(self.viewModel.languageManager.searchLocationSuggestions)
                    .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor))
                Spacer()
            }
        }
    }
    
}
