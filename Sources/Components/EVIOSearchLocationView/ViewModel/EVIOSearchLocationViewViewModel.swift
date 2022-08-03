//
//  EVIOSearchLocationViewViewModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI
import CoreLocation

final public class EVIOSearchLocationViewViewModel: ObservableObject {
    
    @Published public var searchText: String {
        didSet {
            self.search()
        }
    }
    @Published public var showLoading: Bool
    @Published public var searchResults: [EVIOSearchLocation]
    @Published public var closeView: Bool
    private var mapKitHelper: EVIOMapKitHelper!
    private let localNotificationsManager: EVIOLocalNotificationsManager
    private let completion: ((EVIOSearchLocation) -> Void)
    public let languageManager: EVIOLanguage
    public let location: CLLocationCoordinate2D
    
    public init(location: CLLocationCoordinate2D, completion: @escaping (EVIOSearchLocation) -> Void) {
        self.completion = completion
        self.localNotificationsManager = EVIOLocalNotificationsManager.shared
        self.closeView = false
        self.location = location
        self.languageManager = EVIOLanguageManager.shared.language
        self.searchResults = []
        self.searchText = .empty
        self.showLoading = false
        self.mapKitHelper = EVIOMapKitHelper(completion: self.searchResultsReceived)
        self.mapKitHelper.geocode(with: location)
    }
    
    public func searchSelected(_ search: EVIOSearchLocation) {
        if let completion = search.mkSearchCompletion {
            self.showLoading = true
            self.mapKitHelper.search(using: completion) { location, _ in
                DispatchQueue.main.async { [weak self] in
                    self?.showLoading = false
                    guard let self = self else { return }
                    if let location = location {
                        self.completion(location)
                        self.closeView = true
                    } else {
                        self.localNotificationsManager.showNotificationWithMessageAndTitle(self.languageManager.generalGenericErrorMessage, title: nil, style: .danger)
                    }
                }
            }
        } else {
            self.closeView = true
        }
    }
    
    public func restoreUserData(searchText: String?) {
        self.searchText = searchText ?? .empty
        self.search()
    }
    
    private func searchResultsReceived(_ results: [EVIOSearchLocation], _ error: Error?) {
        DispatchQueue.main.async {
            if let error = error {
                print(error.localizedDescription)
            } else {
                self.searchResults = results
            }
        }
    }
    
    private func search() {
        let searchQuery: String = self.searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !searchQuery.isEmpty && searchQuery.count > 2 else { return }
        self.mapKitHelper.searchLocation(query: searchQuery, location: self.location)
    }
    
}
