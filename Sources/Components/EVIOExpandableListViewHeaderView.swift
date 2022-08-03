//
//  EVIOExpandableListViewHeaderView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

struct EVIOExpandableListViewHeaderView: View {
    
    @Binding private var isExpanded: Bool
    private let title: String
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(isExpanded: Binding<Bool>, title: String) {
        self._isExpanded = isExpanded
        self.title = title
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            withAnimation {
                self.feedbackGenerator.impactOccurred()
                self.isExpanded.toggle()
            }
        }) {
            VStack(spacing: 15) {
                EVIOVerticalDivider()
                HStack(spacing: .zero) {
                    Text(self.title)
                        .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor))
                    Spacer()
                    Image(.downArrow)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(height: 8)
                        .rotationEffect(self.isExpanded ? .degrees(180) : .zero)
                        .animation(.easeIn(duration: 0.2), value: self.isExpanded)
                }
            }
            .frame(width: nil, height: 35)
        }
    }
    
}
