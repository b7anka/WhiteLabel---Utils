//
//  EVIOSearchLocationTextFieldView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI

public struct EVIOSearchLocationTextFieldView: View {
    
    @ObservedObject private var viewModel: EVIOSearchLocationViewViewModel
    
    public init(viewModel: EVIOSearchLocationViewViewModel) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.tertiaryTextColor.opacity(0.7))
            .frame(width: nil, height: 40)
            .overlay(
                HStack(spacing: .zero) {
                    Image(systemName: .searchIcon)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fill)
                        .frame(width: 20.68, height: 20.86)
                        .foregroundColor(.primaryTextColor)
                    EVIOTextField(text: self.$viewModel.searchText, errorMessage: .constant(nil), showTopPlaceholder: false, keyboardType: .default, autoCapitalization: .words, disableAutoCorrection: false, placeholder: nil, padding: 23, noBorder: true, leadingIcon: nil)
                }
                    .padding(.horizontal, 23)
            )
    }
    
}
