//
//  EVIOPermissionsAlertView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public enum EVIOPermissionsAlertViewType {
    
    case camera
    case library
    case location
    case contacts
    case notifications
    case yesAndNo
    
}

public struct EVIOPermissionsAlertView: View {
    
    @StateObject private var viewModel: EVIOpermissionsAlertViewModel
    private let action: ((EVIOAlertButtonType) -> Void)
    private let title: String?
    private let message: String?
    
    public init(title: String? = nil, message: String? = nil, type: EVIOPermissionsAlertViewType, action: @escaping (EVIOAlertButtonType) -> Void) {
        self.title = title
        self.message = message
        self.action = action
        self._viewModel = StateObject(wrappedValue: EVIOpermissionsAlertViewModel(type: type))
    }
    
    public var body: some View {
        EVIOMultiActionAlert(completion: self.action, message: self.viewModel.type == .yesAndNo ? self.message ?? .empty : self.viewModel.alertMessage, title: self.viewModel.type == .yesAndNo ? self.title ?? .empty : self.viewModel.alertTitle, negativeActionTitle: self.viewModel.language.generalCancel, positiveActionTitle: self.viewModel.alertEnableButton, effectType: .none, alertType: .twoActions, springAnimationValue: .init())
    }
    
}

fileprivate final class EVIOpermissionsAlertViewModel: ObservableObject {
    
    @Published var alertTitle: String
    @Published var alertMessage: String
    @Published var alertEnableButton: String
    var type: EVIOPermissionsAlertViewType
    let language: EVIOLanguage
    
    init(type: EVIOPermissionsAlertViewType) {
        self.alertTitle = .empty
        self.alertMessage = .empty
        self.alertEnableButton = .empty
        self.language = EVIOLanguageManager.shared.language
        self.type = type
        self.defineAlertProperties()
    }
    
    private func defineAlertProperties() {
        switch self.type {
        case .library:
            self.alertEnableButton = self.language.libraryPermissionAlertEnableButton
            self.alertTitle = self.language.libraryPermissionAlertTitle
            self.alertMessage = self.language.libraryPermissionAlertMessage
        case .location:
            self.alertEnableButton = self.language.locationsServicesAlertEnableButton
            self.alertTitle = self.language.locationServicesAlertTitle
            self.alertMessage = self.language.locationServicesAlertMessage
        case .camera:
            self.alertEnableButton = self.language.cameraPermissionAlertEnableButton
            self.alertTitle = self.language.cameraPermissionAlertTitle
            self.alertMessage = self.language.cameraPermissionAlertMesage
        case .notifications:
            self.alertEnableButton = self.language.notificationsPermissionAlertEnableButton
            self.alertTitle = self.language.notificationsPermissionAlertTitle
            self.alertMessage = self.language.notificationsPermissionAlertMessage
        case .yesAndNo:
            self.alertEnableButton = self.language.generalYes
        default:
            self.alertEnableButton = self.language.contactsPermissionAlertEnableButton
            self.alertTitle = self.language.contactsPermissionAlertTitle
            self.alertMessage = self.language.contactsPermissionAlertEnableButton
        }
    }
    
}
