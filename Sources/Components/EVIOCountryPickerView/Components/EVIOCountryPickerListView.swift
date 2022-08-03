//
//  EVIOCountryPickerListView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOCountryPickerListView: View {
    
    @ObservedObject public var viewModel: EVIOCountryPickerViewViewModel
    public let action: ((Country) -> Void)
    
    public init(viewModel: EVIOCountryPickerViewViewModel, action: @escaping (Country) -> Void) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
        self.action = action
    }
    
    public var body: some View {
        ForEach(self.viewModel.listOfCountries, id: \.code) { country in
            EVIOCountryPickerItemView(viewModel: self.viewModel, country: country, action: self.action)
        }
    }
    
}
