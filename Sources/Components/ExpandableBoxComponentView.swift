//
//  ExpandableBoxComponentView.swift
//  evio
//
//  Created by João Moreira on 24/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct ExpandableBoxComponentView<Content: View>: View {
    
    private let content: Content
    private let imageString: String
    private let title: String
    private let subtitle: String?
    private let expandedHeight: CGFloat
    private let shouldExpand: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    @State private var expanded: Bool = false
    
    public init(content: Content, imageString: String, title: String, expandedHeight: CGFloat, subtitle: String? = nil, shouldExpand: Bool = true) {
        self.content = content
        self.imageString = imageString
        self.title = title
        self.expandedHeight = expandedHeight
        self.subtitle = subtitle
        self.shouldExpand = shouldExpand
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                Button(action: self.expandOrCollapse) {
                    HStack {
                        Image(self.imageString)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 14.76, height: 19.09)
                        Text(self.title)
                            .modifier(EVIOMainFontModifier(color: .primaryTextColor, lineLimit: 1, textAlignment: .leading))
                            .padding(.leading, 5)
                        Spacer()
                        if let subtitle = self.subtitle {
                            Text(subtitle)
                                .modifier(EVIOMainFontModifier(color: .secondaryTextColor, lineLimit: 1, textAlignment: .leading))
                                .padding(.trailing, 15)
                        }
                        if self.shouldExpand {
                            Image(.downArrow)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 18.36, height: 12.66)
                                .rotationEffect(self.expanded ? .degrees(180) : .zero)
                        }
                    }
                }
                .padding(.top, 12.5)
                .padding(.horizontal, 14)
                Spacer()
            }
            .frame(height: 46)
            if self.expanded {
                VStack(spacing: 0) {
                    self.content
                        .padding([.top, .bottom], 10)
                    Spacer()
                }
            }
        }
        .background(Color.primaryBackground)
        .cornerRadius(10)
        .shadow(color: .fifthShadow, radius: 6, x: 0, y: 3)
        .disabled(!self.shouldExpand)
    }
}

private extension ExpandableBoxComponentView {
    
    private func expandOrCollapse() {
        guard self.shouldExpand else { return }
        self.feedbackGenerator.impactOccurred()
        withAnimation {
            self.expanded.toggle()
        }
    }
    
}
