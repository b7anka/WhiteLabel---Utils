//
//  String+UserDefaultKeys.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/12/2021.
//

import Foundation

/// # EXTENSION THAT ADDS PROPERTIES THAT REPRESENT THE USER DEFAULT KEYS TO THE SWIFT'S BUILT IN STRING STRUCT
public extension String {
    
    static let userEvs: String = "userEvs"
    static let userContracts: String = "userContracts"
    static let userContacts: String = "userContacts"
    static let referencePlaces: String = "referencePlaces"
    static let userSearchLocations: String = "userSearchLocations"
    static let userFilter: String = "userFilter"
    static let userActivation: String = "userActivation"
    static let userFavorites: String = "userFavorites"
    static let userProfile: String = "userProfile"
    static let translationHash: String = "translationHash"
    static let appTranslation: String = "appTranslation"
    static let defaultCeme: String = "defaultCeme"
    static let userCemesTariffs: String = "userCemesTariffs"
    static let userWallet: String = "userWallet"
    static let teslaTariff: String = "teslaTariff"
    static let deviceDidShakeNotification: String = "deviceDidShakeNotification"
    static let lastUserPhoneCodeUsed: String = "lastUserPhoneCodeUsed"
    static let lastUserPhoneUsed: String = "lastUserPhoneUsed"
    static let lastUserEmailUsed: String = "lastUserEmailUsed"
    static let appWasReinstalled: String = "appWasReinstalled"
    static let chargingSessionDataUpdateNotification: String = "chargingSessionDataUpdateNotification"
    static let firebaseToken: String = "firebaseToken"
    static let userSelectedEv: String = "userSelectedEv"
    static let userSelectedContract: String = "userSelectedContract"
    
}
