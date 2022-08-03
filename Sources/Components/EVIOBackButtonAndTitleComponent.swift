//
//  EVIOBackButtonAndTitleComponent.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 28/12/2021.
//

import SwiftUI

public struct EVIOBackButtonAndTitleComponent: View {
    
    public let title: String?
    public let isClose: Bool
    public let action: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(title: String?, isClose: Bool = false, action: @escaping () -> Void) {
        self.title = title
        self.isClose = isClose
        self.action = action
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        if self.isClose {
            self.button
        } else {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    self.button
                    if let title = self.title {
                        Text(title)
                            .modifier(EVIOPageTitleModifier())
                    }
                }
                Spacer()
            }
        }
    }
    
    private var button: some View {
        Button(action: {
            self.feedbackGenerator.impactOccurred()
            self.action()
        }) {
            self.buttonLayout
        }
    }
    
    private var buttonLayout: some View {
        Group {
            if self.isClose {
                Circle()
                    .fill(Color.transparent)
                    .frame(width: 26, height: 26)
                    .overlay(
                        Image(.closeIcon)
                            .resizable()
                            .aspectRatio(nil, contentMode: .fit)
                            .frame(height: 13)
                    )
            } else {
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.transparent)
                        .frame(width: 95, height: 51)
                    Image(.backButton)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(height: 13)
                        .padding(.top, 30)
                }
            }
        }
    }
    
}
