//
//  EVIOBadgeView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/05/2022.
//

import SwiftUI

public struct EVIOBadgeView<Content: View>: View {
    
    @Binding private var numberToShow: Int
    private let color: Color
    private let content: Content
    
    public init(numberToShow: Binding<Int>, color: Color = .notificationBadgeColor, @ViewBuilder content: @escaping () -> Content) {
        self._numberToShow = numberToShow
        self.color = color
        self.content = content()
    }
    
    public var body: some View {
        ZStack(alignment: .top) {
            self.content
            if self.numberToShow > .zero {
                HStack(spacing: .zero) {
                    Spacer()
                    HStack(spacing: .zero) {
                        Text(self.numberToShow < 1000 ? "\(self.numberToShow)" : "999+")
                            .modifier(EVIOReferencePlaceAddressModifier(color: .white, lineLimit: 1, textAlignment: .leading))
                            .padding(.horizontal, 5)
                    }
                    .background(self.color)
                    .cornerRadius(10)
                    .frame(width: nil, height: 10)
                }
                .offset(x: 2.5, y: -2.5)
            }
        }
    }
    
}
