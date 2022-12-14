//
//  NotificationName+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import Foundation

/// # EXTENSION THAT ADDS STATIC PROPERTIES TO THE NOTIFICATION.NAME
public extension Notification.Name {
    
    // fired when changing the initial page
    static let initialPage: Notification.Name = Notification.Name(rawValue: .initialPage)
    // fired when user is blocked
    static let userBlocked: Notification.Name = Notification.Name(rawValue: .userBlocked)
    // fired when the user shakes his device
    static let deviceDidShakeNotification: Notification.Name = Notification.Name(rawValue: .deviceDidShakeNotification)
    // fired when filter presentation is changed
    static let filterPresentationUpdated: Notification.Name = Notification.Name(rawValue: .filterPresentation)
    // fired when user taps the favourite item
    static let favouritesShowChargerDetails: Notification.Name = Notification.Name(rawValue: .favouritesChargerData)
    // fired when user taps the favourites no login view
    static let favouritesPageToPresent: Notification.Name = Notification.Name(rawValue: .favouritesPageToPresent)
    // fired when charging summary presentation is changed
    static let chargingPointSummaryPresentationUpdated: Notification.Name = Notification.Name(rawValue: .chargingPointSummaryPageToPresent)
    // fired when charging summary navigation is changed
    static let chargingPointSummaryNavigationUpdated: Notification.Name = Notification.Name(rawValue: .chargingPointSummaryNavigation)
    // fired when charging summary enters background
    static let chargingPointEnteredBackground: Notification.Name = Notification.Name(rawValue: .chargingPointEnteredBackground)
    // fired when charging details enters background
    static let chargingPointDetailsEnteredBackground: Notification.Name = Notification.Name(rawValue: .chargingPointEnteredBackground)
    // fired when charging details presentation is changed
    static let chargingPointDetailsPresentationUpdated: Notification.Name = Notification.Name(rawValue: .chargingPointDetailsPageToPresent)
    // fired when charging details navigation is changed
    static let chargingPointDetailsNavigationUpdated: Notification.Name = Notification.Name(rawValue: .chargingPointDetailsNavigation)
    // fired when a viewModel wants to dismiss the tab controller programatically
    static let dismissTabController: Notification.Name = Notification.Name(rawValue: .dismissTabController)
    // fired when a contract is selected from the contracts selection page
    static let contractSelected: Notification.Name = Notification.Name(rawValue: .contractSelected)
    // fired when an ev is selected from the evs selection page
    static let evSelected: Notification.Name = Notification.Name(rawValue: .evSelected)
    // fired when a question is selected / unselected in the report issue page is changed
    static let reportIssueSelectedQuestionChanged: Notification.Name = Notification.Name(rawValue: .reportIssueSelectedQuestionChanged)
    // fired when the selected text in the report issue page is changed
    static let reportIssueSelectedTextChanged: Notification.Name = Notification.Name(rawValue: .reportIssueSelectedTextChanged)
    // fired when restoring charging point operator view details is expanded or collapsed property
    static let chargingPointOperatorViewDetailsExpanded: Notification.Name = Notification.Name(rawValue: .chargingPointOperatorViewDetailsExpanded)
    // fired programatically when the user needs to be sent to the login page
    static let goToLoginPage: Notification.Name = Notification.Name(rawValue: .goToLoginPage)
    // fired programatically when it is necessary to close the create account page
    static let closeCreateAccountPage: Notification.Name = Notification.Name(rawValue: .closeCreateAccountPage)
    // fired programatically when the login page needs to be displayed to the user
    static let showLoginPage: Notification.Name = Notification.Name(rawValue: .showLoginPage)
    // fired programatically when the user changed is email successfully
    static let emailOrPasswordChangedSuccessfully: Notification.Name = Notification.Name(rawValue: .emailOrPasswordChangedSuccessfully)
    // fired when a contract's status is changed
    static let contractStatusChanged: Notification.Name = Notification.Name(rawValue: .contractStatusChanged)
    static let primaryEvChanged: Notification.Name = Notification.Name(rawValue: .primaryEvChanged)
    static let evRemoved: Notification.Name = Notification.Name(rawValue: .evRemoved)
    static let evEdited: Notification.Name = Notification.Name(rawValue: .evEdited)
    static let landingPageDownloaded: Notification.Name = Notification.Name(rawValue: .landingPageDownloaded)
    static let sessionDataUpdated: Notification.Name = Notification.Name(rawValue: .sessionDataUpdated)
    static let chargerUpdated: Notification.Name = Notification.Name(rawValue: .chargerUpdated)
    static let infrastructureUpdated: Notification.Name = Notification.Name(rawValue: .infrastructureUpdated)
    static let plugUpdated: Notification.Name = Notification.Name(rawValue: .plugUpdated)
    static let sessionRatingGiven: Notification.Name = Notification.Name(rawValue: .sessionRatingGiven)
    static let resetWebView: Notification.Name = Notification.Name(rawValue: .resetWebView)
    static let evsUpdated: Notification.Name = Notification.Name(rawValue: .evsUpdated)
    static let userInvalid: Notification.Name = Notification.Name(rawValue: .userInvalid)
    static let userNeedsToUpdateApp: Notification.Name = Notification.Name(rawValue: .userNeedsToUpdateApp)
    static let contractSelectedAndEvSelected: Notification.Name = Notification.Name(rawValue: .contractSelectedAndEvSelected)
    static let automaticallyCloseCreateAccountPage: Notification.Name = Notification.Name(rawValue: .automaticallyCloseCreateAccountPage)
}
