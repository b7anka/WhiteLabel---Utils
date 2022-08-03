//
//  EVIOSearchLocationResultsView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationResultsView: View {
    
    @ObservedObject private var viewModel: EVIOSearchLocationViewViewModel
    
    public init(viewModel: EVIOSearchLocationViewViewModel) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            EVIOSearchLocationListView(viewModel: self.viewModel)
                .padding(.horizontal, 34)
        }
    }
    
}
