//
//  EVIOSearchLocationView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import SwiftUI
import MapKit

public struct EVIOSearchLocationView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @StateObject private var viewModel: EVIOSearchLocationViewViewModel
    @ObservedObject private var networkManager: EVIONetworkManager = EVIONetworkManager.shared
    @SceneStorage(.searchLocationPageSearchText) private var searchText: String?
    public let title: String
    public let isClose: Bool
    
    public init(title: String, isClose: Bool, location: CLLocationCoordinate2D, completion: @escaping (EVIOSearchLocation) -> Void) {
        self.title = title
        self.isClose = isClose
        self._viewModel = StateObject(wrappedValue: EVIOSearchLocationViewViewModel(location: location, completion: completion))
    }
    
    public var body: some View {
        ZStack {
            Color.primaryBackground
                .edgesIgnoringSafeArea(.all)
            EVIOSearchLocationMainView(viewModel: self.viewModel, title: self.title, isClose: self.isClose, dismissAction: {
                self.presentationMode.wrappedValue.dismiss()
            })
            .contentShape(Rectangle())
            .onChange(of: self.viewModel.closeView, perform: { _ in
                self.presentationMode.wrappedValue.dismiss()
            })
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification, object: nil), perform: { _ in
                self.searchText = self.viewModel.searchText
            })
            .onTapGesture {
                self.hideKeyboard()
            }
            .onAppear(perform: {
                self.viewModel.restoreUserData(searchText: self.searchText)
                self.searchText = nil
            })
            if !self.networkManager.hasInternetConnection {
                EVIONoInternetTopView(message: self.viewModel.languageManager.generalNoInternetConnection)
                    .allowsHitTesting(false)
            }
            if self.viewModel.showLoading {
                EVIOLoadingView()
            }
        }
    }
    
}
