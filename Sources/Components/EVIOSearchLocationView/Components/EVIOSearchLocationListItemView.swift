//
//  EVIOSearchLocationListItemView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationListItemView: View {
    
    public let item: EVIOSearchLocation
    public let action: ((EVIOSearchLocation) -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(item: EVIOSearchLocation, action: @escaping (EVIOSearchLocation) -> Void) {
        self.item = item
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action(self.item)
        }) {
            HStack(spacing: .zero) {
                VStack(spacing: .zero) {
                    HStack(spacing: .zero) {
                        Text(self.item.streetName ?? .empty)
                            .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor, textAligment: .leading))
                        Spacer()
                    }
                    HStack(spacing: .zero) {
                        Text(self.item.country ?? .empty)
                            .modifier(EVIONoObjectsDefaultSubtitleModifier(color: .tertiaryTextColor, textAlignment: .leading))
                        Spacer()
                    }
                }
                Spacer()
                Image(systemName: .plus)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: nil, height: 10)
                    .foregroundColor(.primaryTextColor)
            }
        }
    }
    
}
