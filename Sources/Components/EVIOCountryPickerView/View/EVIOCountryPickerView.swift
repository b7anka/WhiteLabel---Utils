//
//  EVIOCountryPickerView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOCountryPickerView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    public var action: ((Country) -> Void)
    @StateObject private var viewModel: EVIOCountryPickerViewViewModel
    
    public init(action: @escaping (Country) -> Void) {
        self.action = action
        self._viewModel = StateObject(wrappedValue: EVIOCountryPickerViewViewModel())
    }
    
    public var body: some View {
        ZStack {
            Color.primaryBackground
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: .zero) {
                EVIOCloseButtonView(dismissAction: {
                    self.presentationMode.wrappedValue.dismiss()
                })
                    .padding([.leading, .top], 20)
                EVIOTextField(text: self.$viewModel.searchText, errorMessage: .constant(nil), placeholder: self.viewModel.languageManager.generalSearch, padding: 40, leadingIcon: "\(String.searchIcon)-")
                    .padding([.horizontal, .top], 20)
                EVIOCountryPickerViewMainView(viewModel: self.viewModel, action: self.action)
                    .padding(.vertical, 20)
            }
            .onDisappear(perform: {
                self.hideKeyboard()
            })
            .onTapGesture {
                self.hideKeyboard()
            }
            .onChange(of: self.viewModel.closeView) { _ in
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
    
}
