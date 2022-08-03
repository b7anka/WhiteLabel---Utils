//
//  EVIOPageIndicator.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/04/2022.
//

import SwiftUI

public struct EVIOPageIndicator: View {
    
    @Binding private var selectedIndex: Int
    private let numberOfPages: Int
    private let radius: CGFloat
    private let dotHeight: CGFloat
    private let dotSpace: CGFloat
    private let currentDotWidth: CGFloat
    private let otherDotColor: Color
    private let currentDotColor: Color
    
    public init(selectedIndex: Binding<Int>, numberOfPages: Int, radius: CGFloat = 4, dotHeight: CGFloat = 8, dotSpace: CGFloat = 8, currentDotWidth: CGFloat = 25, otherDotColor: Color = Color.tertiaryTextColor, currentDotColor: Color = Color.primaryTextColor) {
        self._selectedIndex = selectedIndex
        self.numberOfPages = numberOfPages
        self.radius = radius
        self.dotHeight = dotHeight
        self.dotSpace = dotSpace
        self.currentDotWidth = currentDotWidth
        self.otherDotColor = otherDotColor
        self.currentDotColor = currentDotColor
    }
    
    public var body: some View {
        HStack(spacing: self.dotSpace) {
            ForEach(0..<self.numberOfPages, id: \.self) { i in
                RoundedRectangle(cornerRadius: self.radius)
                    .fill(self.selectedIndex == i ? self.currentDotColor : self.otherDotColor)
                    .frame(width: self.selectedIndex == i ? self.currentDotWidth : self.dotHeight, height: self.dotHeight)
            }
        }
        .animation(.default, value: self.selectedIndex)
    }
    
}
