//
//  EVIODropDownView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/03/2022.
//

import SwiftUI

public struct EVIODropDownView: View {
    
    @Binding private var items: [String]
    @Binding private var itemSelected: String
    @Binding private var indexSelected: Int?
    public let rawDropDown: Bool
    public let placeholder: String
    
    public init(items: Binding<[String]>, itemSelected: Binding<String>, indexSelected: Binding<Int?>, rawDropDown: Bool = false, placeholder: String) {
        self._items = items
        self._itemSelected = itemSelected
        self._indexSelected = indexSelected
        self.rawDropDown = rawDropDown
        self.placeholder = placeholder
    }
    
    public var body: some View {
        if self.rawDropDown {
            self.rawComponent
        } else {
            VStack(spacing: .zero) {
                EVIOTextFieldPlaceholder(showTopPlaceholder: true, placeholder: self.placeholder)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.primaryTextColor)
                    .frame(width: nil, height: 40)
                    .overlay(
                        self.rawComponent
                    )
            }
        }
    }
    
    private var rawComponent: some View {
        return Menu {
            ForEach(0..<self.items.count, id: \.self) { i in
                Button(self.items[min(i, self.items.count-1)]) {
                    self.itemSelected = self.items[min(i, self.items.count-1)]
                    self.indexSelected = min(i, self.items.count-1)
                }
            }
        } label: {
            HStack {
                Text(self.itemSelected)
                    .modifier(EVIOFiltersSliderSubtitleLabelsTextModifier(color: .primaryTextColor))
                if !self.rawDropDown {
                    Spacer()
                }
                Image(.downArrow)
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: 15, height: nil)
            }
            .padding(.horizontal, self.rawDropDown ? .zero : 23)
        }
    }
    
}
