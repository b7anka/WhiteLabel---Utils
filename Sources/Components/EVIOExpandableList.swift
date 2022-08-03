//
//  EVIOExpandableList.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

public struct EVIOExpandableList: View {
    
    private let geo: GeometryProxy?
    private let spacing: CGFloat
    private let size: CGSize
    private let shouldToggleElement: Bool
    @Binding private var elements: [FiltersList]
    private var action: ((FiltersList) -> Void)
    
    public init(geo: GeometryProxy?, spacing: CGFloat = .filtersListViewDefaultSpacing, size: CGSize = .filtersDefaultListViewItemSize, shouldToggleElement: Bool, elements: Binding<[FiltersList]>, action: @escaping (FiltersList) -> Void) {
        self.geo = geo
        self.spacing = spacing
        self.size = size
        self.shouldToggleElement = shouldToggleElement
        self._elements = elements
        self.action = action
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: self.spacing) {
                ForEach(self.elements) { element in
                    FiltersListViewItemView(element: element, shouldToggleElement: self.shouldToggleElement, action: self.action, size: self.size)
                }
            }
            .frame(width: self.geo?.size.width)
        }
    }
}
