//
//  EVIOCountryPickerItemView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public struct EVIOCountryPickerItemView: View {
    
    public let viewModel: EVIOCountryPickerViewViewModel
    public let country: Country
    public let action: ((Country) -> Void)
    public let feebackGenerator: UIImpactFeedbackGenerator
    
    public init(viewModel: EVIOCountryPickerViewViewModel, country: Country, action: @escaping (Country) -> Void) {
        self.viewModel = viewModel
        self.country = country
        self.action = action
        self.feebackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        Button(action: {
            self.feebackGenerator.impactOccurred()
            self.action(country)
            self.viewModel.closeView = true
        }) {
            VStack(spacing: 5) {
                HStack(spacing: .zero) {
                    Image(uiImage: country.flag)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(width: 50, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    Text(country.localizedName() ?? country.name)
                        .modifier(EVIOAlertTitleModifier(color: .primaryTextColor))
                    Spacer()
                }
                EVIOVerticalDivider()
            }
        }
    }
    
}
