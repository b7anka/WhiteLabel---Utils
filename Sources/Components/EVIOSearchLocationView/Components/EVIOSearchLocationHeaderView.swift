//
//  EVIOSearchLocationHeaderView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationHeaderView: View {
    
    public let dismissAction: (() -> Void)
    public let title: String
    public let isClose: Bool
    
    public init(dismissAction: @escaping () -> Void, title: String, isClose: Bool) {
        self.dismissAction = dismissAction
        self.title = title
        self.isClose = isClose
    }
    
    public var body: some View {
        if self.isClose {
            VStack(spacing: 10) {
                EVIOCloseButtonView(dismissAction: {
                    self.dismissAction()
                }, buttonColor: .primaryTextColor)
                HStack {
                    Text(self.title)
                        .modifier(EVIOPageTitleModifier())
                    Spacer()
                }
            }
            .padding(.top, 30)
        } else {
            EVIOBackButtonAndTitleComponent(title: self.title, isClose: self.isClose) {
                self.dismissAction()
            }
        }
    }
    
}
