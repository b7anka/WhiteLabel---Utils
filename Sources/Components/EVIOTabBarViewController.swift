//
//  EVIOTabBarViewController.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/01/2022.
//

import SwiftUI

public struct EVIOTabBarViewController<Content: View>: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @Binding private var selectedTab: Int
    private let title: String?
    private let tabs: [EVIOTabBarItem]
    private let allowSwipeToChangeTabs: Bool
    private let content: Content
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(selectedTab: Binding<Int>, title: String?, tabs: [EVIOTabBarItem], allowSwipeToChangeTabs: Bool = false, @ViewBuilder content: () -> Content) {
        self._selectedTab = selectedTab
        self.tabs = tabs
        self.content = content()
        self.title = title
        self.allowSwipeToChangeTabs = allowSwipeToChangeTabs
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            EVIOBackButtonAndTitleComponent(title: self.title, isClose: false) {
                self.presentationMode.wrappedValue.dismiss()
            }
            .padding(.horizontal, 34)
            EVIOTabBarView(currentSelection: self.$selectedTab, tabs: self.tabs)
                .padding(.top, self.tabs.count == 1 ? .zero : 10)
            self.content
                .padding(.top, self.tabs.count == 1 ? .zero : 15)
                .onSwipeGesture(perform: { swipe in
                    guard self.allowSwipeToChangeTabs else { return }
                    self.feedbackGenerator.impactOccurred()
                    if swipe == .right {
                        self.selectedTab = max(self.selectedTab - 1, .zero)
                    } else if swipe == .left {
                        self.selectedTab = min(self.selectedTab + 1, self.tabs.count-1)
                    }
                })
            Spacer()
        }
        .onReceive(NotificationCenter.default.publisher(for: .dismissTabController, object: nil)) { _ in
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
}
