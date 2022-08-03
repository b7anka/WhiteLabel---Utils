//
//  EVIOPageControlView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 27/01/2022.
//

import SwiftUI

public struct EVIOPageControlView: View {
    
    @Binding public var currentSelection: Int
    @Binding public var numberOfItem: Int
    public var style: EVIOPageControl.Styles
    
    public init(currentSelection: Binding<Int>, numberOfItem: Binding<Int>, style: EVIOPageControl.Styles = .blackish) {
        self._currentSelection = currentSelection
        self._numberOfItem = numberOfItem
        self.style = style
    }
    
    public var body: some View {
        EVIOPageControlRepresentable(currentSelection: self.$currentSelection, numberOfPages: self.$numberOfItem, style: self.style)
            .frame(height: 16)
    }
    
}
