//
//  EVIOTabBarView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/01/2022.
//

import SwiftUI

public struct EVIOTabBarView: View {
    
    @Binding private var currentSelection: Int
    private let tabs: [EVIOTabBarItem]
    
    public init(currentSelection: Binding<Int>, tabs: [EVIOTabBarItem]) {
        self._currentSelection = currentSelection
        self.tabs = tabs
    }
    
    public var body: some View {
        EVIOSlidingTabView(selection: self.$currentSelection, tabs: self.tabs, font: .evioSearchResultTitle, activeAccentColor: .tabsSelectedColor, inactiveAccentColor: .tabsUnselectedColor, selectionBarColor: .tabsUnderViewColor, inactiveTabColor: .transparent, activeTabColor: .transparent, selectionBarHeight: 4, selectionBarBackgroundColor: .transparent)
            .padding(.horizontal, 34)
    }
    
}

public struct EVIOTabBarItem: Identifiable, Equatable {
    
    public let title: String
    public let underbarHidden: Bool
    public let hidden: Bool
    public let disabled: Bool
    
    public init(title: String, hidden: Bool = false, disabled: Bool = false, underbarHidden: Bool = false) {
        self.title = title
        self.hidden = hidden
        self.disabled = disabled
        self.underbarHidden = underbarHidden
    }
    
    public var id: String {
        return self.title
    }
    
}
