//
//  EVIOEstimatedCostExpandableView.swift
//  evio
//
//  Created by Tiago Moreira on 20/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOEstimatedCostExpandableView<Content: View>: View {
    
    @State private var isExpanded: Bool = false
    @Binding private var value: String
    private let label: String
    private let content: Content
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(value: Binding<String>, label: String, @ViewBuilder content: ()-> Content) {
        self._value = value
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self.label = label
        self.content = content()
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            VStack(spacing: .zero) {
                Button(action: {
                    self.feedbackGenerator.impactOccurred()
                    withAnimation {
                        self.isExpanded.toggle()
                    }
                }) {
                    HStack(spacing: 5) {
                        Text(self.label)
                            .modifier(EVIOContractInfoModifier(color: Color._5B6480, lineLimit: 1, textAlignment: .leading))
                        Spacer()
                        Text(self.value)
                            .modifier(EVIOReferencePlaceAddressModifier(color: Color.tertiaryTextColor, lineLimit: 1, textAlignment: .leading))
                        Image(.downArrow)
                            .resizable()
                            .aspectRatio(nil, contentMode: .fit)
                            .frame(height: 8)
                            .rotationEffect(.degrees(self.isExpanded ? 180 : .zero))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                }
                if self.isExpanded {
                    EVIOVerticalDivider()
                        .padding(.horizontal, 5)
                    self.content
                }
            }
        }
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color._CED6ED)
        )
        .padding(5)
    }
    
    
}
