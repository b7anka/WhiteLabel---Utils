//
//  FiltersListViewItemView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import SwiftUI

/// # THE VIEW FOR THE FILTERS VIEW
public struct FiltersListViewItemView: View {
    
    // MARK: - OBSERVED PROPERTIES
    @ObservedObject var element: FiltersList
    
    // MARK: - PROPERTIES
    private let shouldToggleElement: Bool
    private let action: ((FiltersList) -> Void)
    private let size: CGSize
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(element: FiltersList, shouldToggleElement: Bool, action: @escaping (FiltersList) -> Void, size: CGSize) {
        self._element = ObservedObject(wrappedValue: element)
        self.shouldToggleElement = shouldToggleElement
        self.action = action
        self.size = size
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    // MARK: - BODY
    public var body: some View {
        Button(action: {
            if self.shouldToggleElement {
                self.element.selected.toggle()
            }
            self.feedbackGenerator.impactOccurred()
            self.action(self.element)
        }) {
            VStack(spacing: 5) {
                Image(self.element.selected ? self.element.selectedImage : self.element.image)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fill)
                    .frame(width: self.size.width, height: self.size.height)
                Text(EVIOLanguageManager.shared.getTranslationFor(key: self.element.title))
                    .modifier(EVIOFiltersListViewTitleTextModifier())
            }
            .frame(height: self.size.height + .heightMarginForFiltersListItemView)
        }
    }
    
}
