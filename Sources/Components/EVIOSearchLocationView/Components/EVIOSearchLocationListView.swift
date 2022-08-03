//
//  EVIOSearchLocationListView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationListView: View {
    
    @ObservedObject private var viewModel: EVIOSearchLocationViewViewModel
    
    public init(viewModel: EVIOSearchLocationViewViewModel) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        VStack(spacing: 10) {
            ForEach(self.viewModel.searchResults) { item in
                EVIOSearchLocationListItemView(item: item, action: self.viewModel.searchSelected)
            }
        }
    }
    
}
