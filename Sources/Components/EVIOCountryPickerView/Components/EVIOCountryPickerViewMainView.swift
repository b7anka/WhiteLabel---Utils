//
//  EVIOCountryPickerViewMainView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOCountryPickerViewMainView: View {
    
    @ObservedObject public var viewModel: EVIOCountryPickerViewViewModel
    public var action: ((Country) -> Void)
    
    public init(viewModel: EVIOCountryPickerViewViewModel, action: @escaping (Country) -> Void) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
        self.action = action
    }
    
    public var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(alignment: .leading, spacing: 10) {
                EVIOCountryPickerListView(viewModel: self.viewModel, action: self.action)
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .padding(. horizontal, 20)
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
    
}
