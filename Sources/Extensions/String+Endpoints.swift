//
//  String+Endpoints.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 18/12/2021.
//

import Foundation

// this lines makeas an alias for the type string
public typealias EVIOEndpoints = String
/// # EXTENSION THAT REPRESENTS
/// # ALL ENDPOINTS FROM THE BACKEND
public extension String {
    
    // Endpoint to get app translations
    static let getTranslations: EVIOEndpoints = "/public/language/translation"
    // Endpoint to check if translations need to be re-fetched
    static let checkTranslations: EVIOEndpoints = "/public/language/checktranslation"
    // Endpoint to get the details of a charging point to be used when the user has not logged in to the app
    static let chargerDetailsPublic: EVIOEndpoints = "/public/connectionstation/chargerDetails"
    // Endpoint to get the details of a charging point to be used when the user is logged in into the app
    static let chargerDetails: EVIOEndpoints = "/private/connectionstation/chargerDetails"
    // Endpoint to get chargers on the map to be used when the user has not logged in into the app
    static let getChargersPublic: EVIOEndpoints = "/public/connectionstation/chargers"
    // Endpoint to get chargers on the map to be used when the user is logged in into the app
    static let getChargers: EVIOEndpoints = "/private/connectionstation/chargers"
    // Endpoint to get the landing page object to be used when the user is logged in into the app
    static let landingPage: EVIOEndpoints = "/private/connectionstation/landingPage"
    // Endpoint to get the landing page object to be used when the user has not logged in into the app
    static let landingPagePublic: EVIOEndpoints = "/public/connectionstation/landingPage"
    // Endpoint to search charges by name publicly (no user token needed)
    static let searchByNamePublic: EVIOEndpoints = "/public/chargers/searchByName"
    // Endpoint to search charges by name privately (user token needed)
    static let searchByNamePrivate: EVIOEndpoints = "/private/chargers/searchByName"
    // Endpoint to get the user's favourites
    static let getUserFavourites: EVIOEndpoints = "/private/users/favorites"
    // Endpoint to get the price for an ocpi roaming charger
    static let cpoTariffsPrices: EVIOEndpoints = "/public/ocpi/cpoTariffsPrices"
    // Endpoint to create a notification for a plug
    static let createPlugNotification: EVIOEndpoints = "/private/notifymeHistory"
    // Endpoint to add an image to a public charger
    static let addImageToCharger: EVIOEndpoints = "/private/imagesDependencies"
    // Endpoint to get questions by type privately (user token needed)
    static let getQuestions: EVIOEndpoints = "/private/questions"
    // Endpoint to get questions by type publicly (no user token needed)
    static let getQuestionsPublic: EVIOEndpoints = "/public/questions"
    // Endpoint to create an issue for a host
    static let createIssueToHost: EVIOEndpoints = "/private/hostIssues"
    // Endpoint to create an issue for evio
    static let createIssueToEvio: EVIOEndpoints = "/private/evioIssues"
    // Endpoint to register an user using an email address
    static let signUpEmailEndpoint: EVIOEndpoints = "/private/users/wl"
    // Endpoint to register an user using a phone number
    static let signUpEndpoint: EVIOEndpoints = "/private/users"
    // Endpoint to authenticate an user using an email address
    static let loginEmailEndpoint: EVIOEndpoints = "/wl/authenticate"
    // Endpoint to authenticate an user using a phone number
    static let loginEndpoint: EVIOEndpoints = "/authenticate"
    // Endpoint to activate an user account
    static let activateAccount: EVIOEndpoints = "/accountActivation"
    // Endpoint to recover password
    static let recoverPassword: EVIOEndpoints = "/recover_password"
    // Endpoint to logout an user
    static let logoutEndpoint: EVIOEndpoints = "/private/logout"
    // Endpoint get or edit the user profile
    static let userAccountEndpoint: EVIOEndpoints = "/private/users"
    // Endpoint to change the user's mobile or email
    static let changeMobileOrEmailEndpoint: EVIOEndpoints = "/private/users/changeMobile"
    // Endpoint to change the user's password
    static let changePasswordEndpoint: EVIOEndpoints = "/private/users/changePassword"
    static let addOrEditReferencePlacesEndpoint: EVIOEndpoints = "/private/users/referencePlaces"
    static let userNotificationsSettings: EVIOEndpoints = "/private/notificationsSettings"
    static let activateRoamingNetwork: EVIOEndpoints = "/private/contracts/activeInternationalNetwork"
    static let joinMobieNetworkEndpoint: EVIOEndpoints = "/private/contracts/activeMobiENetwork"
    static let activateCardEndpoint: EVIOEndpoints = "/private/contracts/validateCard"
    static let getUserFleets: EVIOEndpoints = "/private/fleets"
    static let getEvBrands: EVIOEndpoints = "/private/evsdb/brands"
    static let getEvModels: EVIOEndpoints = "/private/evsdb/models"
    static let getEvVersions: EVIOEndpoints = "/private/evsdb/versions"
    static let removeEvFromFleet: EVIOEndpoints = "/private/fleets/removeEv"
    static let getOtherEvs: EVIOEndpoints = "/private/fleets/otherEvs"
    static let createEv: EVIOEndpoints = "/private/evs"
    static let leaveGroupOfDrivers: EVIOEndpoints = "/private/groupDrivers/leaveGroupDrivers"
    static let leaveBeingDriver: EVIOEndpoints = "/private/evs/leaveBeDriver"
    static let getUserActiveSessions: EVIOEndpoints = "/private/connectionstation/myActiveSessions"
    static let getUserChargersActiveSessions: EVIOEndpoints = "/private/connectionstation/activeSessionsMyChargers"
    static let checkSession: EVIOEndpoints = "/private/connectionstation/checkSession"
    static let connectionStation: EVIOEndpoints = "/private/connectionstation"
    static let transactionFailedEndpoint: EVIOEndpoints = "/private/evio_device/transactionFailed"
    static let createChargingScheduleEndpoint: EVIOEndpoints = "/private/chargingSchedule"
    static let createSessionRating: EVIOEndpoints = "/private/connectionstation/rating"
    static let downloadInvoiceEndpoint: EVIOEndpoints = "/private/billing/getInvoiceDocument"
    static let getChargingSessionSummaryEndpoint: EVIOEndpoints = "/private/connectionstation/summary"
    static let getQrCodeEndpint: EVIOEndpoints = "/private/chargers/qrCodeId"
    static let sendFirebaseTokenPublic: EVIOEndpoints = "/public/firebase/token"
    static let sendFirebaseToken: EVIOEndpoints = "/private/firebase/token"
    static let getInfrastructures: EVIOEndpoints = "/private/infrastructure/myInfrastructure"
    static let getOtherInfrastructures: EVIOEndpoints = "/private/infrastructure/othersInfrastructure"
    static let createInfrastructure: EVIOEndpoints = "/private/infrastructure"
    static let chargersEndpoint: EVIOEndpoints = "/private/chargers"
    static let sendSupportEndpoint: EVIOEndpoints = "/private/support"
    static let sendSupportPublicEndpoint: EVIOEndpoints = "/public/support"
    static let configPlugsEndpoints: EVIOEndpoints = "/private/chargers/configPlugs"
    static let toggleAutoRechargeEndpoint: EVIOEndpoints = "/private/wallet/autoRecharger"
    static let getUserWallet: EVIOEndpoints = "/private/wallet/byUser"
    static let sendMBWayRequestEndpoint: EVIOEndpoints = "/private/paymentsLusoPay/sendMBWayRequest"
    static let createMBReferenceEndpoint: EVIOEndpoints = "/private/paymentsLusoPay/generateNeWDynamicReference"
    static let sendMBReferenceBySmsEndpoint: EVIOEndpoints = "/private/paymentsLusoPay/sendSMS"
    static let getAllTransactionsEndpoint: EVIOEndpoints = "/private/transactions"
    static let getWalletTransactionsEndpoint: EVIOEndpoints = "/private/transactions/wallet"
    static let getBillingProfileEndpoint: EVIOEndpoints = "/private/billingProfile"
    static let getBillingPeriodsEndpoint: EVIOEndpoints = "/private/billingProfile/billingPeriods"
    static let getPaymentMethodsEndpoint: EVIOEndpoints = "/private/paymentsAdyen/paymentMethods"
    static let validateCardEndpoint: EVIOEndpoints = "/private/paymentsAdyen/validateCard"
    static let addBalanceCardEndpoint: EVIOEndpoints = "/private/paymentsAdyen/addBalanceCard"
    static let makeDefaultPaymentEndpoint: EVIOEndpoints = "/private/paymentsAdyen/makeDefaultPaymentMethod"
    static let editCardEndpoint: EVIOEndpoints = "/private/paymentsAdyen/editCard"
    static let removeCardEndpoint: EVIOEndpoints = "/private/paymentsAdyen/removeCard"
    static let addCardEndpoint: EVIOEndpoints = "/private/paymentsAdyen/addCard"
    static let makePaymentEndpoint: EVIOEndpoints = "/private/paymentsAdyen/makePayment"
    static let getInsightsEndpoint: EVIOEndpoints = "/private/insights_v2"
    static let getHistoryEndpoint: EVIOEndpoints = "/private/history_v2"
    static let getPlafondMovementsEndpoint: EVIOEndpoints = "/private/history_v2/byEV"
    static let updateContractPaymentMethod: EVIOEndpoints = "/private/contracts/paymentMethod"
    static let getOcpiDetailedTariffsEndpoint: EVIOEndpoints = "/public/ocpi/detailedTariffs"
    
}
