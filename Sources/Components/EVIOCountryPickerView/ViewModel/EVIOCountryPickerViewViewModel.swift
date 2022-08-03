//
//  EVIOCountryPickerViewViewModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/02/2022.
//

import SwiftUI
import CountryPickerView

public final class EVIOCountryPickerViewViewModel: ObservableObject {
    
    @Published public var listOfCountries: [Country]
    @Published public var closeView: Bool
    @Published public var searchText: String {
        didSet {
            self.filterResults()
        }
    }
    private let cpv: CountryPickerView
    public let languageManager: EVIOLanguage
    
    public init() {
        self.languageManager = EVIOLanguageManager.shared.language
        self.cpv = CountryPickerView(frame: .zero)
        self.listOfCountries = self.cpv.countries
        self.closeView = false
        self.searchText = .empty
        self.sortArray()
    }
    
    private func sortArray() {
        self.listOfCountries = self.listOfCountries.sorted {
            ($0.localizedName() ?? $0.name) < ($1.localizedName() ?? $1.name)
        }
    }
    
    private func filterResults() {
        let text: String = self.searchText.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        if text.isEmpty {
            self.listOfCountries = self.cpv.countries
        } else {
            let filteredResults: [Country] = self.cpv.countries.filter({($0.localizedName() ?? $0.name).lowercased().contains(text)})
            self.listOfCountries = filteredResults
        }
        self.sortArray()
    }
    
}
