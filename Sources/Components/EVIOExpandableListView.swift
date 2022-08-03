//
//  EVIOExpandableListView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/01/2022.
//

import SwiftUI

public struct EVIOExpandableListView: View {
    
    public let geo: GeometryProxy?
    public let title: String
    public let shouldToggleElement: Bool
    @Binding private var elements: [FiltersList]
    private let action: ((FiltersList) -> Void)
    private let showBottomSeparator: Bool
    @Binding private var isExpanded: Bool
    
    public init(geo: GeometryProxy?, title: String, shouldToggleElement: Bool = true, elements: Binding<[FiltersList]>, action: @escaping (FiltersList) -> Void, showBottomSeparator: Bool = false, isExpanded: Binding<Bool>) {
        self.geo = geo
        self.title = title
        self.shouldToggleElement = shouldToggleElement
        self._elements = elements
        self.action = action
        self.showBottomSeparator = showBottomSeparator
        self._isExpanded = isExpanded
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            EVIOExpandableListViewHeaderView(isExpanded: self.$isExpanded, title: self.title)
            if self.isExpanded {
                EVIOExpandableList(geo: self.geo, shouldToggleElement: self.shouldToggleElement, elements: self.$elements, action: self.action)
                    .padding(.vertical, 15)
            }
            if self.showBottomSeparator {
                EVIOVerticalDivider()
                    .padding(.top, 15)
            }
        }
    }
    
}
