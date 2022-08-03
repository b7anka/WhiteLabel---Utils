//
//  EVIOSearchLocationMainView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationMainView: View {
    
    @ObservedObject private var viewModel: EVIOSearchLocationViewViewModel
    public let title: String
    public let isClose: Bool
    public let dismissAction: (() -> Void)
    
    public init(viewModel: EVIOSearchLocationViewViewModel, title: String, isClose: Bool, dismissAction: @escaping () -> Void) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
        self.title = title
        self.isClose = isClose
        self.dismissAction = dismissAction
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            EVIOSearchLocationHeaderView(dismissAction: self.dismissAction, title: self.title, isClose: self.isClose)
                .padding(.horizontal, 34)
            EVIOSearchLocationTextFieldView(viewModel: self.viewModel)
                .padding(.top, 30)
                .padding(.horizontal, 34)
            EVIOSearchLocationSubtitleView(viewModel: self.viewModel)
                .padding(.horizontal, 34)
            EVIOSearchLocationResultsView(viewModel: self.viewModel)
                .padding(.vertical, 10)
        }
    }
    
}
