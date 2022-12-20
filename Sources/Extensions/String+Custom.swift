//
//  String+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 15/12/2021.
//

import Foundation

// this line creates an alias for the String type
public typealias EVIOAppConstants = String
/// # EXTENSION THAT REPRESENTS THE APP CONSTANTS
public extension String {
    
    // used for saving the json for the charges on map on the device's storage
    static let chargersData: String = "chargersData.json"
    // represents the default region of the user if none can be found
    static let defaultRegion: String = "UK"
    // represents the default language of the user if none can be found
    static let defaultLanguage: String = "en"
    // holds a key from the server that tells whether the app needs to be updated
    static let appNeedsUpdate: String = "server_need_update_app"
    static let serverInternalNetwork: String = "server_internal_network"
    static let noQuestionsFound: String = "server_no_questions_found"
    static let notAuthorized: String = "server_not_authorized"
    // holds a key from the server that tells whether the user is active
    static let userNotActive: String = "server_user_not_active"
    // holds a key from the server that tells the user is not valid
    static let userNotValid: String = "server_user_not_valid"
    static let paymentPreAuth: String = "server_payment_PreAuth"
    // key to store the user's session token
    static let sessionToken: String = "sessionToken"
    // key to store the user's refresh token
    static let refreshToken: String = "refreshToken"
    // creates an empty string
    static let empty: String = ""
    // creates a no value string
    static let noValue: String = "-"
    // a string with the apple value
    static let apple: String = "Apple"
    // a string with a plist value
    static let plist: String = "plist"
    // a string with a ttf value
    static let ttf: String = "ttf"
    // a string with a json value
    static let json: String = "json"
    static let pdf: String = "pdf"
    // a string that represents the file name for the connector types json file
    static let connectorTypes: String = "connector_types"
    // a string that represents the file name for the parking types json file
    static let parkingTypes: String = "parking_types"
    // a string that represents the file name for the vehicle types json file
    static let vehicleTypes: String = "vehicle_types"
    // a string that represents the file name for the login data json file
    static let loginData: String = "login_data"
    // the charger type for a siemens charger
    static let siemensChargerType: String = "001"
    // the charger type for a sonoff device
    static let sonoffChargerType: String = "002"
    // the charger type for an open charge map charger
    static let openChargeMapChargerType: String = "003"
    // the charger type for a mobie charger
    static let mobieChargerType: String = "004"
    // the charger type for an occps charger
    static let occpsChargerType: String = "005"
    // the charger type for the zero zero six charger
    static let zeroZeroSixChargerType: String = "006"
    // the charger type for the evio box
    static let evioBoxChargerType: String = "007"
    // the charger type for an ocpp 1.6 charger
    static let ocpp16ChargerType: String = "008"
    // the charger type for a tesla charger
    static let teslaChargerType: String = "009"
    // the charger type for a gireve charger
    static let gireveChargerType: String = "010"
    // the charger type for a go charge charger
    static let goChargeChargerType: String = "011"
    // the charger type for a hyundai charger
    static let hyundaiChargerType: String = "012"
    // a string representing the word myself
    static let myself: String = "myself"
    // a string representing the word driver
    static let driver: String = "driver"
    // a string with the default public group name
    static let publicGroupName: String = "Public"
    // a string representing the a notification's name
    static let dismissTabController: String = "dismissTabController"
    // a string representing the contract selected notification's name
    static let contractSelected: String = "contractSelected"
    // a string representing the ev selected notification's name
    static let evSelected: String = "evSelected"
    // a string that represents the notification when a question is selected in the report issue page is changed
    static let reportIssueSelectedQuestionChanged: String = "reportIssueSelectedQuestionChanged"
    // a string that represents the notification when the selected text in the report issue page is changed
    static let reportIssueSelectedTextChanged: String = "reportIssueSelectedTextChanged"
    // a string that represents the notification when the operator details is expanded or collapsed
    static let chargingPointOperatorViewDetailsExpanded: String = "chargingPointOperatorViewDetailsExpanded"
    // a string that represents the default country phone code
    static let defaultCountryPhoneCode: String = "+351"
    // a string that represents the notification to send the user to the login page
    static let goToLoginPage: String = "goToLoginPage"
    // a string that represents the notification to close the create account page
    static let closeCreateAccountPage: String = "closeCreateAccountPage"
    // a string that represents the notification to show the user the login page
    static let showLoginPage: String = "showLoginPage"
    // the default name for the user's qr code id image
    static let defaultQrCodeName: String = "my_qr_code_id"
    // a string that represents the png file extension
    static let png: String = "png"
    // a string that represents the space character
    static let space: String = " "
    // represents the notification name to be sent when the user changes the email successfully
    static let emailOrPasswordChangedSuccessfully: String = "emailOrPasswordChangedSuccessfully"
    static let contractStatusChanged: String = "contractStatusChanged"
    static let primaryEvChanged: String = "primaryEvChanged"
    static let evRemoved: String = "evRemoved"
    static let evEdited: String = "evEdited"
    static let landingPageDownloaded: String = "landingPageDownloaded"
    static let qrCodeDomain: String = "go-evio.com"
    static let sessionDataUpdated: String = "sessionDataUpdated"
    static let chargerUpdated: String = "chargerUpdated"
    static let infrastructureUpdated: String = "infrastructureUpdated"
    static let plugUpdated: String = "plugUpdated"
    static let finalConsumerTin: String = "999999990"
    static let sessionRatingGiven: String = "sessionRatingGiven"
    static let resetWebView: String = "resetWebView"
    static let evsUpdated: String = "evsUpdated"
    static let userInvalid: String = "userInvalid"
    static let userNeedsToUpdateApp: String = "userNeedsToUpdateApp"
    static let ´default´: String = "default"
    static let contractSelectedAndEvSelected: String = "contractSelectedAndEvSelected"
    static let automaticallyCloseCreateAccountPage: String = "automaticallyCloseCreateAccountPage"
    static let cellNameForChargersList: String = "chargersListCell"
    
}
