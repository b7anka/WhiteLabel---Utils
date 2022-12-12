//
//  EVIOLanguage.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/12/2021.
//

import Foundation

public struct EVIOLanguage: Codable {
    
    // MARK: - GENERAL KEYS PROPERTIES
    public let generalNoInternetConnection: String
    public let generalNoInternetConnectionMessage: String
    public let generalOk: String
    public let generalAvailableSoon: String
    public let generalGenericErrorMessage: String
    public let generalMore: String
    public let generalLess: String
    public let generalPlusVat: String
    public let generalUnidentifiedEv: String
    public let generalInfoNotAvailable: String
    public let generalCameraOrLibraryTitle: String
    public let generalCameraBtn: String
    public let generalLibraryBtn: String
    public let generalEmail: String
    public let generalPhoneNumber: String
    public let generalTypeHere: String
    public let generalName: String
    public let generalPassword: String
    public let generalOldPassword: String
    public let generalRepeatPassword: String
    public let generalNext: String
    public let generalInvalidEmail: String
    public let generalInvalidPhoneNumber: String
    public let generalPasswordRequired: String
    public let generalCancel: String
    public let generalSearch: String
    public let generalCode: String
    public let generalPasswordNotValid: String
    public let generalPasswordsDoNotMatch: String
    public let generalErrorSharingQrCode: String
    public let generalQrCodeSavedSuccessfully: String
    public let generalQrCodeSaveFailed: String
    public let generalSave: String
    public let generalNo: String
    public let generalYes: String
    public let generalType: String
    public let generalStreet: String
    public let generalCity: String
    public let generalCountry: String
    public let generalNumber: String
    public let generalZipCode: String
    public let generalOther: String
    public let generalNameRequired: String
    public let generalStreetRequired: String
    public let generalCityRequired: String
    public let generalDoorNumberRequired: String
    public let generalZipCodeRequired: String
    public let generalZipCodeNotValid: String
    public let generalContractTypeFleet: String
    public let generalContractTypeUser: String
    public let generalTariff: String
    public let generalTin: String
    public let generalActivate: String
    public let generalCardNumber: String
    public let generalAddress: String
    public let generalFieldRequired: String
    public let generalTinNumberInvalid: String
    public let generalEdit: String
    public let generalRemove: String
    public let generalDelete: String
    public let generalNotes: String
    public let generalLicensePlate: String
    public let generalPrimary: String
    public let generalNetworks: String
    public let generalPayment: String
    public let generalDriver: String
    public let generalEvOwner: String
    public let generalCompany: String
    public let generalMyself: String
    public let generalDuration: String
    public let generalEnergySupplied: String
    public let generalInstantPower: String
    public let generalCost: String
    public let generalDurationPlaceholder: String
    public let generalEnergySuppliedPlaceholder: String
    public let generalInstantPowerPlaceholder: String
    public let generalCostPlaceholder: String
    public let generalTimeLeft: String
    public let generalBattery: String
    public let generalUnlockPlug: String
    public let generalEstimatedPriceInfo: String
    public let generalVatNotIncluded: String
    public let generalPriceOnEmptyHours: String
    public let generalPriceOnFullHours: String
    public let generalPriceOn: String
    public let generalEnergyBased: String
    public let generalTimeBased: String
    public let generalBooking: String
    public let generalCharging: String
    public let generalParking: String
    public let generalActivation: String
    public let generalOhNoTitle: String
    public let generalSomethingWentWrong: String
    public let generalSend: String
    public let generalUnlockCableSuccessMessage: String
    public let generalAdd: String
    public let generalOccupied: String
    public let generalFree: String
    public let generalOffline: String
    public let generalPublic: String
    public let generalRestrict: String
    public let generalPrivate: String
    public let generalAvailableImagesToTake: String
    public let generalLocation: String
    public let generalDefault: String
    public let generalAddImages: String
    public let generalConfirm: String
    public let generalCopied: String
    public let generalSent: String
    public let generalPlug: String
    public let generalPlugs: String
    public let generalOf: String
    public let generalPage: String
    public let generalNoEvs: String
    public let generalGoToMyEvs: String
    public let generalDownload: String
    // MARK: - OTHER KEYS PROPERTIES
    public let appNeedsToBeUpdated: String
    public let chargerCannotBeUsed: String
    public let locationServicesAlertTitle: String
    public let locationServicesAlertMessage: String
    public let locationsServicesAlertEnableButton: String
    public let libraryPermissionAlertTitle: String
    public let libraryPermissionAlertMessage: String
    public let libraryPermissionAlertEnableButton: String
    public let cameraPermissionAlertTitle: String
    public let cameraPermissionAlertMesage: String
    public let cameraPermissionAlertEnableButton: String
    public let contactsPermissionAlertTitle: String
    public let contactsPermissionAlertMessage: String
    public let contactsPermissionAlertEnableButton: String
    public let notificationsPermissionAlertTitle: String
    public let notificationsPermissionAlertMessage: String
    public let notificationsPermissionAlertEnableButton: String
    public let messageLimitAddObjects: String
    public let networkRoaming: String
    public let networkOthers: String
    // MARK: - SEARCH PAGE KEYS PROPERTIES
    public let searchLocations: String
    public let searchChargingStations: String
    public let searchRecent: String
    public let searchNoResultsFound: String
    public let searchAnUnexpectedErrorOccurred: String
    public let searchNoRecents: String
    // MARK: - FILTERS PAGE KEYS PROPERTIES
    public let filtersTitle: String
    public let filtersClearFiltersButton: String
    public let filtersAvailableStations: String
    public let filtersPrice: String
    public let filtersMin: String
    public let filtersPower: String
    public let filtersKwh: String
    public let filtersRating: String
    public let filtersMinimum: String
    public let filtersNetworks: String
    public let filtersOtherNetworks: String
    public let filtersEvioNetwork: String
    public let filtersTeslaNetwork: String
    public let filtersMyChargers: String
    public let filtersTypeOfConnector: String
    public let filtersVehicles: String
    public let filtersParkingType: String
    public let filtersApplyButton: String
    public let filtersInformationPrice: String
    public let filtersMaxPowerEvInfo: String
    public let filtersOnlyAvailable: String
    public let filtersOnlyOnline: String
    public let filtersOnlyPerKwh: String
    public let filtersOnlyPerMin: String
    public let filtersTariff: String
    public let filtersAvailability: String
    // MARK: - FAVOURITES KEYS PROPERTIES
    public let favouritesEmptyViewWithoutLoginSubTitleUnderline: String
    public let favouritesEmptyViewTitle: String
    public let favouritesEmptyViewSubTitle: String
    public let favouritesEmptyViewWithoutLoginSubTitle: String
    public let favouritesTitle: String
    // MARK: - CHARGING POINT PAGE KEYS PROPERTIES
    public let chargerDetailsNetworkPhone: String
    public let chargerDetailsNetworkEmail: String
    public let chargerDetailsPriceEstimative: String
    public let chargerDetailsPower: String
    public let chargerDetailsBookButton: String
    public let chargerDetailsCharge: String
    public let chargerDetailsDistance: String
    public let chargerDetailsNotificationCreated: String
    public let chargerDetailsTooFarFromTheCharger: String
    public let chargerDetailsContract: String
    public let chargerDetailsNoRFID: String
    public let chargerDetailsMyEv: String
    public let chargerDetailsAvailability: String
    public let chargerDetailsChargingPointInfo: String
    public let chargerDetailsChoosePlug: String
    public let chargerDetailsEstimateCost: String
    public let chargerDetailsKWh: String
    public let chargerDetailsParkingType: String
    public let chargerDetailsPointsInterestNearby: String
    public let chargerDetailsPrice: String
    public let chargerDetailsReportIssue: String
    public let chargerDetailsTime: String
    public let chargerDetailsVehicles: String
    public let chargerDetailsChargingPointNoInfo: String
    public let chargerDetailsNoDistance: String
    public let chargerDetailsNoPlugTariff: String
    public let chargerDetailsCustomCharge: String
    public let chargerDetailsNotifyMeLabel: String
    public let chargerDetailsChargeXMin: String
    public let chargerDetailsChargeXkWh: String
    public let chargerDetailsSpendOnlyXEuros: String
    public let chargerDetailsYouAlreadyHaveANotification: String
    public let chargerDetailsChargingScheduling: String
    public let chargerDetailsDatesCannotBeEqual: String
    public let chargerDetailsChargingTimeCannotBeLongerThan: String
    public let chargerDetailsStart: String
    public let chargerDetailsStop: String
    public let chargerDetailsSchedule: String
    public let chargerDetailsLowerTariffPeriod: String
    public let chargerDetailsGreenCharging: String
    public let chargerDetailsNetwork: String
    public let chargerDetailsOperator: String
    public let chargerDetailsChargerIdentifier: String
    public let chargerDetailsChargerManufacturer: String
    public let chargerDetailsChargersModel: String
    public let chargerDetailsChargerOccupiediOSPart1: String
    public let chargerDetailsChargerOccupiediOSPart2: String
    public let chargerDetailsChargerOccupiediOSBoldPart: String
    public let chargerDetailsCemeTariff: String
    public let chargerDetailsLimited: String
    public let chargerDetailsAlways: String
    public let chargerDetailsWrongBehaviorStation: String
    public let chargerDetailsTariff: String
    public let chargerPointFullDetailsThanksForTheImageMessage: String
    public let chargerPointFullDetailsStopDateShouldBeAfterStartDate: String
    public let chargerPointFullDetailsChargingTimeMinimumDuration: String
    public let chargerDetailsGoToPaymentMethods: String
    public let chargerDetailsGoToBillingProfile: String
    // MARK: - PLUG STATUS KEYS PROPERTIES
    public let plugStatusAvailable: String
    public let plugStatusBlocked: String
    public let plugStatusCharging: String
    public let plugStatusInoperative: String
    public let plugStatusOutOfOrder: String
    public let plugStatusPlanned: String
    public let plugStatusRemoved: String
    public let plugStatusBooked: String
    public let plugStatusUnknown: String
    public let plugStatusMobieOutOfOrderMessage: String
    // MARK: - ESTIMATED COST PAGE KEYS PROPERTIES
    public let estimatedCostInfoTeslaEViOS: String
    public let estimatedCostInfoEVIOEviOS: String
    public let estimatedCostMobieNoEviOS: String
    public let estimatedCostInfoMobiePart1iOs: String
    public let estimatedCostInfoMobiePart2iOs: String
    public let estimatedCostTextInfoTeslaiOS: String
    public let estimatedCostInfoTeslaWithEViOS: String
    public let estimatedCostEVIOHours: String
    public let estimatedCostEVIOMinutes: String
    public let estimatedCostSelectedPlug: String
    public let estimatedCostInfoWalletPrice: String
    public let estimatedCostEvioActivation: String
    public let estimatedCostEvioActivationValue: String
    public let estimatedCostTextInfoEvio: String
    public let estimatedCostOpcTariff: String
    public let estimatedCostCemeTariff: String
    public let estimatedCostActivation: String
    public let estimatedCostPerMinute: String
    public let estimatedCostPerKwH: String
    public let estimatedCostFees: String
    public let estimatedCostIec: String
    public let estimatedCostTar: String
    public let estimatedCostVat: String
    public let estimatedCostCeme: String
    public let estimatedCostOpc: String
    public let estimatedCostTotal: String
    public let estimatedCostChargingTime: String
    public let estimatedCostTotalPower: String
    public let estimatedCostBooking: String
    public let estimatedCostCharging: String
    public let estimatedCostParking: String
    public let estimatedCostParkingDuringCharging: String
    public let estimatedCostParkingAfterCharging: String
    // MARK: - AVAILABILITY KEYS PROPERTIES
    public let availabilityTo: String
    // MARK: - CONTRACTS KEYS PROPERTIES
    public let contractsTitle: String
    public let contractsRoamingNotActive: String
    public let contractsMyContracts: String
    public let contractsOtherContracts: String
    public let contractsSelectContract: String
    public let contractsContractNoValidForRoaming: String
    public let contractsContractNotValidForMobie: String
    public let contractsContractNoValidForMobieButCanBeUsedForAdHoc: String
    public let contractsContractNoActiveForEv: String
    public let contractsNoOtherContracts: String
    public let contractsNoContracts: String
    public let contractsNoAccessForEvioNetwork: String
    public let contractsVirtualCard: String
    public let contractsVirtualAndPhysicalCard: String
    public let contractsChargeVehicleOnNetwork: String
    public let contractsAccessToNetwork: String
    public let contractsTariffInfo: String
    public let contractsTariffInfoEvio: String
    public let contractsActivateCardButton: String
    public let contractsJoinButton: String
    public let contractsNoAccessToNetwork: String
    public let contractsAlreadyRequestedAccessToNetwork: String
    public let contractsAdHocAlertPart1: String
    public let contractsAdHocAlertPart2: String
    public let contractsAdHocAlertBoldPart: String
    public let contractsAdHocAlertNextButton: String
    public let contractsMessageInfoActivationOkGv: String
    public let contractsMobieTermAndCondGeneralConditions: String
    public let contractsMobieTermAndCondGeneralConditionsConditions1: String
    public let contractsMobieTermAndCondGeneralConditionsConditions2: String
    public let contractsMobieTermAndCondGeneralConditions2: String
    public let contractsMobieGeneralConditionsRequired: String
    public let contractsClientIdentification: String
    public let contractsCardActivatedSuccessfully: String
    public let contractsPaymentMethod: String
    // MARK: - EVS KEYS PROPERTIES
    public let evsSelectEvTitle: String
    public let evsMyEvs: String
    public let evsOtherEvs: String
    public let evsAddVehicle: String
    public let evsNoOtherEvsTitle: String
    public let evsNoOtherEvsSubTitle: String
    public let evsNoOtherEvsSubtitleNoLogin: String
    public let evsNewEv: String
    public let evsNewEvInfo: String
    public let evsBrand: String
    public let evsModel: String
    public let evsVersion: String
    public let evsChargerPower: String
    public let evsRange: String
    public let evsBatteryCapacity: String
    public let evsChargingTime: String
    public let evsInternalChargingPower: String
    public let evsFastChargingPower: String
    public let evsFastChargingTime: String
    public let evsVehiclePlugs: String
    public let evsCharging: String
    public let evsNotCharging: String
    public let evsLeaveGroupTitle: String
    public let evsLeaveGroupMessage: String
    public let evsDrivers: String
    public let evsCurrentPlafond: String
    public let evsMonthlyPlafond: String
    public let evsUsedPlafond: String
    public let evsPlafond: String
    public let evsCompany: String
    public let evsPlafondMovements: String
    public let evsNoPlafondMovements: String
    public let evsDuration: String
    public let evsMovement: String
    public let evsNetwork: String
    // MARK: - VALIDATION MESSAGE KEYS PROPERTIES
    public let validationMessageProceedNowBt: String
    public let validationMessageAdhocInfo2iOS: String
    public let validationMessageMessageInfoActivationOkGv: String
    public let validationMessageNotHaveContractRoamingNote: String
    public let validationMessageAdhocInfoNew: String
    public let validationMessageAdhocFooterNote: String
    public let validationMessageAdhocFooterNoteUnderline: String
    public let validationMessageAdhocFooterNoteGeneric: String
    public let validationMessageAdhocFooterNoteGenericUnderline: String
    public let validationMessageAdhocInfoGeneric: String
    public let validationMessageAdhocInfo2GenericAndroid: String
    public let validationMessageAdhocInfo2GenericBoldAndroid: String
    public let validationMessageAdhocInfoNewGeneric: String
    public let validationMessageAdhocInfoNewV2Generic: String

    // MARK: - REPORT ISSUE PAGE KEYS PROPERTIES
    public let reportIssueTitle: String
    public let reportIssueBtSend: String
    public let reportIssueSubtitle: String
    // MARK: - CREATE ACCOUNT PAGE KEYS PROPERTIES
    public let createAccountCreateAccount: String
    public let createAccountHaveAccount: String
    public let createAccountSignIn: String
    // MARK: - SIGNUP PAGE KEYS PROPERTIES
    public let signupTitle: String
    public let signUpPasswordDoesNotMeetRequirements: String
    public let signUpAtLeastNumberOfCharacters: String
    public let signUpAtLeastLowerCase: String
    public let signUpAtLeastUpperCase: String
    public let signUpAtLeastNumber: String
    public let signUpAtLeastSpecialCharacter: String
    public let signUpTermsAndConditionsMustBeAccepted: String
    public let signUpPasswordDoesNotContainInvalidSpecialCharacters: String
    public let signUpCreateApassword: String
    public let signUpEnterAPassword: String
    public let signUpTermAndCondIAgreeTerms: String
    public let signUpTermAndCondIAgreeTermsTermCond: String
    public let signUpTermAndCondIAgreeTermsPriPol: String
    public let signUpTermAndCondDetailsPassword: String
    public let signUpTermAndCondLicenseMarketing: String
    public let signUpLicenseServices: String
    public let signUpLicenseProducts: String
    public let signUpGoChargeSuccess: String
    public let signUpAcpCardNumber: String
    public let signUpAcpMemberNumber: String
    // MARK: - LOGIN PAGE KEYS PROPERTIES
    public let loginButtonTitle: String
    public let loginForgotPassword: String
    public let loginForgotPasswordBoldPart: String
    public let loginPhoneNumberRequired: String
    public let loginOpenEmailApp: String
    // MARK: - ACTIVATION PAGE KEYS PROPERTIES
    public let activationTitle: String
    public let activationSubTitle: String
    public let activationSubTitleEmail: String
    public let activationVerify: String
    public let activationResendCode: String
    public let activationResendCodeBoldPart: String
    // MARK: - RECOVER PASSWORD PAGE KEYS PROPERTIES
    public let recoverPasswordTitle: String
    public let recoverPasswordSubTitlePhone: String
    public let recoverPasswordSubTitleEmail: String
    // MARK: - MY ACCOUNT KEYS PROPERTIES
    public let myAccountTitle: String
    public let myAccountHome: String
    public let myAccountWork: String
    public let myAccountNoHome: String
    public let myAccountNoWork: String
    public let myAccountQrCodeTitle: String
    public let myAccountQrCodeSubtitle: String
    public let myAccountContracts: String
    public let myAccountCemeTarifs: String
    public let myAccountNotifications: String
    public let myAccountPrivacy: String
    public let myAccountTermsAndConditions: String
    public let myAccountLogout: String
    public let myAccountLogin: String
    // MARK: - EDIT ACCOUNT KEYS PROPERTIES
    public let editAccountTitle: String
    public let editAccountChangePhoneNumber: String
    public let editAccountChangeEmail: String
    public let editAccountAddNewAddress: String
    public let editAccountDeleteAccount: String
    public let editAccountDeleteAccountMessage: String
    public let editAccountProfileUpdatedSuccessfully: String
    // MARK: - CHANGE EMAIL / PHONE NUMBER KEYS PROPERTIES
    public let changeEmailTitle: String
    public let changeEmailPhoneNumberTitle: String
    public let changeEmailEmailIsTheSame: String
    public let changeEmailMobilePhoneIsTheSame: String
    // MARK: - CHANGE PASSWORD KEYS PROPERTIES
    public let changePasswordTitle: String
    // MARK: - ADD / EDIT REFERENCE PLACE KEYS PROPERTIES
    public let addReferencePlaceTitle: String
    public let addReferencePlaceEditTitle: String
    public let addReferencePlaceTapToSelectLocation: String
    // MARK: - SEARCH LOCATION KEYS PROPERTIES
    public let searchLocationTitle: String
    public let searchLocationSuggestions: String
    // MARK: - GLOSSARY KEYS PROPERTIES
    public let glossaryTitle: String
    public let glossaryGoCharge: String
    public let glossaryEvioNetwork: String
    public let glossaryOtherNetwork: String
    public let glossaryMyChargers: String
    public let glossaryMobieNetwork: String
    public let glossaryTeslaNetwork: String
    public let glossaryChargersGroup: String
    public let glossaryChargerFree: String
    public let glossaryChargerOccupied: String
    public let glossaryChargerOffline: String
    public let glossaryHyundai: String
    // MARK: - NOTIFICATIONS KEYS PROPERTIES
    public let notificationsTitle: String
    public let notificationsChargingPoint: String
    public let notificationsGeneral: String
    public let notificationsAccount: String
    public let notificationsPushNotifications: String
    // MARK: - SESSIONS KEYS PROPERTIES
    public let sessionsMySessionsTitle: String
    public let sessionsMyChargersSessionsTitle: String
    public let sessionsNoSessionsTitle: String
    public let sessionsNoSessionsMySessionsSubtitle: String
    public let sessionsNoSessionsSubtitleNoLogin: String
    public let sessionsNoSessionsMyChargerSessionsSubtitle: String
    public let sessionsNoBatteryInfo: String
    public let sessionsAreYouSureYouWantToStop: String
    public let sessionsTxtInfoMobieUpdates: String
    public let sessionsChargingPoint: String
    public let sessionsChargingPoints: String
    // MARK: - START AND STOP ANIMATION KEYS PROPERTIES
    public let loadingChargingStartTitle: String
    public let loadingChargingStartSubtitle: String
    public let loadingChargingStopTitle: String
    public let loadingChargingStoptSubtitle: String
    // MARK: - RATE SESSION VIEW KEYS PROPERTIES
    public let rateSessionTitle: String
    public let rateSessionSubtitle: String
    public let rateSessionComment: String
    public let rateSessionCommentPlaceholder: String
    // MARK: - SESSION SUMMARY VIEW KEYS PROPERTIES
    public let sessionSummaryTotalChargingTime: String
    public let sessionSummaryDate: String
    public let sessionSummaryStartTime: String
    public let sessionSummaryEndTime: String
    public let sessionSummaryInstantAveragePower: String
    public let sessionSummaryIec: String
    public let sessionSummaryTar: String
    public let sessionSummaryVat: String
    public let sessionSummaryTotal: String
    public let sessionSummaryMobieTitle: String
    public let sessionSummaryTime: String
    public let sessionSummaryEnergy: String
    public let sessionSummaryPlug: String
    public let sessionSummaryContract: String
    public let sessionSummaryCo2Emitted: String
    public let sessionSummaryCharging: String
    public let sessionSummaryOpc: String
    public let sessionSummaryCeme: String
    public let sessionSummaryFees: String
    public let sessionSummaryDownloadInvoice: String
    public let sessionSummaryEstimatedPrice: String
    public let sessionSummaryRateThisSession: String
    public let sessionSummaryParking: String
    public let sessionSummaryRoamingTitle: String
    public let sessionSummaryEmsp: String
    public let sessionSummaryCdrInfoText: String
    public let sessionSummaryPowerKw: String
    public let sessionSummaryBattery: String
    public let sessionSummaryEnergyKwh: String
    public let sessionSummaryChargingTime: String
    public let sessionSummaryChargingPrice: String
    public let sessionSummaryActivationFee: String
    public let sessionSummaryCostDuringCharge: String
    public let sessionSummaryDuration: String
    public let sessionSummaryParkingPrice: String
    public let sessionSummaryParkingDuringCharging: String
    public let sessionSummaryBookingPrice: String
    // MARK: - START CHARGING BY QR CODE VIEW KEYS PROPERTIES
    public let chargerQrCodeContract: String
    public let chargerQrCodeEv: String
    public let chargerQrCodeTitle: String
    public let chargerQrCodeStart: String
    public let chargerQrCodeSelectContract: String
    public let chargerQrCodeSelectEv: String
    public let chargerQrCodeSelectContractFirst: String
    public let chargerQrCodeMainTitle: String
    public let chargerQrCodeMainSubtitle: String
    public let chargerQrCodeNoCamera: String
    public let chargerQrCodeOrInsert: String
    public let chargerQrCodeIdNumber: String
    public let chargerQrCodeInvalidQrCode: String
    public let chargerQrCodeIdNumberTitle: String
    public let chargerQrCodeIdNumberPlaceholder: String
    // MARK: - STOPPED SESSION BY REASON VIEW KEYS PROPERTIES
    public let stoppedSessionByReasonTitle: String
    public let stoppedSessionByReasonSubtitle: String
    // MARK: - MY CHARGERS VIEW KEYS PROPERTIES
    public let myChargersTabTitle: String
    public let myChargersChargersTabTitle: String
    public let myChargersAddChargingPlaceTitle: String
    public let myChargersChargingPlaceName: String
    public let myChargersChargingPlaceNamePlaceholder: String
    public let myChargersNoChargersTitle: String
    public let myChargersNoChargersSubtitle: String
    public let myChargersNoChargersMyChargersSubtitle: String
    public let myChargersNoChargersNoLoginSubtitle: String
    public let myChargersNoChargersMyChargersNoLoginSubtitle: String
    public let myChargersDeleteChargerTitle: String
    public let myChargersDeleteChargerSubtitle: String
    public let myChargersAddChargerAlertTitle: String
    public let myChargersAddChargerAlertSubtitle: String
    public let myChargersAddNewCharger: String
    // MARK: - PLUG DETAILS VIEW PROPERTIES
    public let plugDetailsConnectorType: String
    public let plugDetailsStatus: String
    public let plugDetailsCurrent: String
    public let plugDetailsVoltage: String
    public let plugDetailsPower: String
    public let plugDetailsAccess: String
    public let plugDetailsEditPlugTitle: String
    public let plugDetailsChargingInformation: String
    public let plugDetailsCurrentType: String
    public let plugDetailsActivate: String
    public let plugDetailsAc1Phase: String
    public let plugDetailsAc3Phase: String
    // MARK: - WALLET VIEW PROPERTIES
    public let walletTitle: String
    public let walletBalance: String
    public let walletInfoAboutWallet: String
    public let walletPaymentMethods: String
    public let walletWalletHistory: String
    public let walletFinacialTransactions: String
    public let walletBillingProfile: String
    public let walletAutoRechargeWallet: String
    public let walletAutoRechargeWalletInfoText: String
    public let walletAutoRechargeSuccessMessage: String
    // MARK: - WALLET TOP UP VIEW PROPERTIES
    public let walletTopUpTitle: String
    public let walletTopUpOtherAmount: String
    public let walletTopUpMinimumAmount: String
    public let walletTopUpMbWay: String
    public let walletTopUpMultibancoReference: String
    public let walletTopUpCreditCardDeposit: String
    public let walletTopUpCreditCard: String
    public let walletTopUpNewCreditCard: String
    public let walletTopUpExistingCreditCard: String
    public let walletTopUpAddBalanceSuccess: String
    // MARK: - MB REFERENCE VIEW PROPERTIES
    public let mbReferenceEntity: String
    public let mbReferenceReference: String
    public let mbReferenceAmount: String
    public let mbReferenceSendReferenceBySms: String
    public let mbReferenceInfoAboutReference: String
    public let mbReferenceDidNotReceive: String
    public let mbReferenceTryAgain: String
    // MARK: - TRANSACTIONS VIEW PROPERTIES
    public let transactionsTitle: String
    public let transactionsNoTransactions: String
    public let transactionsDeposit: String
    public let transactionsPayment: String
    public let transactionsCard: String
    public let transactionsMBRef: String
    public let transactionsMBRefPSNet: String
    public let transactionsPSNet: String
    public let transactionsMBWay: String
    public let transactionsWallet: String
    public let transactionsOther: String
    public let transactionsFinancialTitle: String
    // MARK: - BILLING PROFILE VIEW PROPERTIES
    public let billingProfileTitle: String
    public let billingProfileBillingPeriod: String
    // MARK: - EDIT BILLING PROFILE VIEW PROPERTIES
    public let editBillingProfileFinalConsumer: String
    public let editBillingProfilePeriod: String
    // MARK: - PAYMENT METHODS VIEW PROPERTIES
    public let paymentMethodsTitle: String
    public let paymentMethodsCreditCardInfoText: String
    public let paymentMethodsAddNew: String
    public let paymentMethodsAddNewPaymentMethod: String
    public let paymentMethodsAskUserToDelete: String
    public let paymentMethodsNoPaymentMethods: String
    public let paymentMethodsCantDeleteCardiOS: String
    public let paymentMethodsExpiryDate: String
    public let paymentMethodsCvc: String
    public let paymentMethodsAddCard: String
    public let paymentMethodsCardNumberNoValid: String
    public let paymentMethodsExpireDateNotValid: String
    public let paymentMethodsSecurityCodeNotValid: String
    // MARK: - SUPPORT VIEW PROPERTIES
    public let supportTitle: String
    public let supportMessage: String
    public let supportSearchTopics: String
    public let supportDriver: String
    public let supportOwner: String
    public let supportFaqs: String
    public let supportTalkWithUs: String
    public let supportSendUsAnEmail: String
    public let supportKnowTheApp: String
    public let supportReviewWalkthroughs: String
    public let supportRunOnboarding: String
    public let supportSubject: String
    public let supportDriverSupport: String
    public let supportOwnerSupport: String
    public let supportSearchNotSearchedYet: String
    public let supportSearchNoResultsFoundFor: String
    public let supportSearchTypeSomethingToSearch: String
    public let supportAddPictures: String
    // MARK: - INSIGHTS VIEW PROPERTIES
    public let insightsInsightsTabTitle: String
    public let insightsHistoryTabTitle: String
    public let insightsLastMonth: String
    public let insightsLastYear: String
    public let insightsLastSemester: String
    public let insightsNoHistory: String
    public let insightsNoInsights: String
    public let insightsNoInsightsNoLogin: String
    public let insightsNoHistoryNoLogin: String
    public let insightsMyVehicles: String
    public let insightsTotalChargingTime: String
    public let insightsTotalSessions: String
    public let insightsTotalCost: String
    public let insightsTotalEnergy: String
    public let insightsCo2Emitted: String
    public let insightsMyChargingStations: String
    public let insightsIncome: String
    public let insightsMyRating: String
    public let insightsChargingTimePerSession: String
    public let insightsEnergyConsumptionPerSession: String
    public let insightsFavoriteCharger: String
    public let insightsMostUsedPlug: String
    // MARK: - BLOCKED VIEW PROPERTIES
    public let blockedViewUpdateBt: String
    public let blockedViewTextInfo: String
    public let blockedViewPaymentError: String
    // MARK: - COMPARATOR VIEW PROPERTIES
    public let comparatorTitle: String
    public let comparatorChargingPoint: String
    public let comparatorPlugPower: String
    public let comparatorChargingDuration: String
    public let comparatorTotalCost: String
    public let comparatorAverageCost: String
    public let comparatorMyChargers: String
    public let comparatorOtherChargers: String
    public let comparatorFavourites: String
    public let comparatorChooseChargingPoint: String
    public let comparatorCompareButton: String
    public let comparatorChoosePlugToCompare: String
    public let comparatorPlugAlreadyBeingCompared: String
    // MARK: - HISTORY VIEW PROPERTIES
    public let historyPaymentBillingInfoPaid: String
    public let historyPaymentBillingInfoPaidAndBilled: String
    public let historyPaymentBillingInfoToProcess: String
    public let historyPaymentBillingInfoNotApplicable: String
    public let historyPaymentBillingInfoFailedBilling: String
    public let historyPaymentBillingInfoFailedPayment: String
    public let historyPaymentBillingInfoBilledAndNotPaid: String
    public let historyDownloadMessage: String
    public let historyPaymentStatus: String
    public let historyStartDate: String
    public let historyStopDate: String
    public let historyDonwloadSuccess: String
    // MARK: - INFO TARIFF MOBIE PROPERTIES
    public let infoTariffMobiePerMinuteMinMaxDuration: String
    public let infoTariffMobiePerMinuteMinMaxKwh: String
    public let infoTariffMobiePerKwhStartEndTime: String
    public let infoTariffMobiePerKwhStartEndDate: String
    public let infoTariffMobiePerKwhMaxMinKwh: String
    public let infoTariffMobiePerKwhMinMaxDuration: String
    public let infoTariffMobiePerKwhDayOfWeek: String
    public let infoTariffMobieSimulatePercent: String
    public let infoTariffMobieSimulateTime: String
    public let infoTariffMobieStart: String
    public let infoTariffMobieReturn: String
    public let infoTariffMobieSimulationByTime: String
    public let infoTariffMobieDay: String
    public let infoTariffMobieHour: String
    public let infoTariffMobieSimulationByPercentage: String
    public let infoTariffMobieSimulationPrice: String
    public let infoTariffMobieDurationRestriction: String
    public let infoTariffMobieDayRestriction: String
    public let infoTariffMobieTimeRestriction: String
    public let infoTariffMobieDateRestriction: String
    public let infoTariffMobieEnergyRestriction: String
    public let infoTariffMobieCurrentRestriction: String
    public let infoTariffMobiePowerRestriction: String
    public let infoTariffMobieDefaultRestriction: String
    public let infoTariffMobieBetween: String
    public let infoTariffMobieAfter: String
    public let infoTariffMobieBefore: String
    public let infoTariffMobieAnd: String
    // MARK: - CANCEL CARD VIEW PROPERTIES
    public let cancelCardCancelCard: String
    public let cancelCardDescription: String
    public let cancelCardDescriptionHint: String
    public let cancelCardReason: String
    public let cancelCardLost: String
    public let cancelCardTheft: String
    public let cancelCardOther: String
    public let cancelCardWantReplacement: String
    public let cancelCardSuccessCanceledMessage: String
    
    // MARK: - CODING KEYS
    private enum CodingKeys: String, CodingKey {
        // MARK: - GENERAL CODING KEYS PROPERTIES
        case generalNoInternetConnection = "general_noInternetConnection"
        case generalNoInternetConnectionMessage = "general_noInternetConnectionMessage"
        case generalOk = "general_ok"
        case generalAvailableSoon = "general_availableSoon"
        case generalMore = "general_more"
        case generalLess = "general_less"
        case generalPlusVat = "general_plusVat"
        case generalUnidentifiedEv = "general_unidentifiedEv"
        case generalInfoNotAvailable = "general_infoNotAvailable"
        case generalCameraOrLibraryTitle = "general_cameraOrLibraryTitle"
        case generalCameraBtn = "general_cameraBtn"
        case generalLibraryBtn = "general_libraryBtn"
        case generalEmail = "general_email"
        case generalPhoneNumber = "general_phoneNumber"
        case generalTypeHere = "general_typeHere"
        case generalName = "general_name"
        case generalPassword = "general_password"
        case generalOldPassword = "general_oldPassword"
        case generalRepeatPassword = "general_repeatPassword"
        case generalNext = "general_next"
        case generalInvalidEmail = "general_invalidEmail"
        case generalInvalidPhoneNumber = "general_invalidPhoneNumber"
        case generalCancel = "general_cancel"
        case generalSearch = "general_search"
        case generalPasswordRequired = "general_passwordRequired"
        case generalCode = "general_code"
        case generalPasswordNotValid = "general_passwordNotValid"
        case generalPasswordsDoNotMatch = "general_passwordsDoNotMatch"
        case generalGenericErrorMessage = "general_genericErrorMessage"
        case generalErrorSharingQrCode = "general_errorSharingQrCode"
        case generalQrCodeSavedSuccessfully = "general_qrCodeSavedSuccessfully"
        case generalQrCodeSaveFailed = "general_qrCodeSaveFailed"
        case generalSave = "general_save"
        case generalNo = "general_no"
        case generalYes = "general_yes"
        case generalType = "general_type"
        case generalStreet = "general_street"
        case generalCity = "general_city"
        case generalCountry = "general_country"
        case generalNumber = "general_number"
        case generalZipCode = "general_zipCode"
        case generalOther = "general_other"
        case generalNameRequired = "general_nameRequired"
        case generalStreetRequired = "general_streetRequired"
        case generalCityRequired = "general_cityRequired"
        case generalDoorNumberRequired = "general_doorNumberRequired"
        case generalZipCodeRequired = "general_zipCodeRequired"
        case generalZipCodeNotValid = "general_zipCodeNotValid"
        case generalContractTypeFleet = "general_contractTypeFleet"
        case generalContractTypeUser = "general_contractTypeUser"
        case generalTariff = "general_tariff"
        case generalTin = "general_tin"
        case generalActivate = "general_activate"
        case generalCardNumber = "general_cardNumber"
        case generalAddress = "general_address"
        case generalFieldRequired = "general_fieldRequired"
        case generalTinNumberInvalid = "general_tinNumberInvalid"
        case generalEdit = "general_edit"
        case generalRemove = "general_remove"
        case generalDelete = "general_delete"
        case generalNotes = "general_notes"
        case generalLicensePlate = "general_licensePlate"
        case generalPrimary = "general_primary"
        case generalNetworks = "general_networks"
        case generalPayment = "general_payment"
        case generalDriver = "general_driver"
        case generalEvOwner = "general_evOwner"
        case generalCompany = "general_company"
        case generalMyself = "general_myself"
        case generalDuration = "general_duration"
        case generalEnergySupplied = "general_energySupplied"
        case generalInstantPower = "general_instantPower"
        case generalCost = "general_cost"
        case generalDurationPlaceholder = "general_durationPlaceholder"
        case generalEnergySuppliedPlaceholder = "general_energySuppliedPlaceholder"
        case generalInstantPowerPlaceholder = "general_instantPowerPlaceholder"
        case generalCostPlaceholder = "general_costPlaceholder"
        case generalTimeLeft = "general_timeLeft"
        case generalBattery = "general_battery"
        case generalUnlockPlug = "general_unlockPlug"
        case generalEstimatedPriceInfo = "general_estimatedPriceMobieInfo"
        case generalVatNotIncluded = "general_vatNotIncluded"
        case generalPriceOnEmptyHours = "general_priceOnEmptyHours"
        case generalPriceOnFullHours = "general_priceOnFullHours"
        case generalPriceOn = "general_priceOn"
        case generalEnergyBased = "general_energyBased"
        case generalTimeBased = "general_timeBased"
        case generalBooking = "general_booking"
        case generalCharging = "general_charging"
        case generalParking = "general_parking"
        case generalActivation = "general_activation"
        case generalOhNoTitle = "general_ohNoTitle"
        case generalSomethingWentWrong = "general_somethingWentWrong"
        case generalSend = "general_send"
        case generalUnlockCableSuccessMessage = "general_unlockCableSuccessMessage"
        case generalAdd = "general_add"
        case generalOccupied = "general_occupied"
        case generalFree = "general_free"
        case generalOffline = "general_offline"
        case generalPublic = "general_public"
        case generalRestrict = "general_restrict"
        case generalPrivate = "general_private"
        case generalAvailableImagesToTake = "general_availableImagesToTake"
        case generalLocation = "general_location"
        case generalDefault = "general_default"
        case generalAddImages = "general_addImages"
        case generalConfirm = "general_confirm"
        case generalCopied = "general_copied"
        case generalSent = "general_sent"
        case generalPlug = "general_plug"
        case generalPlugs = "general_plugs"
        case generalOf = "general_of"
        case generalPage = "general_page"
        case generalNoEvs = "general_noEvs"
        case generalGoToMyEvs = "general_goToMyEvs"
        case generalDownload = "general_download"
        // MARK: - OTHER CODING KEYS PROPERTIES
        case appNeedsToBeUpdated = "server_need_update_app"
        case chargerCannotBeUsed = "server_charger_not_available"
        case locationServicesAlertTitle = "locationServicesAlert_title"
        case locationServicesAlertMessage = "locationServicesAlert_message"
        case locationsServicesAlertEnableButton = "locationsServicesAlert_enableButton"
        case libraryPermissionAlertTitle = "libraryPermissionAlert_title"
        case libraryPermissionAlertMessage = "libraryPermissionAlert_message"
        case libraryPermissionAlertEnableButton = "libraryPermissionAlert_enableButton"
        case cameraPermissionAlertTitle = "cameraPermissionAlert_title"
        case cameraPermissionAlertMesage = "cameraPermissionAlert_mesage"
        case cameraPermissionAlertEnableButton = "cameraPermissionAlert_enableButton"
        case contactsPermissionAlertTitle = "contactsPermissionAlert_title"
        case contactsPermissionAlertMessage = "contactsPermissionAlert_message"
        case contactsPermissionAlertEnableButton = "contactsPermissionAlert_enableButton"
        case notificationsPermissionAlertTitle = "notificationsPermissionAlert_title"
        case notificationsPermissionAlertMessage = "notificationsPermissionAlert_message"
        case notificationsPermissionAlertEnableButton = "notificationsPermissionAlert_enableButton"
        case messageLimitAddObjects = "messageLimit_addObjects"
        case networkRoaming = "network_roaming"
        case networkOthers = "network_others"
        // MARK: - SEARCH PAGE CODING KEYS PROPERTIES
        case searchLocations = "search_locations"
        case searchChargingStations = "search_chargingStations"
        case searchRecent = "search_recent"
        case searchNoResultsFound = "search_noResultsFound"
        case searchAnUnexpectedErrorOccurred = "search_anUnexpectedErrorOccurred"
        case searchNoRecents = "search_noRecents"
        // MARK: - FILTERS PAGE CODING KEYS PROPERTIES
        case filtersTitle = "filters_title"
        case filtersClearFiltersButton = "filters_clearFiltersButton"
        case filtersAvailableStations = "filters_availableStations"
        case filtersPrice = "filters_price"
        case filtersMin = "filters_min"
        case filtersPower = "filters_power"
        case filtersKwh = "filters_kwh"
        case filtersRating = "filters_rating"
        case filtersMinimum = "filters_minimum"
        case filtersNetworks = "filters_networks"
        case filtersOtherNetworks = "filters_otherNetworks"
        case filtersEvioNetwork = "filters_evioNetwork"
        case filtersTeslaNetwork = "filters_teslaNetwork"
        case filtersMyChargers = "filters_myChargers"
        case filtersTypeOfConnector = "filters_typeOfConnector"
        case filtersVehicles = "filters_vehicles"
        case filtersParkingType = "filters_parkingType"
        case filtersApplyButton = "filters_applyButton"
        case filtersInformationPrice = "filters_informationPrice"
        case filtersMaxPowerEvInfo = "filters_maxPowerEvInfo"
        case filtersOnlyAvailable = "filters_onlyAvailable"
        case filtersOnlyOnline = "filters_onlyOnline"
        case filtersOnlyPerKwh = "filters_onlyPerKwh"
        case filtersOnlyPerMin = "filters_onlyPerMin"
        case filtersTariff = "filters_tariff"
        case filtersAvailability = "filters_availability"
        // MARK: - FAVOURITES PAGE CODING KEYS PROPERTIES
        case favouritesEmptyViewWithoutLoginSubTitleUnderline = "favourites_emptyViewWithoutLoginSubTitle_underline"
        case favouritesEmptyViewTitle = "favourites_emptyViewTitle"
        case favouritesEmptyViewSubTitle = "favourites_emptyViewSubTitle"
        case favouritesEmptyViewWithoutLoginSubTitle = "favourites_emptyViewWithoutLoginSubTitle"
        case favouritesTitle = "favourites_title"
        // MARK: - CHARGING POINT PAGE CODING KEYS PROPERTIES
        case chargerDetailsNetworkPhone = "chargerDetails_networkPhone"
        case chargerDetailsNetworkEmail = "chargerDetails_networkEmail"
        case chargerDetailsPriceEstimative = "chargerDetails_priceEstimative"
        case chargerDetailsPower = "chargerDetails_power"
        case chargerDetailsBookButton = "chargerDetails_bookButton"
        case chargerDetailsCharge = "chargerDetails_charge"
        case chargerDetailsDistance = "chargerDetails_distance"
        case chargerDetailsNotificationCreated = "chargerDetails_notificationCreated"
        case chargerDetailsTooFarFromTheCharger = "chargerDetails_tooFarFromTheCharger"
        case chargerDetailsContract = "chargerDetails_contract"
        case chargerDetailsNoRFID = "chargerDetails_noRFID"
        case chargerDetailsMyEv = "chargerDetails_myEv"
        case chargerDetailsAvailability = "chargerDetails_availability"
        case chargerDetailsChargingPointInfo = "chargerDetails_chargingPointInfo"
        case chargerDetailsChoosePlug = "chargerDetails_choosePlug"
        case chargerDetailsEstimateCost = "chargerDetails_estimateCost"
        case chargerDetailsKWh = "chargerDetails_kWh"
        case chargerDetailsParkingType = "chargerDetails_parkingType"
        case chargerDetailsPointsInterestNearby = "chargerDetails_pointsInterestNearby"
        case chargerDetailsPrice = "chargerDetails_price"
        case chargerDetailsReportIssue = "chargerDetails_reportIssue"
        case chargerDetailsTime = "chargerDetails_time"
        case chargerDetailsVehicles = "chargerDetails_vehicles"
        case chargerDetailsChargingPointNoInfo = "chargerDetails_chargingPointNoInfo"
        case chargerDetailsNoDistance = "chargerDetails_noDistance"
        case chargerDetailsNoPlugTariff = "chargerDetails_noPlugTariff"
        case chargerDetailsCustomCharge = "chargerDetails_customCharge"
        case chargerDetailsNotifyMeLabel = "chargerDetails_notifyMeLabel"
        case chargerDetailsChargeXMin = "chargerDetails_chargeXMin"
        case chargerDetailsChargeXkWh = "chargerDetails_chargeXkWh"
        case chargerDetailsSpendOnlyXEuros = "chargerDetails_spendOnlyXEuros"
        case chargerDetailsYouAlreadyHaveANotification = "chargerDetails_youAlreadyHaveANotification"
        case chargerDetailsChargingScheduling = "chargerDetails_chargingScheduling"
        case chargerDetailsDatesCannotBeEqual = "chargerDetails_datesCannotBeEqual"
        case chargerDetailsChargingTimeCannotBeLongerThan = "chargerDetails_chargingTimeCannotBeLongerThan"
        case chargerDetailsStart = "chargerDetails_start"
        case chargerDetailsStop = "chargerDetails_stop"
        case chargerDetailsSchedule = "chargerDetails_schedule"
        case chargerDetailsLowerTariffPeriod = "chargerDetails_lowerTariffPeriod"
        case chargerDetailsGreenCharging = "chargerDetails_greenCharging"
        case chargerDetailsNetwork = "chargerDetails_network"
        case chargerDetailsOperator = "chargerDetails_operator"
        case chargerDetailsChargerIdentifier = "chargerDetails_chargerIdentifier"
        case chargerDetailsChargerManufacturer = "chargerDetails_chargerManufacturer"
        case chargerDetailsChargersModel = "chargerDetails_chargersModel"
        case chargerDetailsChargerOccupiediOSPart1 = "chargerDetails_chargerOccupiediOSPart1"
        case chargerDetailsChargerOccupiediOSPart2 = "chargerDetails_chargerOccupiediOSPart2"
        case chargerDetailsChargerOccupiediOSBoldPart = "chargerDetails_chargerOccupiediOSBoldPart"
        case chargerDetailsCemeTariff = "chargerDetails_cemeTariff"
        case chargerDetailsLimited = "chargerDetails_limited"
        case chargerDetailsAlways = "chargerDetails_always"
        case chargerDetailsWrongBehaviorStation = "chargerDetails_wrongBehaviorStation"
        case chargerDetailsTariff = "chargerDetails_tariff"
        case chargerPointFullDetailsThanksForTheImageMessage = "chargerPointFullDetails_thanksForTheImageMessage"
        case chargerPointFullDetailsStopDateShouldBeAfterStartDate = "chargerPointFullDetails_stopDateShouldBeAfterStartDate"
        case chargerPointFullDetailsChargingTimeMinimumDuration = "chargerPointFullDetails_chargingTimeMinimumDuration"
        case chargerDetailsGoToPaymentMethods = "chargerDetails_goToPaymentMethods"
        case chargerDetailsGoToBillingProfile = "chargerDetails_goToBillingProfile"
        // MARK: - PLUG STATUS CODING KEYS PROPERTIES
        case plugStatusAvailable = "plugStatus_available"
        case plugStatusBlocked = "plugStatus_blocked"
        case plugStatusCharging = "plugStatus_charging"
        case plugStatusInoperative = "plugStatus_inoperative"
        case plugStatusOutOfOrder = "plugStatus_outOfOrder"
        case plugStatusPlanned = "plugStatus_planned"
        case plugStatusRemoved = "plugStatus_removed"
        case plugStatusBooked = "plugStatus_booked"
        case plugStatusUnknown = "plugStatus_unknown"
        case plugStatusMobieOutOfOrderMessage = "plugStatus_mobieOutOfOrderMessage"
        // MARK: - ESTIMATED COST PAGE CODING KEYS PROPERTIES
        case estimatedCostInfoTeslaEViOS = "estimatedCost_infoTeslaEViOS"
        case estimatedCostInfoEVIOEviOS = "estimatedCost_infoEVIOEviOS"
        case estimatedCostMobieNoEviOS = "estimatedCost_mobieNoEviOS"
        case estimatedCostInfoMobiePart1iOs = "estimatedCost_infoMobiePart1iOs"
        case estimatedCostInfoMobiePart2iOs = "estimatedCost_infoMobiePart2iOs"
        case estimatedCostTextInfoTeslaiOS = "estimatedCost_textInfoTeslaiOS"
        case estimatedCostInfoTeslaWithEViOS = "estimatedCost_infoTeslaWithEViOS"
        case estimatedCostEVIOHours = "estimatedCost_EVIOHours"
        case estimatedCostEVIOMinutes = "estimatedCost_EVIOMinutes"
        case estimatedCostSelectedPlug = "estimatedCost_selectedPlug"
        case estimatedCostInfoWalletPrice = "estimatedCost_infoWalletPrice"
        case estimatedCostEvioActivation = "estimatedCost_evioActivation"
        case estimatedCostEvioActivationValue = "estimatedCost_evioActivationValue"
        case estimatedCostTextInfoEvio = "estimatedCost_textInfoEvio"
        case estimatedCostOpcTariff = "estimatedCost_opcTariff"
        case estimatedCostCemeTariff = "estimatedCost_cemeTariff"
        case estimatedCostActivation = "estimatedCost_activation"
        case estimatedCostPerMinute = "estimatedCost_perMinute"
        case estimatedCostPerKwH = "estimatedCost_perKwH"
        case estimatedCostFees = "estimatedCost_fees"
        case estimatedCostIec = "estimatedCost_iec"
        case estimatedCostTar = "estimatedCost_tar"
        case estimatedCostVat = "estimatedCost_vat"
        case estimatedCostCeme = "estimatedCost_ceme"
        case estimatedCostOpc = "estimatedCost_opc"
        case estimatedCostTotal = "estimatedCost_total"
        case estimatedCostChargingTime = "estimatedCost_chargingTime"
        case estimatedCostTotalPower = "estimatedCost_totalPower"
        case estimatedCostBooking = "estimatedCost_booking"
        case estimatedCostCharging = "estimatedCost_charging"
        case estimatedCostParking = "estimatedCost_parking"
        case estimatedCostParkingDuringCharging = "estimatedCost_parking_during_charging"
        case estimatedCostParkingAfterCharging = "estimatedCost_parking_after_charging"
        // MARK: - AVALABILITY CODING KEYS PROPERTIES
        case availabilityTo = "availability_to"
        // MARK: - CONTRACTS PAGE CODING KEYS PROPERTIES
        case contractsTitle = "contracts_newTitle"
        case contractsRoamingNotActive = "contracts_roamingNotActive"
        case contractsMyContracts = "contracts_myContracts"
        case contractsOtherContracts = "contracts_otherContracts"
        case contractsSelectContract = "contracts_selectContract"
        case contractsContractNoValidForRoaming = "contracts_contractNoValidForRoaming"
        case contractsContractNotValidForMobie = "contracts_contractNotValidForMobie"
        case contractsContractNoValidForMobieButCanBeUsedForAdHoc = "contracts_contractNoValidForMobieButCanBeUsedForAdHoc"
        case contractsContractNoActiveForEv = "contracts_contractNoActiveForEv"
        case contractsNoOtherContracts = "contracts_noOtherContracts"
        case contractsNoContracts = "contracts_noContracts"
        case contractsNoAccessForEvioNetwork = "contracts_noAccessForEvioNetwork"
        case contractsVirtualCard = "contracts_virtualCard"
        case contractsVirtualAndPhysicalCard = "contracts_virtualAndPhysicalCard"
        case contractsChargeVehicleOnNetwork = "contracts_chargeVehicleOnNetwork"
        case contractsAccessToNetwork = "contracts_accessToNetwork"
        case contractsTariffInfo = "contracts_tariffInfo"
        case contractsTariffInfoEvio = "contracts_tariffInfoEvio"
        case contractsActivateCardButton = "contracts_activateCardButton"
        case contractsJoinButton = "contracts_joinButton"
        case contractsNoAccessToNetwork = "contracts_noAccessToNetwork"
        case contractsAlreadyRequestedAccessToNetwork = "contracts_alreadyRequestedAccessToNetwork"
        case contractsAdHocAlertPart1 = "contracts_adHocAlertPart1"
        case contractsAdHocAlertPart2 = "contracts_adHocAlertPart2"
        case contractsAdHocAlertBoldPart = "contracts_adHocAlertBoldPart"
        case contractsAdHocAlertNextButton = "contracts_adHocAlertNextButton"
        case contractsMessageInfoActivationOkGv = "contracts_messageInfoActivationOkGv"
        case contractsMobieTermAndCondGeneralConditions = "contracts_mobieTermAndCond_generalConditions"
        case contractsMobieTermAndCondGeneralConditionsConditions1 = "contracts_mobieTermAndCond_generalConditions_Conditions1"
        case contractsMobieTermAndCondGeneralConditionsConditions2 = "contracts_mobieTermAndCond_generalConditions_Conditions2"
        case contractsMobieTermAndCondGeneralConditions2 = "contracts_mobieTermAndCond_generalConditions2"
        case contractsMobieGeneralConditionsRequired = "contracts_mobieGeneralConditionsRequired"
        case contractsClientIdentification = "contracts_clientIdentification"
        case contractsCardActivatedSuccessfully = "contracts_cardActivatedSuccessfully"
        case contractsPaymentMethod = "contracts_paymentMethod"
        // MARK: - EVS PAGE CODING KEYS PROPERTIES
        case evsSelectEvTitle = "evs_selectEvTitle"
        case evsMyEvs = "evs_myEvs"
        case evsOtherEvs = "evs_otherEvs"
        case evsAddVehicle = "evs_addVehicle"
        case evsNoOtherEvsTitle = "evs_noOtherEvsTitle"
        case evsNoOtherEvsSubTitle = "evs_noOtherEvsSubTitle"
        case evsNoOtherEvsSubtitleNoLogin = "evs_noOtherEvsSubtitleNoLogin"
        case evsNewEv = "evs_newEv"
        case evsNewEvInfo = "evs_newEvInfo"
        case evsBrand = "evs_brand"
        case evsModel = "evs_model"
        case evsVersion = "evs_version"
        case evsChargerPower = "evs_chargerPower"
        case evsRange = "evs_range"
        case evsBatteryCapacity = "evs_batteryCapacity"
        case evsChargingTime = "evs_chargingTime"
        case evsInternalChargingPower = "evs_internalChargingPower"
        case evsFastChargingPower = "evs_fastChargingPower"
        case evsFastChargingTime = "evs_fastChargingTime"
        case evsVehiclePlugs = "evs_vehiclePlugs"
        case evsCharging = "evs_charging"
        case evsNotCharging = "evs_notCharging"
        case evsLeaveGroupTitle = "evs_leaveGroupTitle"
        case evsLeaveGroupMessage = "evs_leaveGroupMessage"
        case evsDrivers = "evs_drivers"
        case evsCurrentPlafond = "evs_currentPlafond"
        case evsMonthlyPlafond = "evs_monthlyPlafond"
        case evsUsedPlafond = "evs_usedPlafond"
        case evsPlafond = "evs_plafond"
        case evsCompany = "evs_company"
        case evsPlafondMovements = "evs_plafondMovements"
        case evsNoPlafondMovements = "evs_noPlafondMovements"
        case evsDuration = "evs_duration"
        case evsMovement = "evs_movement"
        case evsNetwork = "evs_network"
        // MARK: - VALIDATION MESSAGE CODING KEYS PROPERTIES
        case validationMessageProceedNowBt = "validationMessage_proceedNowBt"
        case validationMessageAdhocInfo2iOS = "validationMessage_adhocInfo2iOS"
        case validationMessageMessageInfoActivationOkGv = "validationMessage_messageInfoActivationOkGv"
        case validationMessageNotHaveContractRoamingNote = "validationMessage_notHaveContractRoamingNote"
        case validationMessageAdhocInfoNew = "validationMessage_adhocInfoNew"
        case validationMessageAdhocFooterNote = "validationMessage_adhocFooterNote"
        case validationMessageAdhocFooterNoteUnderline = "validationMessage_adhocFooterNote_underline"
        case validationMessageAdhocFooterNoteGeneric = "validationMessage_adhocFooterNote_generic"
        case validationMessageAdhocFooterNoteGenericUnderline = "validationMessage_adhocFooterNote_generic_underline"
        case validationMessageAdhocInfoGeneric = "validationMessage_adhocInfo_generic"
        case validationMessageAdhocInfo2GenericAndroid = "validationMessage_adhocInfo2_generic_android"
        case validationMessageAdhocInfo2GenericBoldAndroid = "validationMessage_adhocInfo2_generic_bold_android"
        case validationMessageAdhocInfoNewGeneric = "validationMessage_adhocInfoNew_generic"
        case validationMessageAdhocInfoNewV2Generic = "validationMessage_adhocInfoNewV2_generic"
        // MARK: - REPORT ISSUE PAGE CODING KEYS PROPERTIES
        case reportIssueTitle = "reportIssue_title"
        case reportIssueBtSend = "reportIssue_btSend"
        case reportIssueSubtitle = "reportIssue_subtitle"
        // MARK: - CREATE ACCOUNT PAGE CODING KEYS PROPERTIES
        case createAccountCreateAccount = "createAccount_createAccount"
        case createAccountHaveAccount = "createAccount_haveAccount"
        case createAccountSignIn = "createAccount_signIn"
        // MARK: - SIGNUP PAGE CODING KEYS PROPERTIES
        case signupTitle = "signup_title"
        case signUpPasswordDoesNotMeetRequirements = "signUp_passwordDoesNotMeetRequirements"
        case signUpAtLeastNumberOfCharacters = "signUp_atLeastNumberOfCharacters"
        case signUpAtLeastLowerCase = "signUp_atLeastLowerCase"
        case signUpAtLeastUpperCase = "signUp_atLeastUpperCase"
        case signUpAtLeastNumber = "signUp_atLeastNumber"
        case signUpAtLeastSpecialCharacter = "signUp_atLeastSpecialCharacter"
        case signUpTermsAndConditionsMustBeAccepted = "signUp_termsAndConditionsMustBeAccepted"
        case signUpPasswordDoesNotContainInvalidSpecialCharacters = "signUp_passwordDoesNotContainInvalidSpecialCharacters"
        case signUpCreateApassword = "signUp_createApassword"
        case signUpEnterAPassword = "signUp_enterAPassword"
        case signUpTermAndCondIAgreeTerms = "signUpTermAndCond_iAgreeTerms"
        case signUpTermAndCondIAgreeTermsTermCond = "signUpTermAndCond_iAgreeTerms_termCond"
        case signUpTermAndCondIAgreeTermsPriPol = "signUpTermAndCond_iAgreeTerms_priPol"
        case signUpTermAndCondDetailsPassword = "signUpTermAndCond_detailsPassword"
        case signUpTermAndCondLicenseMarketing = "signUpTermAndCond_licenseMarketing"
        case signUpLicenseServices = "signUp_licenseServices"
        case signUpLicenseProducts = "signUp_licenseProducts"
        case signUpGoChargeSuccess = "goChargeLogin_register_ok"
        case signUpAcpCardNumber = "signUpAcpCardNumber"
        case signUpAcpMemberNumber = "signUpAcpMemberNumber"
        // MARK: - LOGIN PAGE CODING KEYS PROPERTIES
        case loginButtonTitle = "login_buttonTitle"
        case loginForgotPassword = "login_forgotPassword"
        case loginForgotPasswordBoldPart = "login_forgotPassword_boldPart"
        case loginPhoneNumberRequired = "login_phoneNumberRequired"
        case loginOpenEmailApp = "login_openEmailApp"
        // MARK: - ACTIVATION PAGE CODING KEYS PROPERTIES
        case activationTitle = "activation_title"
        case activationSubTitle = "activation_subTitle"
        case activationSubTitleEmail = "activation_subTitle_email"
        case activationVerify = "activation_verify"
        case activationResendCode = "activation_resendCode"
        case activationResendCodeBoldPart = "activation_resendCode_boldPart"
        // MARK: - RECOVER PASSWORD PAGE CODING KEYS PROPERTIES
        case recoverPasswordTitle = "recoverPassword_title"
        case recoverPasswordSubTitlePhone = "recoverPassword_subTitle_phone"
        case recoverPasswordSubTitleEmail = "recoverPassword_subTitle_email"
        // MARK: - MY ACCOUNT CODING PAGE KEYS PROPERTIES
        case myAccountTitle = "myAccount_title"
        case myAccountHome = "myAccount_home"
        case myAccountWork = "myAccount_work"
        case myAccountNoHome = "myAccount_noHome"
        case myAccountNoWork = "myAccount_noWork"
        case myAccountQrCodeTitle = "myAccount_qrCodeTitle"
        case myAccountQrCodeSubtitle = "myAccount_qrCodeSubtitle"
        case myAccountContracts = "myAccount_contracts"
        case myAccountCemeTarifs = "myAccount_cemeTarifs"
        case myAccountNotifications = "myAccount_notifications"
        case myAccountPrivacy = "myAccount_privacy"
        case myAccountTermsAndConditions = "myAccount_termsAndConditions"
        case myAccountLogout = "myAccount_logout"
        case myAccountLogin = "myAccount_login"
        // MARK: - EDIT ACCOUNT PAGE CODING KEYS PROPERTIES
        case editAccountTitle = "editAccount_title"
        case editAccountChangePhoneNumber = "editAccount_changePhoneNumber"
        case editAccountChangeEmail = "editAccount_changeEmail"
        case editAccountAddNewAddress = "editAccount_addNewAddress"
        case editAccountDeleteAccount = "editAccount_deleteAccount"
        case editAccountDeleteAccountMessage = "editAccount_deleteAccountMessage"
        case editAccountProfileUpdatedSuccessfully = "editAccount_profileUpdatedSuccessfully"
        // MARK: - CHANGE EMAIL / PHONE NUMBER CODING KEYS PROPERTIES
        case changeEmailTitle = "changeEmail_title"
        case changeEmailPhoneNumberTitle = "changeEmail_phoneNumberTitle"
        case changeEmailEmailIsTheSame = "changeEmail_emailIsTheSame"
        case changeEmailMobilePhoneIsTheSame = "changeEmail_mobilePhoneIsTheSame"
        // MARK: - CHANGE PASSWORD CODING KEYS PROPERTIES
        case changePasswordTitle = "changePassword_title"
        // MARK: - ADD / EDIT REFERENCE PLACE CODING KEYS PROPERTIES
        case addReferencePlaceTitle = "addReferencePlace_title"
        case addReferencePlaceEditTitle = "addReferencePlace_editTitle"
        case addReferencePlaceTapToSelectLocation = "addReferencePlace_tapToSelectLocation"
        // MARK: - SEARCH LOCATION CODING KEYS PROPERTIES
        case searchLocationTitle = "searchLocation_title"
        case searchLocationSuggestions = "searchLocation_suggestions"
        // MARK: - GLOSSARY CODING KEYS PROPERTIES
        case glossaryTitle = "glossary_title"
        case glossaryEvioNetwork = "glossary_evioNetwork"
        case glossaryOtherNetwork = "glossary_otherNetwork"
        case glossaryMyChargers = "glossary_myChargers"
        case glossaryMobieNetwork = "glossary_mobieNetwork"
        case glossaryTeslaNetwork = "glossary_teslaNetwork"
        case glossaryChargersGroup = "glossary_chargersGroup"
        case glossaryChargerFree = "glossary_chargerFree"
        case glossaryChargerOccupied = "glossary_chargerOccupied"
        case glossaryChargerOffline = "glossary_chargerOffline"
        case glossaryGoCharge = "glossary_goCharge"
        case glossaryHyundai = "glossary_hyundai"
        // MARK: - NOTIFICATIONS CODING KEYS PROPERTIES
        case notificationsTitle = "notifications_title"
        case notificationsChargingPoint = "notifications_chargingPoint"
        case notificationsGeneral = "notifications_general"
        case notificationsAccount = "notifications_account"
        case notificationsPushNotifications = "notifications_pushNotifications"
        // MARK: - SESSIONS CODING KEYS PROPERTIES
        case sessionsMySessionsTitle = "sessions_mySessionsTitle"
        case sessionsMyChargersSessionsTitle = "sessions_myChargersSessionsTitle"
        case sessionsNoSessionsTitle = "sessions_noSessionsTitle"
        case sessionsNoSessionsMySessionsSubtitle = "sessions_noSessionsMySessionsSubtitle"
        case sessionsNoSessionsSubtitleNoLogin = "sessions_noSessionsSubtitleNoLogin"
        case sessionsNoSessionsMyChargerSessionsSubtitle = "sessions_noSessionsMyChargerSessionsSubtitle"
        case sessionsNoBatteryInfo = "sessions_noBatteryInfo"
        case sessionsAreYouSureYouWantToStop = "sessions_areYouSureYouWantToStop"
        case sessionsTxtInfoMobieUpdates = "sessions_txtInfoMobieUpdates"
        case sessionsChargingPoint = "sessions_chargingPoint"
        case sessionsChargingPoints = "sessions_chargingPoints"
        // MARK: - START AND STOP ANIMATION CODING KEYS PROPERTIES
        case loadingChargingStartTitle = "loadingCharging_startTitle"
        case loadingChargingStartSubtitle = "loadingCharging_startSubtitle"
        case loadingChargingStopTitle = "loadingCharging_stopTitle"
        case loadingChargingStoptSubtitle = "loadingCharging_stoptSubtitle"
        // MARK: - RATE SESSION VIEW CODING KEYS PROPERTIES
        case rateSessionTitle = "rateSession_title"
        case rateSessionSubtitle = "rateSession_subtitle"
        case rateSessionComment = "rateSession_comment"
        case rateSessionCommentPlaceholder = "rateSession_commentPlaceholder"
        // MARK: - SESSION SUMMARY VIEW CODING KEYS PROPERTIES
        case sessionSummaryTotalChargingTime = "sessionSummary_totalChargingTime"
        case sessionSummaryDate = "sessionSummary_date"
        case sessionSummaryStartTime = "sessionSummary_startTime"
        case sessionSummaryEndTime = "sessionSummary_endTime"
        case sessionSummaryInstantAveragePower = "sessionSummary_instantAveragePower"
        case sessionSummaryIec = "sessionSummary_iec"
        case sessionSummaryTar = "sessionSummary_tar"
        case sessionSummaryVat = "sessionSummary_vat"
        case sessionSummaryTotal = "sessionSummary_total"
        case sessionSummaryMobieTitle = "sessionSummary_Title"
        case sessionSummaryTime = "sessionSummary_time"
        case sessionSummaryEnergy = "sessionSummary_energy"
        case sessionSummaryPlug = "sessionSummary_plug"
        case sessionSummaryContract = "sessionSummary_contract"
        case sessionSummaryCo2Emitted = "sessionSummary_co2Emitted"
        case sessionSummaryCharging = "sessionSummary_charging"
        case sessionSummaryOpc = "sessionSummary_opc"
        case sessionSummaryCeme = "sessionSummary_ceme"
        case sessionSummaryFees = "sessionSummary_fees"
        case sessionSummaryDownloadInvoice = "sessionSummary_downloadInvoice"
        case sessionSummaryEstimatedPrice = "sessionSummary_estimatedPrice"
        case sessionSummaryRateThisSession = "sessionSummary_rateThisSession"
        case sessionSummaryParking = "sessionSummary_parking"
        case sessionSummaryRoamingTitle = "sessionSummary_roamingTitle"
        case sessionSummaryEmsp = "sessionSummary_emsp"
        case sessionSummaryCdrInfoText = "sessionSummary_cdrInfoText"
        case sessionSummaryPowerKw = "sessionSummary_powerKw"
        case sessionSummaryBattery = "sessionSummary_battery"
        case sessionSummaryEnergyKwh = "sessionSummary_energyKwh"
        case sessionSummaryChargingTime = "sessionSummary_chargingTime"
        case sessionSummaryChargingPrice = "sessionSummary_chargingPrice"
        case sessionSummaryActivationFee = "sessionSummary_activationFee"
        case sessionSummaryCostDuringCharge = "sessionSummary_costDuringCharge"
        case sessionSummaryDuration = "sessionSummary_duration"
        case sessionSummaryParkingPrice = "sessionSummary_parkingPrice"
        case sessionSummaryParkingDuringCharging = "sessionSummary_parkingDuringCharging"
        case sessionSummaryBookingPrice = "sessionSummary_bookingPrice"
        // MARK: - START CHARGING BY QR CODE VIEW CODING KEYS PROPERTIES
        case chargerQrCodeContract = "chargerQrCode_contract"
        case chargerQrCodeEv = "chargerQrCode_ev"
        case chargerQrCodeTitle = "chargerQrCode_title"
        case chargerQrCodeStart = "chargerQrCode_start"
        case chargerQrCodeSelectContract = "chargerQrCode_selectContract"
        case chargerQrCodeSelectEv = "chargerQrCode_selectEv"
        case chargerQrCodeSelectContractFirst = "chargerQrCode_selectContractFirst"
        case chargerQrCodeMainTitle = "chargerQrCode_mainTitle"
        case chargerQrCodeMainSubtitle = "chargerQrCode_mainSubtitle"
        case chargerQrCodeNoCamera = "chargerQrCode_noCamera"
        case chargerQrCodeOrInsert = "chargerQrCode_orInsert"
        case chargerQrCodeIdNumber = "chargerQrCode_idNumber"
        case chargerQrCodeInvalidQrCode = "chargerQrCode_invalidQrCode"
        case chargerQrCodeIdNumberTitle = "chargerQrCode_idNumberTitle"
        case chargerQrCodeIdNumberPlaceholder = "chargerQrCode_idNumberPlaceholder"
        // MARK: - STOPPED SESSION BY REASON VIEW CODING KEYS PROPERTIES
        case stoppedSessionByReasonTitle = "stoppedSessionByReason_title"
        case stoppedSessionByReasonSubtitle = "stoppedSessionByReason_subtitle"
        // MARK: - MY CHARGERS VIEW CODING KEYS PROPERTIES
        case myChargersTabTitle = "myChargers_tabTitle"
        case myChargersChargersTabTitle = "myChargers_chargersTabTitle"
        case myChargersAddChargingPlaceTitle = "myChargers_addChargingPlaceTitle"
        case myChargersChargingPlaceName = "myChargers_chargingPlaceName"
        case myChargersChargingPlaceNamePlaceholder = "myChargers_chargingPlaceNamePlaceholder"
        case myChargersNoChargersTitle = "myChargers_noChargersTitle"
        case myChargersNoChargersSubtitle = "myChargers_noChargersSubtitle"
        case myChargersNoChargersNoLoginSubtitle = "myChargers_noChargersNoLoginSubtitle"
        case myChargersNoChargersMyChargersNoLoginSubtitle = "myChargers_noChargersMyChargersNoLoginSubtitle"
        case myChargersNoChargersMyChargersSubtitle = "myChargers_noChargersMyChargersSubtitle"
        case myChargersDeleteChargerTitle = "myChargers_deleteChargerTitle"
        case myChargersDeleteChargerSubtitle = "myChargers_deleteChargerSubtitle"
        case myChargersAddChargerAlertTitle = "myChargers_addChargerAlertTitle"
        case myChargersAddChargerAlertSubtitle = "myChargers_addChargerAlertSubtitle"
        case myChargersAddNewCharger = "myChargers_addNewCharger"
        // MARK: - PLUG DETAILS VIEW KEYS PROPERTIES
        case plugDetailsConnectorType = "plugDetails_connectorType"
        case plugDetailsStatus = "plugDetails_status"
        case plugDetailsCurrent = "plugDetails_current"
        case plugDetailsVoltage = "plugDetails_voltage"
        case plugDetailsPower = "plugDetails_power"
        case plugDetailsAccess = "plugDetails_access"
        case plugDetailsEditPlugTitle = "plugDetails_editPlugTitle"
        case plugDetailsChargingInformation = "plugDetails_chargingInformation"
        case plugDetailsCurrentType = "plugDetails_currentType"
        case plugDetailsActivate = "plugDetails_activate"
        case plugDetailsAc1Phase = "plugDetails_ac1Phase"
        case plugDetailsAc3Phase = "plugDetails_ac3Phase"
        // MARK: - WALLET VIEW KEYS PROPERTIES
        case walletTitle = "wallet_title"
        case walletBalance = "wallet_balance"
        case walletInfoAboutWallet = "wallet_infoAboutWallet"
        case walletPaymentMethods = "wallet_paymentMethods"
        case walletWalletHistory = "wallet_walletHistory"
        case walletFinacialTransactions = "wallet_finacialTransactions"
        case walletBillingProfile = "wallet_billingProfile"
        case walletAutoRechargeWallet = "wallet_autoRechargeWallet"
        case walletAutoRechargeWalletInfoText = "wallet_autoRechargeWalletInfoText"
        case walletAutoRechargeSuccessMessage = "wallet_autoRechargeSuccessMessage"
        // MARK: - WALLET TOP UP VIEW KEYS PROPERTIES
        case walletTopUpTitle = "walletTopUp_title"
        case walletTopUpOtherAmount = "walletTopUp_otherAmount"
        case walletTopUpMinimumAmount = "walletTopUp_minimumAmount"
        case walletTopUpMbWay = "walletTopUp_mbWay"
        case walletTopUpMultibancoReference = "walletTopUp_multibancoReference"
        case walletTopUpCreditCardDeposit = "walletTopUp_creditCardDeposit"
        case walletTopUpCreditCard = "walletTopUp_creditCard"
        case walletTopUpNewCreditCard = "walletTopUp_newCreditCard"
        case walletTopUpExistingCreditCard = "walletTopUp_existingCreditCard"
        case walletTopUpAddBalanceSuccess = "walletTopUp_addBalanceSuccess"
        // MARK: - MB REFERENCE VIEW KEYS PROPERTIES
        case mbReferenceEntity = "mbReference_entity"
        case mbReferenceReference = "mbReference_reference"
        case mbReferenceAmount = "mbReference_amount"
        case mbReferenceSendReferenceBySms = "mbReference_sendReferenceBySms"
        case mbReferenceInfoAboutReference = "mbReference_infoAboutReference"
        case mbReferenceDidNotReceive = "mbReference_didNotReceive"
        case mbReferenceTryAgain = "mbReference_tryAgain"
        // MARK: - TRANSACTIONS VIEW KEYS PROPERTIES
        case transactionsTitle = "transactions_title"
        case transactionsNoTransactions = "transactions_noTransactions"
        case transactionsDeposit = "transactions_deposit"
        case transactionsPayment = "transactions_payment"
        case transactionsCard = "transactions_Card"
        case transactionsMBRef = "transactions_MBRef"
        case transactionsMBRefPSNet = "transactions_MBRef_PSNet"
        case transactionsPSNet = "transactions_PSNet"
        case transactionsMBWay = "transactions_MBWay"
        case transactionsWallet = "transactions_Wallet"
        case transactionsOther = "transactions_Other"
        case transactionsFinancialTitle = "transactionsFinancial_title"
        // MARK: - BILLING PROFILE VIEW KEYS PROPERTIES
        case billingProfileTitle = "billingProfile_title"
        case billingProfileBillingPeriod = "billingProfile_billingPeriod"
        // MARK: - EDIT BILLING PROFILE VIEW KEYS PROPERTIES
        case editBillingProfileFinalConsumer = "editBillingProfile_finalConsumer"
        case editBillingProfilePeriod = "editBillingProfile_period"
        // MARK: - PAYMENT METHODS VIEW KEYS PROPERTIES
        case paymentMethodsTitle = "paymentMethods_title"
        case paymentMethodsCreditCardInfoText = "paymentMethods_creditCardInfoText"
        case paymentMethodsAddNew = "paymentMethods_addNew"
        case paymentMethodsAddNewPaymentMethod = "paymentMethods_addNewPaymentMethod"
        case paymentMethodsAskUserToDelete = "paymentMethods_askUserToDelete"
        case paymentMethodsNoPaymentMethods = "paymentMethods_noPaymentMethods"
        case paymentMethodsCantDeleteCardiOS = "paymentMethods_cantDeleteCardiOS"
        case paymentMethodsExpiryDate = "paymentMethods_expiryDate"
        case paymentMethodsCvc = "paymentMethods_cvc"
        case paymentMethodsAddCard = "paymentMethods_addCard"
        case paymentMethodsCardNumberNoValid = "paymentMethods_cardNumberNoValid"
        case paymentMethodsExpireDateNotValid = "paymentMethods_expireDateNotValid"
        case paymentMethodsSecurityCodeNotValid = "paymentMethods_securityCodeNotValid"
        // MARK: - SUPPORT VIEW KEYS PROPERTIES
        case supportTitle = "support_title"
        case supportMessage = "support_message"
        case supportSearchTopics = "support_searchTopics"
        case supportDriver = "support_driver"
        case supportOwner = "support_owner"
        case supportFaqs = "support_faqs"
        case supportTalkWithUs = "support_talkWithUs"
        case supportSendUsAnEmail = "support_sendUsAnEmail"
        case supportKnowTheApp = "support_knowTheApp"
        case supportReviewWalkthroughs = "support_reviewWalkthroughs"
        case supportRunOnboarding = "support_runOnboarding"
        case supportSubject = "support_subject"
        case supportDriverSupport = "support_driverSupport"
        case supportOwnerSupport = "support_ownerSupport"
        case supportSearchNotSearchedYet = "support_searchNotSearchedYet"
        case supportSearchNoResultsFoundFor = "support_searchNoResultsFoundFor"
        case supportSearchTypeSomethingToSearch = "support_searchTypeSomethingToSearch"
        case supportAddPictures = "support_addPictures"
        // MARK: - INSIGHTS VIEW KEYS PROPERTIES
        case insightsInsightsTabTitle = "insights_insightsTabTitle"
        case insightsHistoryTabTitle = "insights_historyTabTitle"
        case insightsLastMonth = "insights_lastMonth"
        case insightsLastYear = "insights_lastYear"
        case insightsLastSemester = "insights_lastSemester"
        case insightsNoHistory = "insights_noHistory"
        case insightsNoInsights = "insights_noInsights"
        case insightsNoInsightsNoLogin = "insights_noInsightsNoLogin"
        case insightsNoHistoryNoLogin = "insights_noHistoryNoLogin"
        case insightsMyVehicles = "insights_myVehicles"
        case insightsTotalChargingTime = "insights_totalChargingTime"
        case insightsTotalSessions = "insights_totalSessions"
        case insightsTotalCost = "insights_totalCost"
        case insightsTotalEnergy = "insights_totalEnergy"
        case insightsCo2Emitted = "insights_co2Emitted"
        case insightsMyChargingStations = "insights_myChargingStations"
        case insightsIncome = "insights_income"
        case insightsMyRating = "insights_myRating"
        case insightsChargingTimePerSession = "insights_chargingTimePerSession"
        case insightsEnergyConsumptionPerSession = "insights_energyConsumptionPerSession"
        case insightsFavoriteCharger = "insights_favoriteCharger"
        case insightsMostUsedPlug = "insights_mostUsedPlug"
        // MARK: - BLOCKED VIEW KEYS PROPERTIES
        case blockedViewUpdateBt = "blockedView_updateBt"
        case blockedViewTextInfo = "blockedView_textInfo"
        case blockedViewPaymentError = "blockedView_paymentError"
        // MARK: - COMPARATOR VIEW KEYS PROPERTIES
        case comparatorTitle = "comparator_title"
        case comparatorChargingPoint = "comparator_chargingPoint"
        case comparatorPlugPower = "comparator_plugPower"
        case comparatorChargingDuration = "comparator_chargingDuration"
        case comparatorTotalCost = "comparator_totalCost"
        case comparatorAverageCost = "comparator_averageCost"
        case comparatorMyChargers = "comparator_myChargers"
        case comparatorOtherChargers = "comparator_otherChargers"
        case comparatorFavourites = "comparator_favourites"
        case comparatorChooseChargingPoint = "comparator_chooseChargingPoint"
        case comparatorCompareButton = "comparator_compareButton"
        case comparatorChoosePlugToCompare = "comparator_choosePlugToCompare"
        case comparatorPlugAlreadyBeingCompared = "comparator_plugAlreadyBeingCompared"
        // MARK: - HISTORY VIEW KEYS PROPERTIES
        case historyPaymentBillingInfoPaid = "historyPaymentBillingInfo_paid"
        case historyPaymentBillingInfoPaidAndBilled = "historyPaymentBillingInfo_paidAndBilled"
        case historyPaymentBillingInfoToProcess = "historyPaymentBillingInfo_toProcess"
        case historyPaymentBillingInfoNotApplicable = "historyPaymentBillingInfo_notApplicable"
        case historyPaymentBillingInfoFailedBilling = "historyPaymentBillingInfo_failedBilling"
        case historyPaymentBillingInfoFailedPayment = "historyPaymentBillingInfo_failedPayment"
        case historyPaymentBillingInfoBilledAndNotPaid = "historyPaymentBillingInfo_billedAndNotPaid"
        case historyDownloadMessage = "history_downloadMessage"
        case historyPaymentStatus = "history_paymentStatus"
        case historyStartDate = "history_startDate"
        case historyStopDate = "history_stopDate"
        case historyDonwloadSuccess = "history_donwloadSuccess"
        // MARK: - INFO TARIFF MOBIE KEYS PROPERTIES
        case infoTariffMobiePerMinuteMinMaxDuration = "infoTariffMobie_perMinuteMinMaxDuration"
        case infoTariffMobiePerMinuteMinMaxKwh = "infoTariffMobie_perMinuteMinMaxKwh"
        case infoTariffMobiePerKwhStartEndTime = "infoTariffMobie_perKwhStartEndTime"
        case infoTariffMobiePerKwhStartEndDate = "infoTariffMobie_perKwhStartEndDate"
        case infoTariffMobiePerKwhMaxMinKwh = "infoTariffMobie_perKwhMaxMinKwh"
        case infoTariffMobiePerKwhMinMaxDuration = "infoTariffMobie_perKwhMinMaxDuration"
        case infoTariffMobiePerKwhDayOfWeek = "infoTariffMobie_perKwhDayOfWeek"
        case infoTariffMobieSimulatePercent = "infoTariffMobie_simulatePercent"
        case infoTariffMobieSimulateTime = "infoTariffMobie_simulateTime"
        case infoTariffMobieStart = "infoTariffMobie_start"
        case infoTariffMobieReturn = "infoTariffMobie_return"
        case infoTariffMobieSimulationByTime = "infoTariffMobie_simulationByTime"
        case infoTariffMobieDay = "infoTariffMobie_day"
        case infoTariffMobieHour = "infoTariffMobie_hour"
        case infoTariffMobieSimulationByPercentage = "infoTariffMobie_simulationByPercentage"
        case infoTariffMobieSimulationPrice = "infoTariffMobie_simulationPrice"
        case infoTariffMobieDurationRestriction = "infoTariffMobie_durationRestriction"
        case infoTariffMobieDayRestriction = "infoTariffMobie_dayRestriction"
        case infoTariffMobieTimeRestriction = "infoTariffMobie_timeRestriction"
        case infoTariffMobieDateRestriction = "infoTariffMobie_dateRestriction"
        case infoTariffMobieEnergyRestriction = "infoTariffMobie_energyRestriction"
        case infoTariffMobieCurrentRestriction = "infoTariffMobie_currentRestriction"
        case infoTariffMobiePowerRestriction = "infoTariffMobie_powerRestriction"
        case infoTariffMobieDefaultRestriction = "infoTariffMobie_defaultRestriction"
        case infoTariffMobieBetween = "infoTariffMobie_between"
        case infoTariffMobieAfter = "infoTariffMobie_after"
        case infoTariffMobieBefore = "infoTariffMobie_before"
        case infoTariffMobieAnd = "infoTariffMobie_and"
        // MARK: - CANCEL CARD VIEW KEYS PROPERTIES
        case cancelCardCancelCard = "cancelCard_cancelCard"
        case cancelCardDescription = "cancelCard_description"
        case cancelCardDescriptionHint = "cancelCard_descriptionHint"
        case cancelCardReason = "cancelCard_reason"
        case cancelCardLost = "cancelCard_lost"
        case cancelCardTheft = "cancelCard_theft"
        case cancelCardOther = "cancelCard_other"
        case cancelCardWantReplacement = "cancelCard_wantReplacement"
        case cancelCardSuccessCanceledMessage = "cancelCard_successCanceledMessage"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        // MARK: - GENERAL KEYS
        self.generalNoInternetConnection = try container.decodeIfPresent(String.self, forKey: .generalNoInternetConnection) ?? NSLocalizedString(CodingKeys.generalNoInternetConnection.rawValue, comment: "")
        self.generalNoInternetConnectionMessage = try container.decodeIfPresent(String.self, forKey: .generalNoInternetConnectionMessage) ?? NSLocalizedString(CodingKeys.generalNoInternetConnectionMessage.rawValue, comment: "")
        self.generalOk = try container.decodeIfPresent(String.self, forKey: .generalOk) ?? NSLocalizedString(CodingKeys.generalOk.rawValue, comment: "")
        self.generalLess = try container.decodeIfPresent(String.self, forKey: .generalLess) ?? NSLocalizedString(CodingKeys.generalLess.rawValue, comment: "")
        self.generalMore = try container.decodeIfPresent(String.self, forKey: .generalMore) ?? NSLocalizedString(CodingKeys.generalMore.rawValue, comment: "")
        self.generalPlusVat = try container.decodeIfPresent(String.self, forKey: .generalPlusVat) ?? NSLocalizedString(CodingKeys.generalPlusVat.rawValue, comment: "")
        self.generalUnidentifiedEv = try container.decodeIfPresent(String.self, forKey: .generalUnidentifiedEv) ?? NSLocalizedString(CodingKeys.generalUnidentifiedEv.rawValue, comment: "")
        self.generalAvailableSoon = try container.decodeIfPresent(String.self, forKey: .generalAvailableSoon) ?? NSLocalizedString(CodingKeys.generalAvailableSoon.rawValue, comment: "")
        self.generalInfoNotAvailable = try container.decodeIfPresent(String.self, forKey: .generalInfoNotAvailable) ?? NSLocalizedString(CodingKeys.generalInfoNotAvailable.rawValue, comment: "")
        self.generalCameraOrLibraryTitle = try container.decodeIfPresent(String.self, forKey: .generalCameraOrLibraryTitle) ?? NSLocalizedString(CodingKeys.generalCameraOrLibraryTitle.rawValue, comment: "")
        self.generalCameraBtn = try container.decodeIfPresent(String.self, forKey: .generalCameraBtn) ?? NSLocalizedString(CodingKeys.generalCameraBtn.rawValue, comment: "")
        self.generalLibraryBtn = try container.decodeIfPresent(String.self, forKey: .generalLibraryBtn) ?? NSLocalizedString(CodingKeys.generalLibraryBtn.rawValue, comment: "")
        self.generalEmail = try container.decodeIfPresent(String.self, forKey: .generalEmail) ?? NSLocalizedString(CodingKeys.generalEmail.rawValue, comment: "")
        self.generalPhoneNumber = try container.decodeIfPresent(String.self, forKey: .generalPhoneNumber) ?? NSLocalizedString(CodingKeys.generalPhoneNumber.rawValue, comment: "")
        self.generalTypeHere = try container.decodeIfPresent(String.self, forKey: .generalTypeHere) ?? NSLocalizedString(CodingKeys.generalTypeHere.rawValue, comment: "")
        self.generalName = try container.decodeIfPresent(String.self, forKey: .generalName) ?? NSLocalizedString(CodingKeys.generalName.rawValue, comment: "")
        self.generalPassword = try container.decodeIfPresent(String.self, forKey: .generalPassword) ?? NSLocalizedString(CodingKeys.generalPassword.rawValue, comment: "")
        self.generalOldPassword = try container.decodeIfPresent(String.self, forKey: .generalOldPassword) ?? NSLocalizedString(CodingKeys.generalOldPassword.rawValue, comment: "")
        self.generalRepeatPassword = try container.decodeIfPresent(String.self, forKey: .generalRepeatPassword) ?? NSLocalizedString(CodingKeys.generalRepeatPassword.rawValue, comment: "")
        self.generalInvalidEmail = try container.decodeIfPresent(String.self, forKey: .generalInvalidEmail) ?? NSLocalizedString(CodingKeys.generalInvalidEmail.rawValue, comment: "")
        self.generalInvalidPhoneNumber = try container.decodeIfPresent(String.self, forKey: .generalInvalidPhoneNumber) ?? NSLocalizedString(CodingKeys.generalInvalidPhoneNumber.rawValue, comment: "")
        self.generalNext = try container.decodeIfPresent(String.self, forKey: .generalNext) ?? NSLocalizedString(CodingKeys.generalNext.rawValue, comment: "")
        self.generalPasswordRequired = try container.decodeIfPresent(String.self, forKey: .generalPasswordRequired) ?? NSLocalizedString(CodingKeys.generalPasswordRequired.rawValue, comment: "")
        self.generalCode = try container.decodeIfPresent(String.self, forKey: .generalCode) ?? NSLocalizedString(CodingKeys.generalCode.rawValue, comment: "")
        self.generalPasswordNotValid = try container.decodeIfPresent(String.self, forKey: .generalPasswordNotValid) ?? NSLocalizedString(CodingKeys.generalPasswordNotValid.rawValue, comment: "")
        self.generalPasswordsDoNotMatch = try container.decodeIfPresent(String.self, forKey: .generalPasswordsDoNotMatch) ?? NSLocalizedString(CodingKeys.generalPasswordsDoNotMatch.rawValue, comment: "")
        self.generalGenericErrorMessage = try container.decodeIfPresent(String.self, forKey: .generalGenericErrorMessage) ?? NSLocalizedString(CodingKeys.generalGenericErrorMessage.rawValue, comment: "")
        self.generalCancel = try container.decodeIfPresent(String.self, forKey: .generalCancel) ?? NSLocalizedString(CodingKeys.generalCancel.rawValue, comment: "")
        self.generalSearch = try container.decodeIfPresent(String.self, forKey: .generalSearch) ?? NSLocalizedString(CodingKeys.generalSearch.rawValue, comment: "")
        self.generalErrorSharingQrCode = try container.decodeIfPresent(String.self, forKey: .generalErrorSharingQrCode) ?? NSLocalizedString(CodingKeys.generalErrorSharingQrCode.rawValue, comment: "")
        self.generalQrCodeSavedSuccessfully = try container.decodeIfPresent(String.self, forKey: .generalQrCodeSavedSuccessfully) ?? NSLocalizedString(CodingKeys.generalQrCodeSavedSuccessfully.rawValue, comment: "")
        self.generalQrCodeSaveFailed = try container.decodeIfPresent(String.self, forKey: .generalQrCodeSaveFailed) ?? NSLocalizedString(CodingKeys.generalQrCodeSaveFailed.rawValue, comment: "")
        self.generalSave = try container.decodeIfPresent(String.self, forKey: .generalSave) ?? NSLocalizedString(CodingKeys.generalSave.rawValue, comment: "")
        self.generalYes = try container.decodeIfPresent(String.self, forKey: .generalYes) ?? NSLocalizedString(CodingKeys.generalYes.rawValue, comment: "")
        self.generalNo = try container.decodeIfPresent(String.self, forKey: .generalNo) ?? NSLocalizedString(CodingKeys.generalNo.rawValue, comment: "")
        self.generalType = try container.decodeIfPresent(String.self, forKey: .generalType) ?? NSLocalizedString(CodingKeys.generalType.rawValue, comment: "")
        self.generalStreet = try container.decodeIfPresent(String.self, forKey: .generalStreet) ?? NSLocalizedString(CodingKeys.generalStreet.rawValue, comment: "")
        self.generalCity = try container.decodeIfPresent(String.self, forKey: .generalCity) ?? NSLocalizedString(CodingKeys.generalCity.rawValue, comment: "")
        self.generalCountry = try container.decodeIfPresent(String.self, forKey: .generalCountry) ?? NSLocalizedString(CodingKeys.generalCountry.rawValue, comment: "")
        self.generalNumber = try container.decodeIfPresent(String.self, forKey: .generalNumber) ?? NSLocalizedString(CodingKeys.generalNumber.rawValue, comment: "")
        self.generalZipCode = try container.decodeIfPresent(String.self, forKey: .generalZipCode) ?? NSLocalizedString(CodingKeys.generalZipCode.rawValue, comment: "")
        self.generalOther = try container.decodeIfPresent(String.self, forKey: .generalOther) ?? NSLocalizedString(CodingKeys.generalOther.rawValue, comment: "")
        self.generalNameRequired = try container.decodeIfPresent(String.self, forKey: .generalNameRequired) ?? NSLocalizedString(CodingKeys.generalNameRequired.rawValue, comment: "")
        self.generalStreetRequired = try container.decodeIfPresent(String.self, forKey: .generalStreetRequired) ?? NSLocalizedString(CodingKeys.generalStreetRequired.rawValue, comment: "")
        self.generalCityRequired = try container.decodeIfPresent(String.self, forKey: .generalCityRequired) ?? NSLocalizedString(CodingKeys.generalCityRequired.rawValue, comment: "")
        self.generalDoorNumberRequired = try container.decodeIfPresent(String.self, forKey: .generalDoorNumberRequired) ?? NSLocalizedString(CodingKeys.generalDoorNumberRequired.rawValue, comment: "")
        self.generalZipCodeRequired = try container.decodeIfPresent(String.self, forKey: .generalZipCodeRequired) ?? NSLocalizedString(CodingKeys.generalZipCodeRequired.rawValue, comment: "")
        self.generalZipCodeNotValid = try container.decodeIfPresent(String.self, forKey: .generalZipCodeNotValid) ?? NSLocalizedString(CodingKeys.generalZipCodeNotValid.rawValue, comment: "")
        self.generalContractTypeFleet = try container.decodeIfPresent(String.self, forKey: .generalContractTypeFleet) ?? NSLocalizedString(CodingKeys.generalContractTypeFleet.rawValue, comment: "")
        self.generalContractTypeUser = try container.decodeIfPresent(String.self, forKey: .generalContractTypeUser) ?? NSLocalizedString(CodingKeys.generalContractTypeUser.rawValue, comment: "")
        self.generalTariff = try container.decodeIfPresent(String.self, forKey: .generalTariff) ?? NSLocalizedString(CodingKeys.generalTariff.rawValue, comment: "")
        self.generalTin = try container.decodeIfPresent(String.self, forKey: .generalTin) ?? NSLocalizedString(CodingKeys.generalTin.rawValue, comment: "")
        self.generalActivate = try container.decodeIfPresent(String.self, forKey: .generalActivate) ?? NSLocalizedString(CodingKeys.generalActivate.rawValue, comment: "")
        self.generalCardNumber = try container.decodeIfPresent(String.self, forKey: .generalCardNumber) ?? NSLocalizedString(CodingKeys.generalCardNumber.rawValue, comment: "")
        self.generalAddress = try container.decodeIfPresent(String.self, forKey: .generalAddress) ?? NSLocalizedString(CodingKeys.generalAddress.rawValue, comment: "")
        self.generalFieldRequired = try container.decodeIfPresent(String.self, forKey: .generalFieldRequired) ?? NSLocalizedString(CodingKeys.generalFieldRequired.rawValue, comment: "")
        self.generalTinNumberInvalid = try container.decodeIfPresent(String.self, forKey: .generalTinNumberInvalid) ?? NSLocalizedString(CodingKeys.generalTinNumberInvalid.rawValue, comment: "")
        self.generalEdit = try container.decodeIfPresent(String.self, forKey: .generalEdit) ?? NSLocalizedString(CodingKeys.generalEdit.rawValue, comment: "")
        self.generalRemove = try container.decodeIfPresent(String.self, forKey: .generalRemove) ?? NSLocalizedString(CodingKeys.generalRemove.rawValue, comment: "")
        self.generalDelete = try container.decodeIfPresent(String.self, forKey: .generalDelete) ?? NSLocalizedString(CodingKeys.generalDelete.rawValue, comment: "")
        self.generalNotes = try container.decodeIfPresent(String.self, forKey: .generalNotes) ?? NSLocalizedString(CodingKeys.generalNotes.rawValue, comment: "")
        self.generalLicensePlate = try container.decodeIfPresent(String.self, forKey: .generalLicensePlate) ?? NSLocalizedString(CodingKeys.generalLicensePlate.rawValue, comment: "")
        self.generalPrimary = try container.decodeIfPresent(String.self, forKey: .generalPrimary) ?? NSLocalizedString(CodingKeys.generalPrimary.rawValue, comment: "")
        self.generalNetworks = try container.decodeIfPresent(String.self, forKey: .generalNetworks) ?? NSLocalizedString(CodingKeys.generalNetworks.rawValue, comment: "")
        self.generalPayment = try container.decodeIfPresent(String.self, forKey: .generalPayment) ?? NSLocalizedString(CodingKeys.generalPayment.rawValue, comment: "")
        self.generalDriver = try container.decodeIfPresent(String.self, forKey: .generalDriver) ?? NSLocalizedString(CodingKeys.generalDriver.rawValue, comment: "")
        self.generalEvOwner = try container.decodeIfPresent(String.self, forKey: .generalEvOwner) ?? NSLocalizedString(CodingKeys.generalEvOwner.rawValue, comment: "")
        self.generalCompany = try container.decodeIfPresent(String.self, forKey: .generalCompany) ?? NSLocalizedString(CodingKeys.generalCompany.rawValue, comment: "")
        self.generalMyself = try container.decodeIfPresent(String.self, forKey: .generalMyself) ?? NSLocalizedString(CodingKeys.generalMyself.rawValue, comment: "")
        self.generalDuration = try container.decodeIfPresent(String.self, forKey: .generalDuration) ?? NSLocalizedString(CodingKeys.generalDuration.rawValue, comment: "")
        self.generalEnergySupplied = try container.decodeIfPresent(String.self, forKey: .generalEnergySupplied) ?? NSLocalizedString(CodingKeys.generalEnergySupplied.rawValue, comment: "")
        self.generalInstantPower = try container.decodeIfPresent(String.self, forKey: .generalInstantPower) ?? NSLocalizedString(CodingKeys.generalInstantPower.rawValue, comment: "")
        self.generalCost = try container.decodeIfPresent(String.self, forKey: .generalCost) ?? NSLocalizedString(CodingKeys.generalCost.rawValue, comment: "")
        self.generalDurationPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalDurationPlaceholder) ?? NSLocalizedString(CodingKeys.generalDurationPlaceholder.rawValue, comment: "")
        self.generalEnergySuppliedPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalEnergySuppliedPlaceholder) ?? NSLocalizedString(CodingKeys.generalEnergySuppliedPlaceholder.rawValue, comment: "")
        self.generalInstantPowerPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalInstantPowerPlaceholder) ?? NSLocalizedString(CodingKeys.generalInstantPowerPlaceholder.rawValue, comment: "")
        self.generalCostPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalCostPlaceholder) ?? NSLocalizedString(CodingKeys.generalCostPlaceholder.rawValue, comment: "")
        self.generalTimeLeft = try container.decodeIfPresent(String.self, forKey: .generalTimeLeft) ?? NSLocalizedString(CodingKeys.generalTimeLeft.rawValue, comment: "")
        self.generalBattery = try container.decodeIfPresent(String.self, forKey: .generalBattery) ?? NSLocalizedString(CodingKeys.generalBattery.rawValue, comment: "")
        self.generalUnlockPlug = try container.decodeIfPresent(String.self, forKey: .generalUnlockPlug) ?? NSLocalizedString(CodingKeys.generalUnlockPlug.rawValue, comment: "")
        self.generalEstimatedPriceInfo = try container.decodeIfPresent(String.self, forKey: .generalEstimatedPriceInfo) ?? NSLocalizedString(CodingKeys.generalEstimatedPriceInfo.rawValue, comment: "")
        self.generalVatNotIncluded = try container.decodeIfPresent(String.self, forKey: .generalVatNotIncluded) ?? NSLocalizedString(CodingKeys.generalVatNotIncluded.rawValue, comment: "")
        self.generalPriceOnEmptyHours = try container.decodeIfPresent(String.self, forKey: .generalPriceOnEmptyHours) ?? NSLocalizedString(CodingKeys.generalPriceOnEmptyHours.rawValue, comment: "")
        self.generalPriceOnFullHours = try container.decodeIfPresent(String.self, forKey: .generalPriceOnFullHours) ?? NSLocalizedString(CodingKeys.generalPriceOnFullHours.rawValue, comment: "")
        self.generalPriceOn = try container.decodeIfPresent(String.self, forKey: .generalPriceOn) ?? NSLocalizedString(CodingKeys.generalPriceOn.rawValue, comment: "")
        self.generalEnergyBased = try container.decodeIfPresent(String.self, forKey: .generalEnergyBased) ?? NSLocalizedString(CodingKeys.generalEnergyBased.rawValue, comment: "")
        self.generalTimeBased = try container.decodeIfPresent(String.self, forKey: .generalTimeBased) ?? NSLocalizedString(CodingKeys.generalTimeBased.rawValue, comment: "")
        self.generalBooking = try container.decodeIfPresent(String.self, forKey: .generalBooking) ?? NSLocalizedString(CodingKeys.generalBooking.rawValue, comment: "")
        self.generalCharging = try container.decodeIfPresent(String.self, forKey: .generalCharging) ?? NSLocalizedString(CodingKeys.generalCharging.rawValue, comment: "")
        self.generalParking = try container.decodeIfPresent(String.self, forKey: .generalParking) ?? NSLocalizedString(CodingKeys.generalParking.rawValue, comment: "")
        self.generalActivation = try container.decodeIfPresent(String.self, forKey: .generalActivation) ?? NSLocalizedString(CodingKeys.generalActivation.rawValue, comment: "")
        self.generalOhNoTitle = try container.decodeIfPresent(String.self, forKey: .generalOhNoTitle) ?? NSLocalizedString(CodingKeys.generalOhNoTitle.rawValue, comment: "")
        self.generalSomethingWentWrong = try container.decodeIfPresent(String.self, forKey: .generalSomethingWentWrong) ?? NSLocalizedString(CodingKeys.generalSomethingWentWrong.rawValue, comment: "")
        self.generalSend = try container.decodeIfPresent(String.self, forKey: .generalSend) ?? NSLocalizedString(CodingKeys.generalSend.rawValue, comment: "")
        self.generalUnlockCableSuccessMessage = try container.decodeIfPresent(String.self, forKey: .generalUnlockCableSuccessMessage) ?? NSLocalizedString(CodingKeys.generalUnlockCableSuccessMessage.rawValue, comment: "")
        self.generalAdd = try container.decodeIfPresent(String.self, forKey: .generalAdd) ?? NSLocalizedString(CodingKeys.generalAdd.rawValue, comment: "")
        self.generalOccupied = try container.decodeIfPresent(String.self, forKey: .generalOccupied) ?? NSLocalizedString(CodingKeys.generalOccupied.rawValue, comment: "")
        self.generalFree = try container.decodeIfPresent(String.self, forKey: .generalFree) ?? NSLocalizedString(CodingKeys.generalFree.rawValue, comment: "")
        self.generalOffline = try container.decodeIfPresent(String.self, forKey: .generalOffline) ?? NSLocalizedString(CodingKeys.generalOffline.rawValue, comment: "")
        self.generalPublic = try container.decodeIfPresent(String.self, forKey: .generalPublic) ?? NSLocalizedString(CodingKeys.generalPublic.rawValue, comment: "")
        self.generalRestrict = try container.decodeIfPresent(String.self, forKey: .generalRestrict) ?? NSLocalizedString(CodingKeys.generalRestrict.rawValue, comment: "")
        self.generalPrivate = try container.decodeIfPresent(String.self, forKey: .generalPrivate) ?? NSLocalizedString(CodingKeys.generalPrivate.rawValue, comment: "")
        self.generalAvailableImagesToTake = try container.decodeIfPresent(String.self, forKey: .generalAvailableImagesToTake) ?? NSLocalizedString(CodingKeys.generalAvailableImagesToTake.rawValue, comment: "")
        self.generalLocation = try container.decodeIfPresent(String.self, forKey: .generalLocation) ?? NSLocalizedString(CodingKeys.generalLocation.rawValue, comment: "")
        self.generalDefault = try container.decodeIfPresent(String.self, forKey: .generalDefault) ?? NSLocalizedString(CodingKeys.generalDefault.rawValue, comment: "")
        self.generalAddImages = try container.decodeIfPresent(String.self, forKey: .generalAddImages) ?? NSLocalizedString(CodingKeys.generalAddImages.rawValue, comment: "")
        self.generalConfirm = try container.decodeIfPresent(String.self, forKey: .generalConfirm) ?? NSLocalizedString(CodingKeys.generalConfirm.rawValue, comment: "")
        self.generalCopied = try container.decodeIfPresent(String.self, forKey: .generalCopied) ?? NSLocalizedString(CodingKeys.generalCopied.rawValue, comment: "")
        self.generalSent = try container.decodeIfPresent(String.self, forKey: .generalSent) ?? NSLocalizedString(CodingKeys.generalSent.rawValue, comment: "")
        self.generalPlug = try container.decodeIfPresent(String.self, forKey: .generalPlug) ?? NSLocalizedString(CodingKeys.generalPlug.rawValue, comment: "")
        self.generalPlugs = try container.decodeIfPresent(String.self, forKey: .generalPlugs) ?? NSLocalizedString(CodingKeys.generalPlugs.rawValue, comment: "")
        self.generalOf = try container.decodeIfPresent(String.self, forKey: .generalOf) ?? NSLocalizedString(CodingKeys.generalOf.rawValue, comment: "")
        self.generalPage = try container.decodeIfPresent(String.self, forKey: .generalPage) ?? NSLocalizedString(CodingKeys.generalPage.rawValue, comment: "")
        self.generalNoEvs = try container.decodeIfPresent(String.self, forKey: .generalNoEvs) ?? NSLocalizedString(CodingKeys.generalNoEvs.rawValue, comment: "")
        self.generalGoToMyEvs = try container.decodeIfPresent(String.self, forKey: .generalGoToMyEvs) ?? NSLocalizedString(CodingKeys.generalGoToMyEvs.rawValue, comment: "")
        self.generalDownload = try container.decodeIfPresent(String.self, forKey: .generalDownload) ?? NSLocalizedString(CodingKeys.generalDownload.rawValue, comment: .empty)
        // MARK: - OTHER KEYS
        self.appNeedsToBeUpdated = try container.decodeIfPresent(String.self, forKey: .appNeedsToBeUpdated) ?? NSLocalizedString(CodingKeys.appNeedsToBeUpdated.rawValue, comment: "")
        self.chargerCannotBeUsed = try container.decodeIfPresent(String.self, forKey: .chargerCannotBeUsed) ?? NSLocalizedString(CodingKeys.chargerCannotBeUsed.rawValue, comment: "")
        self.locationServicesAlertTitle = try container.decodeIfPresent(String.self, forKey: .locationServicesAlertTitle) ?? NSLocalizedString(CodingKeys.locationServicesAlertTitle.rawValue, comment: "")
        self.locationServicesAlertMessage = try container.decodeIfPresent(String.self, forKey: .locationServicesAlertMessage) ?? NSLocalizedString(CodingKeys.locationServicesAlertMessage.rawValue, comment: "")
        self.locationsServicesAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .locationsServicesAlertEnableButton) ?? NSLocalizedString(CodingKeys.locationsServicesAlertEnableButton.rawValue, comment: "")
        self.libraryPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertTitle.rawValue, comment: "")
        self.libraryPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertMessage.rawValue, comment: "")
        self.libraryPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertEnableButton.rawValue, comment: "")
        self.messageLimitAddObjects = try container.decodeIfPresent(String.self, forKey: .messageLimitAddObjects) ?? NSLocalizedString(CodingKeys.messageLimitAddObjects.rawValue, comment: "")
        self.networkRoaming = try container.decodeIfPresent(String.self, forKey: .networkRoaming) ?? NSLocalizedString(CodingKeys.networkRoaming.rawValue, comment: "")
        self.networkOthers = try container.decodeIfPresent(String.self, forKey: .networkOthers) ?? NSLocalizedString(CodingKeys.networkOthers.rawValue, comment: "")
        self.cameraPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertTitle.rawValue, comment: "")
        self.cameraPermissionAlertMesage = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertMesage) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertMesage.rawValue, comment: "")
        self.cameraPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertEnableButton.rawValue, comment: "")
        self.contactsPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertTitle.rawValue, comment: "")
        self.contactsPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertMessage.rawValue, comment: "")
        self.contactsPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertEnableButton.rawValue, comment: "")
        self.notificationsPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertTitle.rawValue, comment: "")
        self.notificationsPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertMessage.rawValue, comment: "")
        self.notificationsPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertEnableButton.rawValue, comment: "")
        // MARK: - SEARCH PAGE KEYS
        self.searchLocations = try container.decodeIfPresent(String.self, forKey: .searchLocations) ?? NSLocalizedString(CodingKeys.searchLocations.rawValue, comment: "")
        self.searchChargingStations = try container.decodeIfPresent(String.self, forKey: .searchChargingStations) ?? NSLocalizedString(CodingKeys.searchChargingStations.rawValue, comment: "")
        self.searchRecent = try container.decodeIfPresent(String.self, forKey: .searchRecent) ?? NSLocalizedString(CodingKeys.searchRecent.rawValue, comment: "")
        self.searchNoResultsFound = try container.decodeIfPresent(String.self, forKey: .searchNoResultsFound) ?? NSLocalizedString(CodingKeys.searchNoResultsFound.rawValue, comment: "")
        self.searchAnUnexpectedErrorOccurred = try container.decodeIfPresent(String.self, forKey: .searchAnUnexpectedErrorOccurred) ?? NSLocalizedString(CodingKeys.searchAnUnexpectedErrorOccurred.rawValue, comment: "")
        self.searchNoRecents = try container.decodeIfPresent(String.self, forKey: .searchNoRecents) ?? NSLocalizedString(CodingKeys.searchNoRecents.rawValue, comment: "")
        // MARK: - FILTERS PAGE KEYS
        self.filtersTitle = try container.decodeIfPresent(String.self, forKey: .filtersTitle) ?? NSLocalizedString(CodingKeys.filtersTitle.rawValue, comment: "")
        self.filtersClearFiltersButton = try container.decodeIfPresent(String.self, forKey: .filtersClearFiltersButton) ?? NSLocalizedString(CodingKeys.filtersClearFiltersButton.rawValue, comment: "")
        self.filtersAvailableStations = try container.decodeIfPresent(String.self, forKey: .filtersAvailableStations) ?? NSLocalizedString(CodingKeys.filtersAvailableStations.rawValue, comment: "")
        self.filtersPrice = try container.decodeIfPresent(String.self, forKey: .filtersPrice) ?? NSLocalizedString(CodingKeys.filtersPrice.rawValue, comment: "")
        self.filtersMin = try container.decodeIfPresent(String.self, forKey: .filtersMin) ?? NSLocalizedString(CodingKeys.filtersMin.rawValue, comment: "")
        self.filtersPower = try container.decodeIfPresent(String.self, forKey: .filtersPower) ?? NSLocalizedString(CodingKeys.filtersPower.rawValue, comment: "")
        self.filtersKwh = try container.decodeIfPresent(String.self, forKey: .filtersKwh) ?? NSLocalizedString(CodingKeys.filtersKwh.rawValue, comment: "")
        self.filtersRating = try container.decodeIfPresent(String.self, forKey: .filtersRating) ?? NSLocalizedString(CodingKeys.filtersRating.rawValue, comment: "")
        self.filtersMinimum = try container.decodeIfPresent(String.self, forKey: .filtersMinimum) ?? NSLocalizedString(CodingKeys.filtersMinimum.rawValue, comment: "")
        self.filtersNetworks = try container.decodeIfPresent(String.self, forKey: .filtersNetworks) ?? NSLocalizedString(CodingKeys.filtersNetworks.rawValue, comment: "")
        self.filtersOtherNetworks = try container.decodeIfPresent(String.self, forKey: .filtersOtherNetworks) ?? NSLocalizedString(CodingKeys.filtersOtherNetworks.rawValue, comment: "")
        self.filtersEvioNetwork = try container.decodeIfPresent(String.self, forKey: .filtersEvioNetwork) ?? NSLocalizedString(CodingKeys.filtersEvioNetwork.rawValue, comment: "")
        self.filtersTeslaNetwork = try container.decodeIfPresent(String.self, forKey: .filtersTeslaNetwork) ?? NSLocalizedString(CodingKeys.filtersTeslaNetwork.rawValue, comment: "")
        self.filtersMyChargers = try container.decodeIfPresent(String.self, forKey: .filtersMyChargers) ?? NSLocalizedString(CodingKeys.filtersMyChargers.rawValue, comment: "")
        self.filtersTypeOfConnector = try container.decodeIfPresent(String.self, forKey: .filtersTypeOfConnector) ?? NSLocalizedString(CodingKeys.filtersTypeOfConnector.rawValue, comment: "")
        self.filtersVehicles = try container.decodeIfPresent(String.self, forKey: .filtersVehicles) ?? NSLocalizedString(CodingKeys.filtersVehicles.rawValue, comment: "")
        self.filtersParkingType = try container.decodeIfPresent(String.self, forKey: .filtersParkingType) ?? NSLocalizedString(CodingKeys.filtersParkingType.rawValue, comment: "")
        self.filtersApplyButton = try container.decodeIfPresent(String.self, forKey: .filtersApplyButton) ?? NSLocalizedString(CodingKeys.filtersApplyButton.rawValue, comment: "")
        self.filtersInformationPrice = try container.decodeIfPresent(String.self, forKey: .filtersInformationPrice) ?? NSLocalizedString(CodingKeys.filtersInformationPrice.rawValue, comment: "")
        self.filtersMaxPowerEvInfo = try container.decodeIfPresent(String.self, forKey: .filtersMaxPowerEvInfo) ?? NSLocalizedString(CodingKeys.filtersMaxPowerEvInfo.rawValue, comment: "")
        self.filtersOnlyAvailable = try container.decodeIfPresent(String.self, forKey: .filtersOnlyAvailable) ?? NSLocalizedString(CodingKeys.filtersOnlyAvailable.rawValue, comment: "")
        self.filtersOnlyOnline = try container.decodeIfPresent(String.self, forKey: .filtersOnlyOnline) ?? NSLocalizedString(CodingKeys.filtersOnlyOnline.rawValue, comment: "")
        self.filtersOnlyPerKwh = try container.decodeIfPresent(String.self, forKey: .filtersOnlyPerKwh) ?? NSLocalizedString(CodingKeys.filtersOnlyPerKwh.rawValue, comment: "")
        self.filtersOnlyPerMin = try container.decodeIfPresent(String.self, forKey: .filtersOnlyPerMin) ?? NSLocalizedString(CodingKeys.filtersOnlyPerMin.rawValue, comment: "")
        self.filtersTariff = try container.decodeIfPresent(String.self, forKey: .filtersTariff) ?? NSLocalizedString(CodingKeys.filtersTariff.rawValue, comment: "")
        self.filtersAvailability = try container.decodeIfPresent(String.self, forKey: .filtersAvailability) ?? NSLocalizedString(CodingKeys.filtersAvailability.rawValue, comment: "")
        // MARK: - FAVOURITES PAGE KEYS
        self.favouritesEmptyViewWithoutLoginSubTitleUnderline = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewWithoutLoginSubTitleUnderline) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitleUnderline.rawValue, comment: "")
        self.favouritesEmptyViewTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewTitle.rawValue, comment: "")
        self.favouritesEmptyViewSubTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewSubTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewSubTitle.rawValue, comment: "")
        self.favouritesEmptyViewWithoutLoginSubTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewWithoutLoginSubTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitle.rawValue, comment: "")
        self.favouritesTitle = try container.decodeIfPresent(String.self, forKey: .favouritesTitle) ?? NSLocalizedString(CodingKeys.favouritesTitle.rawValue, comment: "")
        // MARK: - CHARGING POINT PAGE KEYS
        self.chargerDetailsStop = try container.decodeIfPresent(String.self, forKey: .chargerDetailsStop) ?? NSLocalizedString(CodingKeys.chargerDetailsStop.rawValue, comment: "")
        self.chargerDetailsNetworkPhone = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetworkPhone) ?? NSLocalizedString(CodingKeys.chargerDetailsNetworkPhone.rawValue, comment: "")
        self.chargerDetailsNetworkEmail = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetworkEmail) ?? NSLocalizedString(CodingKeys.chargerDetailsNetworkEmail.rawValue, comment: "")
        self.chargerDetailsPriceEstimative = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPriceEstimative) ?? NSLocalizedString(CodingKeys.chargerDetailsPriceEstimative.rawValue, comment: "")
        self.chargerDetailsPower = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPower) ?? NSLocalizedString(CodingKeys.chargerDetailsPower.rawValue, comment: "")
        self.chargerDetailsBookButton = try container.decodeIfPresent(String.self, forKey: .chargerDetailsBookButton) ?? NSLocalizedString(CodingKeys.chargerDetailsBookButton.rawValue, comment: "")
        self.chargerDetailsCharge = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCharge) ?? NSLocalizedString(CodingKeys.chargerDetailsCharge.rawValue, comment: "")
        self.chargerDetailsDistance = try container.decodeIfPresent(String.self, forKey: .chargerDetailsDistance) ?? NSLocalizedString(CodingKeys.chargerDetailsDistance.rawValue, comment: "")
        self.chargerDetailsNotificationCreated = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNotificationCreated) ?? NSLocalizedString(CodingKeys.chargerDetailsNotificationCreated.rawValue, comment: "")
        self.chargerDetailsTooFarFromTheCharger = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTooFarFromTheCharger) ?? NSLocalizedString(CodingKeys.chargerDetailsTooFarFromTheCharger.rawValue, comment: "")
        self.chargerDetailsContract = try container.decodeIfPresent(String.self, forKey: .chargerDetailsContract) ?? NSLocalizedString(CodingKeys.chargerDetailsContract.rawValue, comment: "")
        self.chargerDetailsNoRFID = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoRFID) ?? NSLocalizedString(CodingKeys.chargerDetailsNoRFID.rawValue, comment: "")
        self.chargerDetailsMyEv = try container.decodeIfPresent(String.self, forKey: .chargerDetailsMyEv) ?? NSLocalizedString(CodingKeys.chargerDetailsMyEv.rawValue, comment: "")
        self.chargerDetailsAvailability = try container.decodeIfPresent(String.self, forKey: .chargerDetailsAvailability) ?? NSLocalizedString(CodingKeys.chargerDetailsAvailability.rawValue, comment: "")
        self.chargerDetailsChargingPointInfo = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingPointInfo) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingPointInfo.rawValue, comment: "")
        self.chargerDetailsChoosePlug = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChoosePlug) ?? NSLocalizedString(CodingKeys.chargerDetailsChoosePlug.rawValue, comment: "")
        self.chargerDetailsEstimateCost = try container.decodeIfPresent(String.self, forKey: .chargerDetailsEstimateCost) ?? NSLocalizedString(CodingKeys.chargerDetailsEstimateCost.rawValue, comment: "")
        self.chargerDetailsKWh = try container.decodeIfPresent(String.self, forKey: .chargerDetailsKWh) ?? NSLocalizedString(CodingKeys.chargerDetailsKWh.rawValue, comment: "")
        self.chargerDetailsParkingType = try container.decodeIfPresent(String.self, forKey: .chargerDetailsParkingType) ?? NSLocalizedString(CodingKeys.chargerDetailsParkingType.rawValue, comment: "")
        self.chargerDetailsPointsInterestNearby = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPointsInterestNearby) ?? NSLocalizedString(CodingKeys.chargerDetailsPointsInterestNearby.rawValue, comment: "")
        self.chargerDetailsPrice = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPrice) ?? NSLocalizedString(CodingKeys.chargerDetailsPrice.rawValue, comment: "")
        self.chargerDetailsReportIssue = try container.decodeIfPresent(String.self, forKey: .chargerDetailsReportIssue) ?? NSLocalizedString(CodingKeys.chargerDetailsReportIssue.rawValue, comment: "")
        self.chargerDetailsTime = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTime) ?? NSLocalizedString(CodingKeys.chargerDetailsTime.rawValue, comment: "")
        self.chargerDetailsVehicles = try container.decodeIfPresent(String.self, forKey: .chargerDetailsVehicles) ?? NSLocalizedString(CodingKeys.chargerDetailsVehicles.rawValue, comment: "")
        self.chargerDetailsChargingPointNoInfo = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingPointNoInfo) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingPointNoInfo.rawValue, comment: "")
        self.chargerDetailsNoDistance = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoDistance) ?? NSLocalizedString(CodingKeys.chargerDetailsNoDistance.rawValue, comment: "")
        self.chargerDetailsNoPlugTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoPlugTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsNoPlugTariff.rawValue, comment: "")
        self.chargerDetailsCustomCharge = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCustomCharge) ?? NSLocalizedString(CodingKeys.chargerDetailsCustomCharge.rawValue, comment: "")
        self.chargerDetailsNotifyMeLabel = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNotifyMeLabel) ?? NSLocalizedString(CodingKeys.chargerDetailsNotifyMeLabel.rawValue, comment: "")
        self.chargerDetailsChargeXMin = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargeXMin) ?? NSLocalizedString(CodingKeys.chargerDetailsChargeXMin.rawValue, comment: "")
        self.chargerDetailsChargeXkWh = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargeXkWh) ?? NSLocalizedString(CodingKeys.chargerDetailsChargeXkWh.rawValue, comment: "")
        self.chargerDetailsSpendOnlyXEuros = try container.decodeIfPresent(String.self, forKey: .chargerDetailsSpendOnlyXEuros) ?? NSLocalizedString(CodingKeys.chargerDetailsSpendOnlyXEuros.rawValue, comment: "")
        self.chargerDetailsYouAlreadyHaveANotification = try container.decodeIfPresent(String.self, forKey: .chargerDetailsYouAlreadyHaveANotification) ?? NSLocalizedString(CodingKeys.chargerDetailsYouAlreadyHaveANotification.rawValue, comment: "")
        self.chargerDetailsChargingScheduling = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingScheduling) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingScheduling.rawValue, comment: "")
        self.chargerDetailsDatesCannotBeEqual = try container.decodeIfPresent(String.self, forKey: .chargerDetailsDatesCannotBeEqual) ?? NSLocalizedString(CodingKeys.chargerDetailsDatesCannotBeEqual.rawValue, comment: "")
        self.chargerDetailsChargingTimeCannotBeLongerThan = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingTimeCannotBeLongerThan) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingTimeCannotBeLongerThan.rawValue, comment: "")
        self.chargerDetailsStart = try container.decodeIfPresent(String.self, forKey: .chargerDetailsStart) ?? NSLocalizedString(CodingKeys.chargerDetailsStart.rawValue, comment: "")
        self.chargerDetailsSchedule = try container.decodeIfPresent(String.self, forKey: .chargerDetailsSchedule) ?? NSLocalizedString(CodingKeys.chargerDetailsSchedule.rawValue, comment: "")
        self.chargerDetailsLowerTariffPeriod = try container.decodeIfPresent(String.self, forKey: .chargerDetailsLowerTariffPeriod) ?? NSLocalizedString(CodingKeys.chargerDetailsLowerTariffPeriod.rawValue, comment: "")
        self.chargerDetailsGreenCharging = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGreenCharging) ?? NSLocalizedString(CodingKeys.chargerDetailsGreenCharging.rawValue, comment: "")
        self.chargerDetailsNetwork = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetwork) ?? NSLocalizedString(CodingKeys.chargerDetailsNetwork.rawValue, comment: "")
        self.chargerDetailsOperator = try container.decodeIfPresent(String.self, forKey: .chargerDetailsOperator) ?? NSLocalizedString(CodingKeys.chargerDetailsOperator.rawValue, comment: "")
        self.chargerDetailsChargerIdentifier = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerIdentifier) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerIdentifier.rawValue, comment: "")
        self.chargerDetailsChargerManufacturer = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerManufacturer) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerManufacturer.rawValue, comment: "")
        self.chargerDetailsChargersModel = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargersModel) ?? NSLocalizedString(CodingKeys.chargerDetailsChargersModel.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSPart1 = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSPart1) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSPart2 = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSPart2) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart2.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSBoldPart = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSBoldPart) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSBoldPart.rawValue, comment: "")
        self.chargerDetailsCemeTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCemeTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsCemeTariff.rawValue, comment: "")
        self.chargerDetailsAlways = try container.decodeIfPresent(String.self, forKey: .chargerDetailsAlways) ?? NSLocalizedString(CodingKeys.chargerDetailsAlways.rawValue, comment: "")
        self.chargerDetailsLimited = try container.decodeIfPresent(String.self, forKey: .chargerDetailsLimited) ?? NSLocalizedString(CodingKeys.chargerDetailsLimited.rawValue, comment: "")
        self.chargerDetailsWrongBehaviorStation = try container.decodeIfPresent(String.self, forKey: .chargerDetailsWrongBehaviorStation) ?? NSLocalizedString(CodingKeys.chargerDetailsWrongBehaviorStation.rawValue, comment: "")
        self.chargerDetailsTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsTariff.rawValue, comment: "")
        self.chargerPointFullDetailsThanksForTheImageMessage = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsThanksForTheImageMessage) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsThanksForTheImageMessage.rawValue, comment: "")
        self.chargerPointFullDetailsStopDateShouldBeAfterStartDate = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsStopDateShouldBeAfterStartDate) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsStopDateShouldBeAfterStartDate.rawValue, comment: "")
        self.chargerPointFullDetailsChargingTimeMinimumDuration = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsChargingTimeMinimumDuration) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsChargingTimeMinimumDuration.rawValue, comment: "")
        self.chargerDetailsGoToPaymentMethods = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGoToPaymentMethods) ?? NSLocalizedString(CodingKeys.chargerDetailsGoToPaymentMethods.rawValue, comment: "")
        self.chargerDetailsGoToBillingProfile = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGoToBillingProfile) ?? NSLocalizedString(CodingKeys.chargerDetailsGoToBillingProfile.rawValue, comment: "")
        // MARK: - PLUG STATUS KEYS
        self.plugStatusAvailable = try container.decodeIfPresent(String.self, forKey: .plugStatusAvailable) ?? NSLocalizedString(CodingKeys.plugStatusAvailable.rawValue, comment: "")
        self.plugStatusBlocked = try container.decodeIfPresent(String.self, forKey: .plugStatusBlocked) ?? NSLocalizedString(CodingKeys.plugStatusBlocked.rawValue, comment: "")
        self.plugStatusCharging = try container.decodeIfPresent(String.self, forKey: .plugStatusCharging) ?? NSLocalizedString(CodingKeys.plugStatusCharging.rawValue, comment: "")
        self.plugStatusInoperative = try container.decodeIfPresent(String.self, forKey: .plugStatusInoperative) ?? NSLocalizedString(CodingKeys.plugStatusInoperative.rawValue, comment: "")
        self.plugStatusOutOfOrder = try container.decodeIfPresent(String.self, forKey: .plugStatusOutOfOrder) ?? NSLocalizedString(CodingKeys.plugStatusOutOfOrder.rawValue, comment: "")
        self.plugStatusPlanned = try container.decodeIfPresent(String.self, forKey: .plugStatusPlanned) ?? NSLocalizedString(CodingKeys.plugStatusPlanned.rawValue, comment: "")
        self.plugStatusRemoved = try container.decodeIfPresent(String.self, forKey: .plugStatusRemoved) ?? NSLocalizedString(CodingKeys.plugStatusRemoved.rawValue, comment: "")
        self.plugStatusBooked = try container.decodeIfPresent(String.self, forKey: .plugStatusBooked) ?? NSLocalizedString(CodingKeys.plugStatusBooked.rawValue, comment: "")
        self.plugStatusUnknown = try container.decodeIfPresent(String.self, forKey: .plugStatusUnknown) ?? NSLocalizedString(CodingKeys.plugStatusUnknown.rawValue, comment: "")
        self.plugStatusMobieOutOfOrderMessage = try container.decodeIfPresent(String.self, forKey: .plugStatusMobieOutOfOrderMessage) ?? NSLocalizedString(CodingKeys.plugStatusMobieOutOfOrderMessage.rawValue, comment: "")
        // MARK: - ESTIMATED COST PAGE KEYS
        self.estimatedCostInfoTeslaEViOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoTeslaEViOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoTeslaEViOS.rawValue, comment: "")
        self.estimatedCostInfoEVIOEviOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoEVIOEviOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoEVIOEviOS.rawValue, comment: "")
        self.estimatedCostMobieNoEviOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostMobieNoEviOS) ?? NSLocalizedString(CodingKeys.estimatedCostMobieNoEviOS.rawValue, comment: "")
        self.estimatedCostInfoMobiePart1iOs = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoMobiePart1iOs) ?? NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart1iOs.rawValue, comment: "")
        self.estimatedCostInfoMobiePart2iOs = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoMobiePart2iOs) ?? NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart2iOs.rawValue, comment: "")
        self.estimatedCostTextInfoTeslaiOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostTextInfoTeslaiOS) ?? NSLocalizedString(CodingKeys.estimatedCostTextInfoTeslaiOS.rawValue, comment: "")
        self.estimatedCostInfoTeslaWithEViOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoTeslaWithEViOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoTeslaWithEViOS.rawValue, comment: "")
        self.estimatedCostEVIOHours = try container.decodeIfPresent(String.self, forKey: .estimatedCostEVIOHours) ?? NSLocalizedString(CodingKeys.estimatedCostEVIOHours.rawValue, comment: "")
        self.estimatedCostEVIOMinutes = try container.decodeIfPresent(String.self, forKey: .estimatedCostEVIOMinutes) ?? NSLocalizedString(CodingKeys.estimatedCostEVIOMinutes.rawValue, comment: "")
        self.estimatedCostSelectedPlug = try container.decodeIfPresent(String.self, forKey: .estimatedCostSelectedPlug) ?? NSLocalizedString(CodingKeys.estimatedCostSelectedPlug.rawValue, comment: "")
        self.estimatedCostInfoWalletPrice = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoWalletPrice) ?? NSLocalizedString(CodingKeys.estimatedCostInfoWalletPrice.rawValue, comment: "")
        self.estimatedCostEvioActivation = try container.decodeIfPresent(String.self, forKey: .estimatedCostEvioActivation) ?? NSLocalizedString(CodingKeys.estimatedCostEvioActivation.rawValue, comment: "")
        self.estimatedCostEvioActivationValue = try container.decodeIfPresent(String.self, forKey: .estimatedCostEvioActivationValue) ?? NSLocalizedString(CodingKeys.estimatedCostEvioActivationValue.rawValue, comment: "")
        self.estimatedCostTextInfoEvio = try container.decodeIfPresent(String.self, forKey: .estimatedCostTextInfoEvio) ?? NSLocalizedString(CodingKeys.estimatedCostTextInfoEvio.rawValue, comment: "")
        self.estimatedCostOpcTariff = try container.decodeIfPresent(String.self, forKey: .estimatedCostOpcTariff) ?? NSLocalizedString(CodingKeys.estimatedCostOpcTariff.rawValue, comment: "")
        self.estimatedCostCemeTariff = try container.decodeIfPresent(String.self, forKey: .estimatedCostCemeTariff) ?? NSLocalizedString(CodingKeys.estimatedCostCemeTariff.rawValue, comment: "")
        self.estimatedCostActivation = try container.decodeIfPresent(String.self, forKey: .estimatedCostActivation) ?? NSLocalizedString(CodingKeys.estimatedCostActivation.rawValue, comment: "")
        self.estimatedCostPerMinute = try container.decodeIfPresent(String.self, forKey: .estimatedCostPerMinute) ?? NSLocalizedString(CodingKeys.estimatedCostPerMinute.rawValue, comment: "")
        self.estimatedCostPerKwH = try container.decodeIfPresent(String.self, forKey: .estimatedCostPerKwH) ?? NSLocalizedString(CodingKeys.estimatedCostPerKwH.rawValue, comment: "")
        self.estimatedCostFees = try container.decodeIfPresent(String.self, forKey: .estimatedCostFees) ?? NSLocalizedString(CodingKeys.estimatedCostFees.rawValue, comment: "")
        self.estimatedCostIec = try container.decodeIfPresent(String.self, forKey: .estimatedCostIec) ?? NSLocalizedString(CodingKeys.estimatedCostIec.rawValue, comment: "")
        self.estimatedCostTar = try container.decodeIfPresent(String.self, forKey: .estimatedCostTar) ?? NSLocalizedString(CodingKeys.estimatedCostTar.rawValue, comment: "")
        self.estimatedCostVat = try container.decodeIfPresent(String.self, forKey: .estimatedCostVat) ?? NSLocalizedString(CodingKeys.estimatedCostVat.rawValue, comment: "")
        self.estimatedCostCeme = try container.decodeIfPresent(String.self, forKey: .estimatedCostCeme) ?? NSLocalizedString(CodingKeys.estimatedCostCeme.rawValue, comment: "")
        self.estimatedCostOpc = try container.decodeIfPresent(String.self, forKey: .estimatedCostOpc) ?? NSLocalizedString(CodingKeys.estimatedCostOpc.rawValue, comment: "")
        self.estimatedCostTotal = try container.decodeIfPresent(String.self, forKey: .estimatedCostTotal) ?? NSLocalizedString(CodingKeys.estimatedCostTotal.rawValue, comment: "")
        self.estimatedCostChargingTime = try container.decodeIfPresent(String.self, forKey: .estimatedCostChargingTime) ?? NSLocalizedString(CodingKeys.estimatedCostChargingTime.rawValue, comment: "")
        self.estimatedCostTotalPower = try container.decodeIfPresent(String.self, forKey: .estimatedCostTotalPower) ?? NSLocalizedString(CodingKeys.estimatedCostTotalPower.rawValue, comment: "")
        self.estimatedCostParking = try container.decodeIfPresent(String.self, forKey: .estimatedCostParking) ?? NSLocalizedString(CodingKeys.estimatedCostParking.rawValue, comment: "")
        self.estimatedCostCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostCharging) ?? NSLocalizedString(CodingKeys.estimatedCostCharging.rawValue, comment: "")
        self.estimatedCostBooking = try container.decodeIfPresent(String.self, forKey: .estimatedCostBooking) ?? NSLocalizedString(CodingKeys.estimatedCostBooking.rawValue, comment: "")
        self.estimatedCostParkingDuringCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostParkingDuringCharging) ?? NSLocalizedString(CodingKeys.estimatedCostParkingDuringCharging.rawValue, comment: "")
        self.estimatedCostParkingAfterCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostParkingAfterCharging) ?? NSLocalizedString(CodingKeys.estimatedCostParkingAfterCharging.rawValue, comment: "")
        // MARK: - AVAILABILITY KEYS
        self.availabilityTo = try container.decodeIfPresent(String.self, forKey: .availabilityTo) ?? NSLocalizedString(CodingKeys.availabilityTo.rawValue, comment: "")
        // MARK: - CONTRACTS PAGE KEYS
        self.contractsTitle = try container.decodeIfPresent(String.self, forKey: .contractsTitle) ?? NSLocalizedString(CodingKeys.contractsTitle.rawValue, comment: "")
        self.contractsRoamingNotActive = try container.decodeIfPresent(String.self, forKey: .contractsRoamingNotActive) ?? NSLocalizedString(CodingKeys.contractsRoamingNotActive.rawValue, comment: "")
        self.contractsMyContracts = try container.decodeIfPresent(String.self, forKey: .contractsMyContracts) ?? NSLocalizedString(CodingKeys.contractsMyContracts.rawValue, comment: "")
        self.contractsOtherContracts = try container.decodeIfPresent(String.self, forKey: .contractsOtherContracts) ?? NSLocalizedString(CodingKeys.contractsOtherContracts.rawValue, comment: "")
        self.contractsSelectContract = try container.decodeIfPresent(String.self, forKey: .contractsSelectContract) ?? NSLocalizedString(CodingKeys.contractsSelectContract.rawValue, comment: "")
        self.contractsContractNoValidForRoaming = try container.decodeIfPresent(String.self, forKey: .contractsContractNoValidForRoaming) ?? NSLocalizedString(CodingKeys.contractsContractNoValidForRoaming.rawValue, comment: "")
        self.contractsContractNotValidForMobie = try container.decodeIfPresent(String.self, forKey: .contractsContractNotValidForMobie) ?? NSLocalizedString(CodingKeys.contractsContractNotValidForMobie.rawValue, comment: "")
        self.contractsContractNoValidForMobieButCanBeUsedForAdHoc = try container.decodeIfPresent(String.self, forKey: .contractsContractNoValidForMobieButCanBeUsedForAdHoc) ?? NSLocalizedString(CodingKeys.contractsContractNoValidForMobieButCanBeUsedForAdHoc.rawValue, comment: "")
        self.contractsContractNoActiveForEv = try container.decodeIfPresent(String.self, forKey: .contractsContractNoActiveForEv) ?? NSLocalizedString(CodingKeys.contractsContractNoActiveForEv.rawValue, comment: "")
        self.contractsNoOtherContracts = try container.decodeIfPresent(String.self, forKey: .contractsNoOtherContracts) ?? NSLocalizedString(CodingKeys.contractsNoOtherContracts.rawValue, comment: "")
        self.contractsNoContracts = try container.decodeIfPresent(String.self, forKey: .contractsNoContracts) ?? NSLocalizedString(CodingKeys.contractsNoContracts.rawValue, comment: "")
        self.contractsNoAccessForEvioNetwork = try container.decodeIfPresent(String.self, forKey: .contractsNoAccessForEvioNetwork) ?? NSLocalizedString(CodingKeys.contractsNoAccessForEvioNetwork.rawValue, comment: "")
        self.contractsVirtualCard = try container.decodeIfPresent(String.self, forKey: .contractsVirtualCard) ?? NSLocalizedString(CodingKeys.contractsVirtualCard.rawValue, comment: "")
        self.contractsVirtualAndPhysicalCard = try container.decodeIfPresent(String.self, forKey: .contractsVirtualAndPhysicalCard) ?? NSLocalizedString(CodingKeys.contractsVirtualAndPhysicalCard.rawValue, comment: "")
        self.contractsChargeVehicleOnNetwork = try container.decodeIfPresent(String.self, forKey: .contractsChargeVehicleOnNetwork) ?? NSLocalizedString(CodingKeys.contractsChargeVehicleOnNetwork.rawValue, comment: "")
        self.contractsAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsAccessToNetwork.rawValue, comment: "")
        self.contractsTariffInfo = try container.decodeIfPresent(String.self, forKey: .contractsTariffInfo) ?? NSLocalizedString(CodingKeys.contractsTariffInfo.rawValue, comment: "")
        self.contractsTariffInfoEvio = try container.decodeIfPresent(String.self, forKey: .contractsTariffInfoEvio) ?? NSLocalizedString(CodingKeys.contractsTariffInfoEvio.rawValue, comment: "")
        self.contractsActivateCardButton = try container.decodeIfPresent(String.self, forKey: .contractsActivateCardButton) ?? NSLocalizedString(CodingKeys.contractsActivateCardButton.rawValue, comment: "")
        self.contractsJoinButton = try container.decodeIfPresent(String.self, forKey: .contractsJoinButton) ?? NSLocalizedString(CodingKeys.contractsJoinButton.rawValue, comment: "")
        self.contractsNoAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsNoAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsNoAccessToNetwork.rawValue, comment: "")
        self.contractsAlreadyRequestedAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsAlreadyRequestedAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsAlreadyRequestedAccessToNetwork.rawValue, comment: "")
        self.contractsAdHocAlertPart1 = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertPart1) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertPart1.rawValue, comment: "")
        self.contractsAdHocAlertPart2 = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertPart2) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertPart2.rawValue, comment: "")
        self.contractsAdHocAlertBoldPart = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertBoldPart) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertBoldPart.rawValue, comment: "")
        self.contractsAdHocAlertNextButton = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertNextButton) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertNextButton.rawValue, comment: "")
        self.contractsMessageInfoActivationOkGv = try container.decodeIfPresent(String.self, forKey: .contractsMessageInfoActivationOkGv) ?? NSLocalizedString(CodingKeys.contractsMessageInfoActivationOkGv.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditions = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditions) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditionsConditions1 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditionsConditions1) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions1.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditionsConditions2 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditionsConditions2) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions2.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditions2 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditions2) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions2.rawValue, comment: "")
        self.contractsMobieGeneralConditionsRequired = try container.decodeIfPresent(String.self, forKey: .contractsMobieGeneralConditionsRequired) ?? NSLocalizedString(CodingKeys.contractsMobieGeneralConditionsRequired.rawValue, comment: "")
        self.contractsClientIdentification = try container.decodeIfPresent(String.self, forKey: .contractsClientIdentification) ?? NSLocalizedString(CodingKeys.contractsClientIdentification.rawValue, comment: "")
        self.contractsCardActivatedSuccessfully = try container.decodeIfPresent(String.self, forKey: .contractsCardActivatedSuccessfully) ?? NSLocalizedString(CodingKeys.contractsCardActivatedSuccessfully.rawValue, comment: "")
        self.contractsPaymentMethod = try container.decodeIfPresent(String.self, forKey: .contractsPaymentMethod) ?? NSLocalizedString(CodingKeys.contractsPaymentMethod.rawValue, comment: "")
        // MARK: - EVS PAGE KEYS
        self.evsSelectEvTitle = try container.decodeIfPresent(String.self, forKey: .evsSelectEvTitle) ?? NSLocalizedString(CodingKeys.evsSelectEvTitle.rawValue, comment: "")
        self.evsMyEvs = try container.decodeIfPresent(String.self, forKey: .evsMyEvs) ?? NSLocalizedString(CodingKeys.evsMyEvs.rawValue, comment: "")
        self.evsOtherEvs = try container.decodeIfPresent(String.self, forKey: .evsOtherEvs) ?? NSLocalizedString(CodingKeys.evsOtherEvs.rawValue, comment: "")
        self.evsAddVehicle = try container.decodeIfPresent(String.self, forKey: .evsAddVehicle) ?? NSLocalizedString(CodingKeys.evsAddVehicle.rawValue, comment: "")
        self.evsNoOtherEvsTitle = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsTitle) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsTitle.rawValue, comment: "")
        self.evsNoOtherEvsSubTitle = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsSubTitle) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsSubTitle.rawValue, comment: "")
        self.evsNoOtherEvsSubtitleNoLogin = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsSubtitleNoLogin) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsSubtitleNoLogin.rawValue, comment: "")
        self.evsNewEv = try container.decodeIfPresent(String.self, forKey: .evsNewEv) ?? NSLocalizedString(CodingKeys.evsNewEv.rawValue, comment: "")
        self.evsNewEvInfo = try container.decodeIfPresent(String.self, forKey: .evsNewEvInfo) ?? NSLocalizedString(CodingKeys.evsNewEvInfo.rawValue, comment: "")
        self.evsBrand = try container.decodeIfPresent(String.self, forKey: .evsBrand) ?? NSLocalizedString(CodingKeys.evsBrand.rawValue, comment: "")
        self.evsModel = try container.decodeIfPresent(String.self, forKey: .evsModel) ?? NSLocalizedString(CodingKeys.evsModel.rawValue, comment: "")
        self.evsVersion = try container.decodeIfPresent(String.self, forKey: .evsVersion) ?? NSLocalizedString(CodingKeys.evsVersion.rawValue, comment: "")
        self.evsChargerPower = try container.decodeIfPresent(String.self, forKey: .evsChargerPower) ?? NSLocalizedString(CodingKeys.evsChargerPower.rawValue, comment: "")
        self.evsRange = try container.decodeIfPresent(String.self, forKey: .evsRange) ?? NSLocalizedString(CodingKeys.evsRange.rawValue, comment: "")
        self.evsBatteryCapacity = try container.decodeIfPresent(String.self, forKey: .evsBatteryCapacity) ?? NSLocalizedString(CodingKeys.evsBatteryCapacity.rawValue, comment: "")
        self.evsChargingTime = try container.decodeIfPresent(String.self, forKey: .evsChargingTime) ?? NSLocalizedString(CodingKeys.evsChargingTime.rawValue, comment: "")
        self.evsInternalChargingPower = try container.decodeIfPresent(String.self, forKey: .evsInternalChargingPower) ?? NSLocalizedString(CodingKeys.evsInternalChargingPower.rawValue, comment: "")
        self.evsFastChargingPower = try container.decodeIfPresent(String.self, forKey: .evsFastChargingPower) ?? NSLocalizedString(CodingKeys.evsFastChargingPower.rawValue, comment: "")
        self.evsFastChargingTime = try container.decodeIfPresent(String.self, forKey: .evsFastChargingTime) ?? NSLocalizedString(CodingKeys.evsFastChargingTime.rawValue, comment: "")
        self.evsVehiclePlugs = try container.decodeIfPresent(String.self, forKey: .evsVehiclePlugs) ?? NSLocalizedString(CodingKeys.evsVehiclePlugs.rawValue, comment: "")
        self.evsCharging = try container.decodeIfPresent(String.self, forKey: .evsCharging) ?? NSLocalizedString(CodingKeys.evsCharging.rawValue, comment: "")
        self.evsNotCharging = try container.decodeIfPresent(String.self, forKey: .evsNotCharging) ?? NSLocalizedString(CodingKeys.evsNotCharging.rawValue, comment: "")
        self.evsLeaveGroupTitle = try container.decodeIfPresent(String.self, forKey: .evsLeaveGroupTitle) ?? NSLocalizedString(CodingKeys.evsLeaveGroupTitle.rawValue, comment: "")
        self.evsLeaveGroupMessage = try container.decodeIfPresent(String.self, forKey: .evsLeaveGroupMessage) ?? NSLocalizedString(CodingKeys.evsLeaveGroupMessage.rawValue, comment: "")
        self.evsDrivers = try container.decodeIfPresent(String.self, forKey: .evsDrivers) ?? NSLocalizedString(CodingKeys.evsDrivers.rawValue, comment: "")
        self.evsCurrentPlafond = try container.decodeIfPresent(String.self, forKey: .evsCurrentPlafond) ?? NSLocalizedString(CodingKeys.evsCurrentPlafond.rawValue, comment: "")
        self.evsMonthlyPlafond = try container.decodeIfPresent(String.self, forKey: .evsMonthlyPlafond) ?? NSLocalizedString(CodingKeys.evsMonthlyPlafond.rawValue, comment: "")
        self.evsUsedPlafond = try container.decodeIfPresent(String.self, forKey: .evsUsedPlafond) ?? NSLocalizedString(CodingKeys.evsUsedPlafond.rawValue, comment: "")
        self.evsPlafond = NSLocalizedString(CodingKeys.evsPlafond.rawValue, comment: "")
        self.evsCompany = try container.decodeIfPresent(String.self, forKey: .evsCompany) ?? NSLocalizedString(CodingKeys.evsCompany.rawValue, comment: "")
        self.evsPlafondMovements = try container.decodeIfPresent(String.self, forKey: .evsPlafondMovements) ?? NSLocalizedString(CodingKeys.evsPlafondMovements.rawValue, comment: "")
        self.evsNoPlafondMovements = try container.decodeIfPresent(String.self, forKey: .evsNoPlafondMovements) ?? NSLocalizedString(CodingKeys.evsNoPlafondMovements.rawValue, comment: "")
        self.evsDuration = try container.decodeIfPresent(String.self, forKey: .evsDuration) ?? NSLocalizedString(CodingKeys.evsDuration.rawValue, comment: "") 
        self.evsMovement = try container.decodeIfPresent(String.self, forKey: .evsMovement) ?? NSLocalizedString(CodingKeys.evsMovement.rawValue, comment: "") 
        self.evsNetwork = try container.decodeIfPresent(String.self, forKey: .evsNetwork) ?? NSLocalizedString(CodingKeys.evsNetwork.rawValue, comment: "")
        // MARK: - VALIDATION MESSAGE PAGE KEYS
        self.validationMessageProceedNowBt = try container.decodeIfPresent(String.self, forKey: .validationMessageProceedNowBt) ?? NSLocalizedString(CodingKeys.validationMessageProceedNowBt.rawValue, comment: "")
        self.validationMessageAdhocInfo2iOS = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2iOS) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2iOS.rawValue, comment: "")
        self.validationMessageMessageInfoActivationOkGv = try container.decodeIfPresent(String.self, forKey: .validationMessageMessageInfoActivationOkGv) ?? NSLocalizedString(CodingKeys.validationMessageMessageInfoActivationOkGv.rawValue, comment: "")
        self.validationMessageNotHaveContractRoamingNote = try container.decodeIfPresent(String.self, forKey: .validationMessageNotHaveContractRoamingNote) ?? NSLocalizedString(CodingKeys.validationMessageNotHaveContractRoamingNote.rawValue, comment: "")
        self.validationMessageAdhocInfoNew = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNew) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNew.rawValue, comment: "")
        self.validationMessageAdhocFooterNote = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNote) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNote.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteUnderline = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteUnderline) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteUnderline.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGeneric.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteGenericUnderline = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteGenericUnderline) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGenericUnderline.rawValue, comment: "")
        self.validationMessageAdhocInfoGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoGeneric.rawValue, comment: "")
        self.validationMessageAdhocInfo2GenericAndroid = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2GenericAndroid) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericAndroid.rawValue, comment: "")
        self.validationMessageAdhocInfo2GenericBoldAndroid = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2GenericBoldAndroid) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericBoldAndroid.rawValue, comment: "")
        self.validationMessageAdhocInfoNewGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNewGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewGeneric.rawValue, comment: "")
        self.validationMessageAdhocInfoNewV2Generic = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNewV2Generic) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewV2Generic.rawValue, comment: "")
        // MARK: - REPORT MESSAGE PAGE KEYS
        self.reportIssueTitle = try container.decodeIfPresent(String.self, forKey: .reportIssueTitle) ?? NSLocalizedString(CodingKeys.reportIssueTitle.rawValue, comment: "")
        self.reportIssueBtSend = try container.decodeIfPresent(String.self, forKey: .reportIssueBtSend) ?? NSLocalizedString(CodingKeys.reportIssueBtSend.rawValue, comment: "")
        self.reportIssueSubtitle = try container.decodeIfPresent(String.self, forKey: .reportIssueSubtitle) ?? NSLocalizedString(CodingKeys.reportIssueSubtitle.rawValue, comment: "")
        // MARK: - CREATE ACCOUNT PAGE KEYS
        self.createAccountSignIn = try container.decodeIfPresent(String.self, forKey: .createAccountSignIn) ?? NSLocalizedString(CodingKeys.createAccountSignIn.rawValue, comment: "")
        self.createAccountHaveAccount = try container.decodeIfPresent(String.self, forKey: .createAccountHaveAccount) ?? NSLocalizedString(CodingKeys.createAccountHaveAccount.rawValue, comment: "")
        self.createAccountCreateAccount = try container.decodeIfPresent(String.self, forKey: .createAccountCreateAccount) ?? NSLocalizedString(CodingKeys.createAccountCreateAccount.rawValue, comment: "")
        // MARK: - SIGNUP PAGE KEYS
        self.signupTitle = try container.decodeIfPresent(String.self, forKey: .signupTitle) ?? NSLocalizedString(CodingKeys.signupTitle.rawValue, comment: "")
        self.signUpPasswordDoesNotMeetRequirements = try container.decodeIfPresent(String.self, forKey: .signUpPasswordDoesNotMeetRequirements) ?? NSLocalizedString(CodingKeys.signUpPasswordDoesNotMeetRequirements.rawValue, comment: "")
        self.signUpAtLeastNumberOfCharacters = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastNumberOfCharacters) ?? NSLocalizedString(CodingKeys.signUpAtLeastNumberOfCharacters.rawValue, comment: "")
        self.signUpAtLeastLowerCase = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastLowerCase) ?? NSLocalizedString(CodingKeys.signUpAtLeastLowerCase.rawValue, comment: "")
        self.signUpAtLeastUpperCase = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastUpperCase) ?? NSLocalizedString(CodingKeys.signUpAtLeastUpperCase.rawValue, comment: "")
        self.signUpAtLeastNumber = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastNumber) ?? NSLocalizedString(CodingKeys.signUpAtLeastNumber.rawValue, comment: "")
        self.signUpAtLeastSpecialCharacter = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastSpecialCharacter) ?? NSLocalizedString(CodingKeys.signUpAtLeastSpecialCharacter.rawValue, comment: "")
        self.signUpTermsAndConditionsMustBeAccepted = try container.decodeIfPresent(String.self, forKey: .signUpTermsAndConditionsMustBeAccepted) ?? NSLocalizedString(CodingKeys.signUpTermsAndConditionsMustBeAccepted.rawValue, comment: "")
        self.signUpPasswordDoesNotContainInvalidSpecialCharacters = try container.decodeIfPresent(String.self, forKey: .signUpPasswordDoesNotContainInvalidSpecialCharacters) ?? NSLocalizedString(CodingKeys.signUpPasswordDoesNotContainInvalidSpecialCharacters.rawValue, comment: "")
        self.signUpCreateApassword = try container.decodeIfPresent(String.self, forKey: .signUpCreateApassword) ?? NSLocalizedString(CodingKeys.signUpCreateApassword.rawValue, comment: "")
        self.signUpEnterAPassword = try container.decodeIfPresent(String.self, forKey: .signUpEnterAPassword) ?? NSLocalizedString(CodingKeys.signUpEnterAPassword.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTerms = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTerms) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTerms.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTermsTermCond = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTermsTermCond) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsTermCond.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTermsPriPol = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTermsPriPol) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsPriPol.rawValue, comment: "")
        self.signUpTermAndCondDetailsPassword = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondDetailsPassword) ?? NSLocalizedString(CodingKeys.signUpTermAndCondDetailsPassword.rawValue, comment: "")
        self.signUpTermAndCondLicenseMarketing = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondLicenseMarketing) ?? NSLocalizedString(CodingKeys.signUpTermAndCondLicenseMarketing.rawValue, comment: "")
        self.signUpLicenseServices = try container.decodeIfPresent(String.self, forKey: .signUpLicenseServices) ?? NSLocalizedString(CodingKeys.signUpLicenseServices.rawValue, comment: "")
        self.signUpLicenseProducts = try container.decodeIfPresent(String.self, forKey: .signUpLicenseProducts) ?? NSLocalizedString(CodingKeys.signUpLicenseProducts.rawValue, comment: "")
        self.signUpGoChargeSuccess = try container.decodeIfPresent(String.self, forKey: .signUpGoChargeSuccess) ?? NSLocalizedString(CodingKeys.signUpGoChargeSuccess.rawValue, comment: "")
        self.signUpAcpCardNumber = try container.decodeIfPresent(String.self, forKey: .signUpAcpCardNumber) ?? NSLocalizedString(CodingKeys.signUpAcpCardNumber.rawValue, comment: "")
        self.signUpAcpMemberNumber = try container.decodeIfPresent(String.self, forKey: .signUpAcpMemberNumber) ?? NSLocalizedString(CodingKeys.signUpAcpMemberNumber.rawValue, comment: "")
        // MARK: - LOGIN PAGE KEYS
        self.loginButtonTitle = try container.decodeIfPresent(String.self, forKey: .loginButtonTitle) ?? NSLocalizedString(CodingKeys.loginButtonTitle.rawValue, comment: "")
        self.loginForgotPassword = try container.decodeIfPresent(String.self, forKey: .loginForgotPassword) ?? NSLocalizedString(CodingKeys.loginForgotPassword.rawValue, comment: "")
        self.loginForgotPasswordBoldPart = try container.decodeIfPresent(String.self, forKey: .loginForgotPasswordBoldPart) ?? NSLocalizedString(CodingKeys.loginForgotPasswordBoldPart.rawValue, comment: "")
        self.loginPhoneNumberRequired = try container.decodeIfPresent(String.self, forKey: .loginPhoneNumberRequired) ?? NSLocalizedString(CodingKeys.loginPhoneNumberRequired.rawValue, comment: "")
        self.loginOpenEmailApp = try container.decodeIfPresent(String.self, forKey: .loginOpenEmailApp) ?? NSLocalizedString(CodingKeys.loginOpenEmailApp.rawValue, comment: "")
        // MARK: - ACTIVATION PAGE KEYS
        self.activationTitle = try container.decodeIfPresent(String.self, forKey: .activationTitle) ?? NSLocalizedString(CodingKeys.activationTitle.rawValue, comment: "")
        self.activationSubTitle = try container.decodeIfPresent(String.self, forKey: .activationSubTitle) ?? NSLocalizedString(CodingKeys.activationSubTitle.rawValue, comment: "")
        self.activationSubTitleEmail = try container.decodeIfPresent(String.self, forKey: .activationSubTitleEmail) ?? NSLocalizedString(CodingKeys.activationSubTitleEmail.rawValue, comment: "")
        self.activationVerify = try container.decodeIfPresent(String.self, forKey: .activationVerify) ?? NSLocalizedString(CodingKeys.activationVerify.rawValue, comment: "")
        self.activationResendCode = try container.decodeIfPresent(String.self, forKey: .activationResendCode) ?? NSLocalizedString(CodingKeys.activationResendCode.rawValue, comment: "")
        self.activationResendCodeBoldPart = try container.decodeIfPresent(String.self, forKey: .activationResendCodeBoldPart) ?? NSLocalizedString(CodingKeys.activationResendCodeBoldPart.rawValue, comment: "")
        // MARK: - RECOVER PASSWORD PAGE KEYS
        self.recoverPasswordTitle = try container.decodeIfPresent(String.self, forKey: .recoverPasswordTitle) ?? NSLocalizedString(CodingKeys.recoverPasswordTitle.rawValue, comment: "")
        self.recoverPasswordSubTitleEmail = try container.decodeIfPresent(String.self, forKey: .recoverPasswordSubTitleEmail) ?? NSLocalizedString(CodingKeys.recoverPasswordSubTitleEmail.rawValue, comment: "")
        self.recoverPasswordSubTitlePhone = try container.decodeIfPresent(String.self, forKey: .recoverPasswordSubTitlePhone) ?? NSLocalizedString(CodingKeys.recoverPasswordSubTitlePhone.rawValue, comment: "")
        // MARK: - MY ACCOUNT PAGE KEYS
        self.myAccountTitle = try container.decodeIfPresent(String.self, forKey: .myAccountTitle) ?? NSLocalizedString(CodingKeys.myAccountTitle.rawValue, comment: "")
        self.myAccountHome = try container.decodeIfPresent(String.self, forKey: .myAccountHome) ?? NSLocalizedString(CodingKeys.myAccountHome.rawValue, comment: "")
        self.myAccountWork = try container.decodeIfPresent(String.self, forKey: .myAccountWork) ?? NSLocalizedString(CodingKeys.myAccountWork.rawValue, comment: "")
        self.myAccountNoHome = try container.decodeIfPresent(String.self, forKey: .myAccountNoHome) ?? NSLocalizedString(CodingKeys.myAccountNoHome.rawValue, comment: "")
        self.myAccountNoWork = try container.decodeIfPresent(String.self, forKey: .myAccountNoWork) ?? NSLocalizedString(CodingKeys.myAccountNoWork.rawValue, comment: "")
        self.myAccountQrCodeTitle = try container.decodeIfPresent(String.self, forKey: .myAccountQrCodeTitle) ?? NSLocalizedString(CodingKeys.myAccountQrCodeTitle.rawValue, comment: "")
        self.myAccountQrCodeSubtitle = try container.decodeIfPresent(String.self, forKey: .myAccountQrCodeSubtitle) ?? NSLocalizedString(CodingKeys.myAccountQrCodeSubtitle.rawValue, comment: "")
        self.myAccountContracts = try container.decodeIfPresent(String.self, forKey: .myAccountContracts) ?? NSLocalizedString(CodingKeys.myAccountContracts.rawValue, comment: "")
        self.myAccountCemeTarifs = try container.decodeIfPresent(String.self, forKey: .myAccountCemeTarifs) ?? NSLocalizedString(CodingKeys.myAccountCemeTarifs.rawValue, comment: "")
        self.myAccountNotifications = try container.decodeIfPresent(String.self, forKey: .myAccountNotifications) ?? NSLocalizedString(CodingKeys.myAccountNotifications.rawValue, comment: "")
        self.myAccountPrivacy = try container.decodeIfPresent(String.self, forKey: .myAccountPrivacy) ?? NSLocalizedString(CodingKeys.myAccountPrivacy.rawValue, comment: "")
        self.myAccountTermsAndConditions = try container.decodeIfPresent(String.self, forKey: .myAccountTermsAndConditions) ?? NSLocalizedString(CodingKeys.myAccountTermsAndConditions.rawValue, comment: "")
        self.myAccountLogout = try container.decodeIfPresent(String.self, forKey: .myAccountLogout) ?? NSLocalizedString(CodingKeys.myAccountLogout.rawValue, comment: "")
        self.myAccountLogin = try container.decodeIfPresent(String.self, forKey: .myAccountLogin) ?? NSLocalizedString(CodingKeys.myAccountLogin.rawValue, comment: "")
        // MARK: - EDIT ACCOUNT PAGE KEYS
        self.editAccountTitle = try container.decodeIfPresent(String.self, forKey: .editAccountTitle) ?? NSLocalizedString(CodingKeys.editAccountTitle.rawValue, comment: "")
        self.editAccountChangeEmail = try container.decodeIfPresent(String.self, forKey: .editAccountChangeEmail) ?? NSLocalizedString(CodingKeys.editAccountChangeEmail.rawValue, comment: "")
        self.editAccountDeleteAccount = try container.decodeIfPresent(String.self, forKey: .editAccountDeleteAccount) ?? NSLocalizedString(CodingKeys.editAccountDeleteAccount.rawValue, comment: "")
        self.editAccountAddNewAddress = try container.decodeIfPresent(String.self, forKey: .editAccountAddNewAddress) ?? NSLocalizedString(CodingKeys.editAccountAddNewAddress.rawValue, comment: "")
        self.editAccountChangePhoneNumber = try container.decodeIfPresent(String.self, forKey: .editAccountChangePhoneNumber) ?? NSLocalizedString(CodingKeys.editAccountChangePhoneNumber.rawValue, comment: "")
        self.editAccountDeleteAccountMessage = try container.decodeIfPresent(String.self, forKey: .editAccountDeleteAccountMessage) ?? NSLocalizedString(CodingKeys.editAccountDeleteAccountMessage.rawValue, comment: "")
        self.editAccountProfileUpdatedSuccessfully = try container.decodeIfPresent(String.self, forKey: .editAccountProfileUpdatedSuccessfully) ?? NSLocalizedString(CodingKeys.editAccountProfileUpdatedSuccessfully.rawValue, comment: "")
        // MARK: - CHANGE EMAIL / PHONE NUMBER PAGE KEYS
        self.changeEmailTitle = try container.decodeIfPresent(String.self, forKey: .changeEmailTitle) ?? NSLocalizedString(CodingKeys.changeEmailTitle.rawValue, comment: "")
        self.changeEmailPhoneNumberTitle = try container.decodeIfPresent(String.self, forKey: .changeEmailPhoneNumberTitle) ?? NSLocalizedString(CodingKeys.changeEmailPhoneNumberTitle.rawValue, comment: "")
        self.changeEmailEmailIsTheSame = try container.decodeIfPresent(String.self, forKey: .changeEmailEmailIsTheSame) ?? NSLocalizedString(CodingKeys.changeEmailEmailIsTheSame.rawValue, comment: "")
        self.changeEmailMobilePhoneIsTheSame = try container.decodeIfPresent(String.self, forKey: .changeEmailMobilePhoneIsTheSame) ?? NSLocalizedString(CodingKeys.changeEmailMobilePhoneIsTheSame.rawValue, comment: "")
        // MARK: - CHANGE PASSWORD PAGE KEYS
        self.changePasswordTitle = try container.decodeIfPresent(String.self, forKey: .changePasswordTitle) ?? NSLocalizedString(CodingKeys.changePasswordTitle.rawValue, comment: "")
        // MARK: - ADD / EDIT REFERENCE PLACE PAGE KEYS
        self.addReferencePlaceTitle = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceTitle) ?? NSLocalizedString(CodingKeys.addReferencePlaceTitle.rawValue, comment: "")
        self.addReferencePlaceEditTitle = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceEditTitle) ?? NSLocalizedString(CodingKeys.addReferencePlaceEditTitle.rawValue, comment: "")
        self.addReferencePlaceTapToSelectLocation = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceTapToSelectLocation) ?? NSLocalizedString(CodingKeys.addReferencePlaceTapToSelectLocation.rawValue, comment: "")
        // MARK: - SEARCH LOCATION PAGE KEYS
        self.searchLocationTitle = try container.decodeIfPresent(String.self, forKey: .searchLocationTitle) ?? NSLocalizedString(CodingKeys.searchLocationTitle.rawValue, comment: "")
        self.searchLocationSuggestions = try container.decodeIfPresent(String.self, forKey: .searchLocationSuggestions) ?? NSLocalizedString(CodingKeys.searchLocationSuggestions.rawValue, comment: "")
        // MARK: - GLOSSARY PAGE KEYS
        self.glossaryTitle = try container.decodeIfPresent(String.self, forKey: .glossaryTitle) ?? NSLocalizedString(CodingKeys.glossaryTitle.rawValue, comment: "")
        self.glossaryEvioNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryEvioNetwork) ?? NSLocalizedString(CodingKeys.glossaryEvioNetwork.rawValue, comment: "")
        self.glossaryOtherNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryOtherNetwork) ?? NSLocalizedString(CodingKeys.glossaryOtherNetwork.rawValue, comment: "")
        self.glossaryMyChargers = try container.decodeIfPresent(String.self, forKey: .glossaryMyChargers) ?? NSLocalizedString(CodingKeys.glossaryMyChargers.rawValue, comment: "")
        self.glossaryMobieNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryMobieNetwork) ?? NSLocalizedString(CodingKeys.glossaryMobieNetwork.rawValue, comment: "")
        self.glossaryTeslaNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryTeslaNetwork) ?? NSLocalizedString(CodingKeys.glossaryTeslaNetwork.rawValue, comment: "")
        self.glossaryChargersGroup = try container.decodeIfPresent(String.self, forKey: .glossaryChargersGroup) ?? NSLocalizedString(CodingKeys.glossaryChargersGroup.rawValue, comment: "")
        self.glossaryChargerFree = try container.decodeIfPresent(String.self, forKey: .glossaryChargerFree) ?? NSLocalizedString(CodingKeys.glossaryChargerFree.rawValue, comment: "")
        self.glossaryChargerOccupied = try container.decodeIfPresent(String.self, forKey: .glossaryChargerOccupied) ?? NSLocalizedString(CodingKeys.glossaryChargerOccupied.rawValue, comment: "")
        self.glossaryChargerOffline = try container.decodeIfPresent(String.self, forKey: .glossaryChargerOffline) ?? NSLocalizedString(CodingKeys.glossaryChargerOffline.rawValue, comment: "")
        self.glossaryGoCharge = try container.decodeIfPresent(String.self, forKey: .glossaryGoCharge) ?? NSLocalizedString(CodingKeys.glossaryGoCharge.rawValue, comment: "")
        self.glossaryHyundai = try container.decodeIfPresent(String.self, forKey: .glossaryHyundai) ?? NSLocalizedString(CodingKeys.glossaryHyundai.rawValue, comment: "")
        // MARK: - NOTIFICATIONS PAGE KEYS
        self.notificationsTitle = try container.decodeIfPresent(String.self, forKey: .notificationsTitle) ?? NSLocalizedString(CodingKeys.notificationsTitle.rawValue, comment: "")
        self.notificationsChargingPoint = try container.decodeIfPresent(String.self, forKey: .notificationsChargingPoint) ?? NSLocalizedString(CodingKeys.notificationsChargingPoint.rawValue, comment: "")
        self.notificationsGeneral = try container.decodeIfPresent(String.self, forKey: .notificationsGeneral) ?? NSLocalizedString(CodingKeys.notificationsGeneral.rawValue, comment: "")
        self.notificationsAccount = try container.decodeIfPresent(String.self, forKey: .notificationsAccount) ?? NSLocalizedString(CodingKeys.notificationsAccount.rawValue, comment: "")
        self.notificationsPushNotifications = try container.decodeIfPresent(String.self, forKey: .notificationsPushNotifications) ?? NSLocalizedString(CodingKeys.notificationsPushNotifications.rawValue, comment: "")
        // MARK: - SESSIONS PAGE KEYS
        self.sessionsMySessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsMySessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsMySessionsTitle.rawValue, comment: "")
        self.sessionsMyChargersSessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsMyChargersSessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsMyChargersSessionsTitle.rawValue, comment: "")
        self.sessionsNoSessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsTitle.rawValue, comment: "")
        self.sessionsNoSessionsMySessionsSubtitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsMySessionsSubtitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsMySessionsSubtitle.rawValue, comment: "")
        self.sessionsNoSessionsSubtitleNoLogin = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsSubtitleNoLogin) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsSubtitleNoLogin.rawValue, comment: "")
        self.sessionsNoSessionsMyChargerSessionsSubtitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsMyChargerSessionsSubtitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsMyChargerSessionsSubtitle.rawValue, comment: "")
        self.sessionsNoBatteryInfo = try container.decodeIfPresent(String.self, forKey: .sessionsNoBatteryInfo) ?? NSLocalizedString(CodingKeys.sessionsNoBatteryInfo.rawValue, comment: "")
        self.sessionsAreYouSureYouWantToStop = try container.decodeIfPresent(String.self, forKey: .sessionsAreYouSureYouWantToStop) ?? NSLocalizedString(CodingKeys.sessionsAreYouSureYouWantToStop.rawValue, comment: "")
        self.sessionsTxtInfoMobieUpdates = try container.decodeIfPresent(String.self, forKey: .sessionsTxtInfoMobieUpdates) ?? NSLocalizedString(CodingKeys.sessionsTxtInfoMobieUpdates.rawValue, comment: "")
        self.sessionsChargingPoint = try container.decodeIfPresent(String.self, forKey: .sessionsChargingPoint) ?? NSLocalizedString(CodingKeys.sessionsChargingPoint.rawValue, comment: "")
        self.sessionsChargingPoints = try container.decodeIfPresent(String.self, forKey: .sessionsChargingPoints) ?? NSLocalizedString(CodingKeys.sessionsChargingPoints.rawValue, comment: "")
        // MARK: - START AND STOP ANIMATION PAGE KEYS
        self.loadingChargingStartTitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStartTitle) ?? NSLocalizedString(CodingKeys.loadingChargingStartTitle.rawValue, comment: "")
        self.loadingChargingStartSubtitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStartSubtitle) ?? NSLocalizedString(CodingKeys.loadingChargingStartSubtitle.rawValue, comment: "")
        self.loadingChargingStopTitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStopTitle) ?? NSLocalizedString(CodingKeys.loadingChargingStopTitle.rawValue, comment: "")
        self.loadingChargingStoptSubtitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStoptSubtitle) ?? NSLocalizedString(CodingKeys.loadingChargingStoptSubtitle.rawValue, comment: "")
        // MARK: - RATE SESSION VIEW PAGE KEYS
        self.rateSessionTitle = try container.decodeIfPresent(String.self, forKey: .rateSessionTitle) ?? NSLocalizedString(CodingKeys.rateSessionTitle.rawValue, comment: "")
        self.rateSessionSubtitle = try container.decodeIfPresent(String.self, forKey: .rateSessionSubtitle) ?? NSLocalizedString(CodingKeys.rateSessionSubtitle.rawValue, comment: "")
        self.rateSessionComment = try container.decodeIfPresent(String.self, forKey: .rateSessionComment) ?? NSLocalizedString(CodingKeys.rateSessionComment.rawValue, comment: "")
        self.rateSessionCommentPlaceholder = try container.decodeIfPresent(String.self, forKey: .rateSessionCommentPlaceholder) ?? NSLocalizedString(CodingKeys.rateSessionCommentPlaceholder.rawValue, comment: "")
        // MARK: - SESSION SUMMARY VIEW PAGE KEYS
        self.sessionSummaryTotalChargingTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTotalChargingTime) ?? NSLocalizedString(CodingKeys.sessionSummaryTotalChargingTime.rawValue, comment: "")
        self.sessionSummaryDate = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDate) ?? NSLocalizedString(CodingKeys.sessionSummaryDate.rawValue, comment: "")
        self.sessionSummaryStartTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryStartTime) ?? NSLocalizedString(CodingKeys.sessionSummaryStartTime.rawValue, comment: "")
        self.sessionSummaryEndTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEndTime) ?? NSLocalizedString(CodingKeys.sessionSummaryEndTime.rawValue, comment: "")
        self.sessionSummaryInstantAveragePower = try container.decodeIfPresent(String.self, forKey: .sessionSummaryInstantAveragePower) ?? NSLocalizedString(CodingKeys.sessionSummaryInstantAveragePower.rawValue, comment: "")
        self.sessionSummaryIec = try container.decodeIfPresent(String.self, forKey: .sessionSummaryIec) ?? NSLocalizedString(CodingKeys.sessionSummaryIec.rawValue, comment: "")
        self.sessionSummaryTar = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTar) ?? NSLocalizedString(CodingKeys.sessionSummaryTar.rawValue, comment: "")
        self.sessionSummaryVat = try container.decodeIfPresent(String.self, forKey: .sessionSummaryVat) ?? NSLocalizedString(CodingKeys.sessionSummaryVat.rawValue, comment: "")
        self.sessionSummaryTotal = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTotal) ?? NSLocalizedString(CodingKeys.sessionSummaryTotal.rawValue, comment: "")
        self.sessionSummaryMobieTitle = try container.decodeIfPresent(String.self, forKey: .sessionSummaryMobieTitle) ?? NSLocalizedString(CodingKeys.sessionSummaryMobieTitle.rawValue, comment: "")
        self.sessionSummaryTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTime) ?? NSLocalizedString(CodingKeys.sessionSummaryTime.rawValue, comment: "")
        self.sessionSummaryEnergy = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEnergy) ?? NSLocalizedString(CodingKeys.sessionSummaryEnergy.rawValue, comment: "")
        self.sessionSummaryPlug = try container.decodeIfPresent(String.self, forKey: .sessionSummaryPlug) ?? NSLocalizedString(CodingKeys.sessionSummaryPlug.rawValue, comment: "")
        self.sessionSummaryContract = try container.decodeIfPresent(String.self, forKey: .sessionSummaryContract) ?? NSLocalizedString(CodingKeys.sessionSummaryContract.rawValue, comment: "")
        self.sessionSummaryCo2Emitted = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCo2Emitted) ?? NSLocalizedString(CodingKeys.sessionSummaryCo2Emitted.rawValue, comment: "")
        self.sessionSummaryCharging = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCharging) ?? NSLocalizedString(CodingKeys.sessionSummaryCharging.rawValue, comment: "")
        self.sessionSummaryOpc = try container.decodeIfPresent(String.self, forKey: .sessionSummaryOpc) ?? NSLocalizedString(CodingKeys.sessionSummaryOpc.rawValue, comment: "")
        self.sessionSummaryCeme = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCeme) ?? NSLocalizedString(CodingKeys.sessionSummaryCeme.rawValue, comment: "")
        self.sessionSummaryFees = try container.decodeIfPresent(String.self, forKey: .sessionSummaryFees) ?? NSLocalizedString(CodingKeys.sessionSummaryFees.rawValue, comment: "")
        self.sessionSummaryDownloadInvoice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDownloadInvoice) ?? NSLocalizedString(CodingKeys.sessionSummaryDownloadInvoice.rawValue, comment: "")
        self.sessionSummaryEstimatedPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEstimatedPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryEstimatedPrice.rawValue, comment: "")
        self.sessionSummaryRateThisSession = try container.decodeIfPresent(String.self, forKey: .sessionSummaryRateThisSession) ?? NSLocalizedString(CodingKeys.sessionSummaryRateThisSession.rawValue, comment: "")
        self.sessionSummaryParking = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParking) ?? NSLocalizedString(CodingKeys.sessionSummaryParking.rawValue, comment: "")
        self.sessionSummaryRoamingTitle = try container.decodeIfPresent(String.self, forKey: .sessionSummaryRoamingTitle) ?? NSLocalizedString(CodingKeys.sessionSummaryRoamingTitle.rawValue, comment: "")
        self.sessionSummaryEmsp = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEmsp) ?? NSLocalizedString(CodingKeys.sessionSummaryEmsp.rawValue, comment: "")
        self.sessionSummaryCdrInfoText = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCdrInfoText) ?? NSLocalizedString(CodingKeys.sessionSummaryCdrInfoText.rawValue, comment: "")
        self.sessionSummaryPowerKw = try container.decodeIfPresent(String.self, forKey: .sessionSummaryPowerKw) ?? NSLocalizedString(CodingKeys.sessionSummaryPowerKw.rawValue, comment: "")
        self.sessionSummaryBattery = try container.decodeIfPresent(String.self, forKey: .sessionSummaryBattery) ?? NSLocalizedString(CodingKeys.sessionSummaryBattery.rawValue, comment: "")
        self.sessionSummaryEnergyKwh = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEnergyKwh) ?? NSLocalizedString(CodingKeys.sessionSummaryEnergyKwh.rawValue, comment: "")
        self.sessionSummaryChargingTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryChargingTime) ?? NSLocalizedString(CodingKeys.sessionSummaryChargingTime.rawValue, comment: "")
        self.sessionSummaryChargingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryChargingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryChargingPrice.rawValue, comment: "")
        self.sessionSummaryActivationFee = try container.decodeIfPresent(String.self, forKey: .sessionSummaryActivationFee) ?? NSLocalizedString(CodingKeys.sessionSummaryActivationFee.rawValue, comment: "")
        self.sessionSummaryCostDuringCharge = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCostDuringCharge) ?? NSLocalizedString(CodingKeys.sessionSummaryCostDuringCharge.rawValue, comment: "")
        self.sessionSummaryDuration = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDuration) ?? NSLocalizedString(CodingKeys.sessionSummaryDuration.rawValue, comment: "")
        self.sessionSummaryParkingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParkingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryParkingPrice.rawValue, comment: "")
        self.sessionSummaryParkingDuringCharging = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParkingDuringCharging) ?? NSLocalizedString(CodingKeys.sessionSummaryParkingDuringCharging.rawValue, comment: "")
        self.sessionSummaryBookingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryBookingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryBookingPrice.rawValue, comment: "")
        // MARK: - START CHARGING BY QR CODE VIEW PAGE KEYS
        self.chargerQrCodeContract = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeContract) ?? NSLocalizedString(CodingKeys.chargerQrCodeContract.rawValue, comment: "")
        self.chargerQrCodeEv = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeEv) ?? NSLocalizedString(CodingKeys.chargerQrCodeEv.rawValue, comment: "")
        self.chargerQrCodeTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeTitle.rawValue, comment: "")
        self.chargerQrCodeStart = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeStart) ?? NSLocalizedString(CodingKeys.chargerQrCodeStart.rawValue, comment: "")
        self.chargerQrCodeSelectContract = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectContract) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectContract.rawValue, comment: "")
        self.chargerQrCodeSelectEv = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectEv) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectEv.rawValue, comment: "")
        self.chargerQrCodeSelectContractFirst = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectContractFirst) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectContractFirst.rawValue, comment: "")
        self.chargerQrCodeMainTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeMainTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeMainTitle.rawValue, comment: "")
        self.chargerQrCodeMainSubtitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeMainSubtitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeMainSubtitle.rawValue, comment: "")
        self.chargerQrCodeNoCamera = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeNoCamera) ?? NSLocalizedString(CodingKeys.chargerQrCodeNoCamera.rawValue, comment: "")
        self.chargerQrCodeOrInsert = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeOrInsert) ?? NSLocalizedString(CodingKeys.chargerQrCodeOrInsert.rawValue, comment: "")
        self.chargerQrCodeIdNumber = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumber) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumber.rawValue, comment: "")
        self.chargerQrCodeInvalidQrCode = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeInvalidQrCode) ?? NSLocalizedString(CodingKeys.chargerQrCodeInvalidQrCode.rawValue, comment: "")
        self.chargerQrCodeIdNumberTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumberTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumberTitle.rawValue, comment: "")
        self.chargerQrCodeIdNumberPlaceholder = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumberPlaceholder) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumberPlaceholder.rawValue, comment: "")
        // MARK: - STOPPED SESSION BY REASON PAGE KEYS
        self.stoppedSessionByReasonTitle = try container.decodeIfPresent(String.self, forKey: .stoppedSessionByReasonTitle) ?? NSLocalizedString(CodingKeys.stoppedSessionByReasonTitle.rawValue, comment: "")
        self.stoppedSessionByReasonSubtitle = try container.decodeIfPresent(String.self, forKey: .stoppedSessionByReasonSubtitle) ?? NSLocalizedString(CodingKeys.stoppedSessionByReasonSubtitle.rawValue, comment: "")
        // MARK: - MY CHARGERS VIEW CODING PAGE KEYS
        self.myChargersTabTitle = try container.decodeIfPresent(String.self, forKey: .myChargersTabTitle) ?? NSLocalizedString(CodingKeys.myChargersTabTitle.rawValue, comment: "")
        self.myChargersChargersTabTitle = try container.decodeIfPresent(String.self, forKey: .myChargersChargersTabTitle) ?? NSLocalizedString(CodingKeys.myChargersChargersTabTitle.rawValue, comment: "")
        self.myChargersAddChargingPlaceTitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargingPlaceTitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargingPlaceTitle.rawValue, comment: "")
        self.myChargersChargingPlaceName = try container.decodeIfPresent(String.self, forKey: .myChargersChargingPlaceName) ?? NSLocalizedString(CodingKeys.myChargersChargingPlaceName.rawValue, comment: "")
        self.myChargersChargingPlaceNamePlaceholder = try container.decodeIfPresent(String.self, forKey: .myChargersChargingPlaceNamePlaceholder) ?? NSLocalizedString(CodingKeys.myChargersChargingPlaceNamePlaceholder.rawValue, comment: "")
        self.myChargersNoChargersTitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersTitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersTitle.rawValue, comment: "")
        self.myChargersNoChargersSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersSubtitle.rawValue, comment: "")
        self.myChargersNoChargersNoLoginSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersNoLoginSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersNoLoginSubtitle.rawValue, comment: "")
        self.myChargersNoChargersMyChargersSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersMyChargersSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersSubtitle.rawValue, comment: "")
        self.myChargersNoChargersMyChargersNoLoginSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersMyChargersNoLoginSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersNoLoginSubtitle.rawValue, comment: "")
        self.myChargersDeleteChargerTitle = try container.decodeIfPresent(String.self, forKey: .myChargersDeleteChargerTitle) ?? NSLocalizedString(CodingKeys.myChargersDeleteChargerTitle.rawValue, comment: "")
        self.myChargersDeleteChargerSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersDeleteChargerSubtitle) ?? NSLocalizedString(CodingKeys.myChargersDeleteChargerSubtitle.rawValue, comment: "")
        self.myChargersAddChargerAlertTitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargerAlertTitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargerAlertTitle.rawValue, comment: "")
        self.myChargersAddChargerAlertSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargerAlertSubtitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargerAlertSubtitle.rawValue, comment: "")
        self.myChargersAddNewCharger = try container.decodeIfPresent(String.self, forKey: .myChargersAddNewCharger) ?? NSLocalizedString(CodingKeys.myChargersAddNewCharger.rawValue, comment: "")
        // MARK: - PLUG DETAILS VIEW PAGE KEYS
        self.plugDetailsConnectorType = try container.decodeIfPresent(String.self, forKey: .plugDetailsConnectorType) ?? NSLocalizedString(CodingKeys.plugDetailsConnectorType.rawValue, comment: "")
        self.plugDetailsStatus = try container.decodeIfPresent(String.self, forKey: .plugDetailsStatus) ?? NSLocalizedString(CodingKeys.plugDetailsStatus.rawValue, comment: "")
        self.plugDetailsCurrent = try container.decodeIfPresent(String.self, forKey: .plugDetailsCurrent) ?? NSLocalizedString(CodingKeys.plugDetailsCurrent.rawValue, comment: "")
        self.plugDetailsVoltage = try container.decodeIfPresent(String.self, forKey: .plugDetailsVoltage) ?? NSLocalizedString(CodingKeys.plugDetailsVoltage.rawValue, comment: "")
        self.plugDetailsPower = try container.decodeIfPresent(String.self, forKey: .plugDetailsPower) ?? NSLocalizedString(CodingKeys.plugDetailsPower.rawValue, comment: "")
        self.plugDetailsAccess = try container.decodeIfPresent(String.self, forKey: .plugDetailsAccess) ?? NSLocalizedString(CodingKeys.plugDetailsAccess.rawValue, comment: "")
        self.plugDetailsEditPlugTitle = try container.decodeIfPresent(String.self, forKey: .plugDetailsEditPlugTitle) ?? NSLocalizedString(CodingKeys.plugDetailsEditPlugTitle.rawValue, comment: "")
        self.plugDetailsChargingInformation = try container.decodeIfPresent(String.self, forKey: .plugDetailsChargingInformation) ?? NSLocalizedString(CodingKeys.plugDetailsChargingInformation.rawValue, comment: "")
        self.plugDetailsCurrentType = try container.decodeIfPresent(String.self, forKey: .plugDetailsCurrentType) ?? NSLocalizedString(CodingKeys.plugDetailsCurrentType.rawValue, comment: "")
        self.plugDetailsActivate = try container.decodeIfPresent(String.self, forKey: .plugDetailsActivate) ?? NSLocalizedString(CodingKeys.plugDetailsActivate.rawValue, comment: "")
        self.plugDetailsAc1Phase = try container.decodeIfPresent(String.self, forKey: .plugDetailsAc1Phase) ?? NSLocalizedString(CodingKeys.plugDetailsAc1Phase.rawValue, comment: "")
        self.plugDetailsAc3Phase = try container.decodeIfPresent(String.self, forKey: .plugDetailsAc3Phase) ?? NSLocalizedString(CodingKeys.plugDetailsAc3Phase.rawValue, comment: "")
        // MARK: - WALLET VIEW PAGE KEYS
        self.walletTitle = try container.decodeIfPresent(String.self, forKey: .walletTitle) ?? NSLocalizedString(CodingKeys.walletTitle.rawValue, comment: "")
        self.walletBalance = try container.decodeIfPresent(String.self, forKey: .walletBalance) ?? NSLocalizedString(CodingKeys.walletBalance.rawValue, comment: "")
        self.walletInfoAboutWallet = try container.decodeIfPresent(String.self, forKey: .walletInfoAboutWallet) ?? NSLocalizedString(CodingKeys.walletInfoAboutWallet.rawValue, comment: "")
        self.walletPaymentMethods = try container.decodeIfPresent(String.self, forKey: .walletPaymentMethods) ?? NSLocalizedString(CodingKeys.walletPaymentMethods.rawValue, comment: "")
        self.walletWalletHistory = try container.decodeIfPresent(String.self, forKey: .walletWalletHistory) ?? NSLocalizedString(CodingKeys.walletWalletHistory.rawValue, comment: "")
        self.walletFinacialTransactions = try container.decodeIfPresent(String.self, forKey: .walletFinacialTransactions) ?? NSLocalizedString(CodingKeys.walletFinacialTransactions.rawValue, comment: "")
        self.walletBillingProfile = try container.decodeIfPresent(String.self, forKey: .walletBillingProfile) ?? NSLocalizedString(CodingKeys.walletBillingProfile.rawValue, comment: "")
        self.walletAutoRechargeWallet = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeWallet) ?? NSLocalizedString(CodingKeys.walletAutoRechargeWallet.rawValue, comment: "")
        self.walletAutoRechargeWalletInfoText = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeWalletInfoText) ?? NSLocalizedString(CodingKeys.walletAutoRechargeWalletInfoText.rawValue, comment: "")
        self.walletAutoRechargeSuccessMessage = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeSuccessMessage) ?? NSLocalizedString(CodingKeys.walletAutoRechargeSuccessMessage.rawValue, comment: "")
        // MARK: - WALLET TOP UP VIEW PAGE KEYS
        self.walletTopUpTitle = try container.decodeIfPresent(String.self, forKey: .walletTopUpTitle) ?? NSLocalizedString(CodingKeys.walletTopUpTitle.rawValue, comment: "")
        self.walletTopUpOtherAmount = try container.decodeIfPresent(String.self, forKey: .walletTopUpOtherAmount) ?? NSLocalizedString(CodingKeys.walletTopUpOtherAmount.rawValue, comment: "")
        self.walletTopUpMinimumAmount = try container.decodeIfPresent(String.self, forKey: .walletTopUpMinimumAmount) ?? NSLocalizedString(CodingKeys.walletTopUpMinimumAmount.rawValue, comment: "")
        self.walletTopUpMbWay = try container.decodeIfPresent(String.self, forKey: .walletTopUpMbWay) ?? NSLocalizedString(CodingKeys.walletTopUpMbWay.rawValue, comment: "")
        self.walletTopUpMultibancoReference = try container.decodeIfPresent(String.self, forKey: .walletTopUpMultibancoReference) ?? NSLocalizedString(CodingKeys.walletTopUpMultibancoReference.rawValue, comment: "")
        self.walletTopUpCreditCardDeposit = try container.decodeIfPresent(String.self, forKey: .walletTopUpCreditCardDeposit) ?? NSLocalizedString(CodingKeys.walletTopUpCreditCardDeposit.rawValue, comment: "")
        self.walletTopUpCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpCreditCard.rawValue, comment: "")
        self.walletTopUpNewCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpNewCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpNewCreditCard.rawValue, comment: "")
        self.walletTopUpExistingCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpExistingCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpExistingCreditCard.rawValue, comment: "")
        self.walletTopUpAddBalanceSuccess = try container.decodeIfPresent(String.self, forKey: .walletTopUpAddBalanceSuccess) ?? NSLocalizedString(CodingKeys.walletTopUpAddBalanceSuccess.rawValue, comment: "")
        // MARK: - MB REFERENCE VIEW PAGE KEYS
        self.mbReferenceEntity = try container.decodeIfPresent(String.self, forKey: .mbReferenceEntity) ?? NSLocalizedString(CodingKeys.mbReferenceEntity.rawValue, comment: "")
        self.mbReferenceReference = try container.decodeIfPresent(String.self, forKey: .mbReferenceReference) ?? NSLocalizedString(CodingKeys.mbReferenceReference.rawValue, comment: "")
        self.mbReferenceAmount = try container.decodeIfPresent(String.self, forKey: .mbReferenceAmount) ?? NSLocalizedString(CodingKeys.mbReferenceAmount.rawValue, comment: "")
        self.mbReferenceSendReferenceBySms = try container.decodeIfPresent(String.self, forKey: .mbReferenceSendReferenceBySms) ?? NSLocalizedString(CodingKeys.mbReferenceSendReferenceBySms.rawValue, comment: "")
        self.mbReferenceInfoAboutReference = try container.decodeIfPresent(String.self, forKey: .mbReferenceInfoAboutReference) ?? NSLocalizedString(CodingKeys.mbReferenceInfoAboutReference.rawValue, comment: "")
        self.mbReferenceDidNotReceive = try container.decodeIfPresent(String.self, forKey: .mbReferenceDidNotReceive) ?? NSLocalizedString(CodingKeys.mbReferenceDidNotReceive.rawValue, comment: "")
        self.mbReferenceTryAgain = try container.decodeIfPresent(String.self, forKey: .mbReferenceTryAgain) ?? NSLocalizedString(CodingKeys.mbReferenceTryAgain.rawValue, comment: "")
        // MARK: - TRANSACTIONS VIEW PAGE KEYS
        self.transactionsTitle = try container.decodeIfPresent(String.self, forKey: .transactionsTitle) ?? NSLocalizedString(CodingKeys.transactionsTitle.rawValue, comment: "")
        self.transactionsNoTransactions = try container.decodeIfPresent(String.self, forKey: .transactionsNoTransactions) ?? NSLocalizedString(CodingKeys.transactionsNoTransactions.rawValue, comment: "")
        self.transactionsDeposit = try container.decodeIfPresent(String.self, forKey: .transactionsDeposit) ?? NSLocalizedString(CodingKeys.transactionsDeposit.rawValue, comment: "")
        self.transactionsPayment = try container.decodeIfPresent(String.self, forKey: .transactionsPayment) ?? NSLocalizedString(CodingKeys.transactionsPayment.rawValue, comment: "")
        self.transactionsCard = try container.decodeIfPresent(String.self, forKey: .transactionsCard) ?? NSLocalizedString(CodingKeys.transactionsCard.rawValue, comment: "")
        self.transactionsMBRef = try container.decodeIfPresent(String.self, forKey: .transactionsMBRef) ?? NSLocalizedString(CodingKeys.transactionsMBRef.rawValue, comment: "")
        self.transactionsMBRefPSNet = try container.decodeIfPresent(String.self, forKey: .transactionsMBRefPSNet) ?? NSLocalizedString(CodingKeys.transactionsMBRefPSNet.rawValue, comment: "")
        self.transactionsPSNet = try container.decodeIfPresent(String.self, forKey: .transactionsPSNet) ?? NSLocalizedString(CodingKeys.transactionsPSNet.rawValue, comment: "")
        self.transactionsMBWay = try container.decodeIfPresent(String.self, forKey: .transactionsMBWay) ?? NSLocalizedString(CodingKeys.transactionsMBWay.rawValue, comment: "")
        self.transactionsWallet = try container.decodeIfPresent(String.self, forKey: .transactionsWallet) ?? NSLocalizedString(CodingKeys.transactionsWallet.rawValue, comment: "")
        self.transactionsOther = try container.decodeIfPresent(String.self, forKey: .transactionsOther) ?? NSLocalizedString(CodingKeys.transactionsOther.rawValue, comment: "")
        self.transactionsFinancialTitle = try container.decodeIfPresent(String.self, forKey: .transactionsFinancialTitle) ?? NSLocalizedString(CodingKeys.transactionsFinancialTitle.rawValue, comment: "")
        // MARK: - BILLING PROFILE VIEW PAGE KEYS
        self.billingProfileTitle = try container.decodeIfPresent(String.self, forKey: .billingProfileTitle) ?? NSLocalizedString(CodingKeys.billingProfileTitle.rawValue, comment: "")
        self.billingProfileBillingPeriod = try container.decodeIfPresent(String.self, forKey: .billingProfileBillingPeriod) ?? NSLocalizedString(CodingKeys.billingProfileBillingPeriod.rawValue, comment: "")
        // MARK: - EDIT BILLING PROFILE VIEW KEYS
        self.editBillingProfileFinalConsumer = try container.decodeIfPresent(String.self, forKey: .editBillingProfileFinalConsumer) ?? NSLocalizedString(CodingKeys.editBillingProfileFinalConsumer.rawValue, comment: "")
        self.editBillingProfilePeriod = try container.decodeIfPresent(String.self, forKey: .editBillingProfilePeriod) ?? NSLocalizedString(CodingKeys.editBillingProfilePeriod.rawValue, comment: "")
        // MARK: - PAYMENT METHODS VIEW KEYS
        self.paymentMethodsTitle = try container.decodeIfPresent(String.self, forKey: .paymentMethodsTitle) ?? NSLocalizedString(CodingKeys.paymentMethodsTitle.rawValue, comment: "")
        self.paymentMethodsCreditCardInfoText = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCreditCardInfoText) ?? NSLocalizedString(CodingKeys.paymentMethodsCreditCardInfoText.rawValue, comment: "")
        self.paymentMethodsAddNew = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddNew) ?? NSLocalizedString(CodingKeys.paymentMethodsAddNew.rawValue, comment: "")
        self.paymentMethodsAddNewPaymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddNewPaymentMethod) ?? NSLocalizedString(CodingKeys.paymentMethodsAddNewPaymentMethod.rawValue, comment: "")
        self.paymentMethodsAskUserToDelete = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAskUserToDelete) ?? NSLocalizedString(CodingKeys.paymentMethodsAskUserToDelete.rawValue, comment: "")
        self.paymentMethodsNoPaymentMethods = try container.decodeIfPresent(String.self, forKey: .paymentMethodsNoPaymentMethods) ?? NSLocalizedString(CodingKeys.paymentMethodsNoPaymentMethods.rawValue, comment: "")
        self.paymentMethodsCantDeleteCardiOS = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCantDeleteCardiOS) ?? NSLocalizedString(CodingKeys.paymentMethodsCantDeleteCardiOS.rawValue, comment: "")
        self.paymentMethodsExpiryDate = try container.decodeIfPresent(String.self, forKey: .paymentMethodsExpiryDate) ?? NSLocalizedString(CodingKeys.paymentMethodsExpiryDate.rawValue, comment: "")
        self.paymentMethodsCvc = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCvc) ?? NSLocalizedString(CodingKeys.paymentMethodsCvc.rawValue, comment: "")
        self.paymentMethodsAddCard = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddCard) ?? NSLocalizedString(CodingKeys.paymentMethodsAddCard.rawValue, comment: "")
        self.paymentMethodsCardNumberNoValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCardNumberNoValid) ?? NSLocalizedString(CodingKeys.paymentMethodsCardNumberNoValid.rawValue, comment: "")
        self.paymentMethodsExpireDateNotValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsExpireDateNotValid) ?? NSLocalizedString(CodingKeys.paymentMethodsExpireDateNotValid.rawValue, comment: "")
        self.paymentMethodsSecurityCodeNotValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsSecurityCodeNotValid) ?? NSLocalizedString(CodingKeys.paymentMethodsSecurityCodeNotValid.rawValue, comment: "")
        // MARK: - SUPPORT VIEW KEYS
        self.supportTitle = try container.decodeIfPresent(String.self, forKey: .supportTitle) ?? NSLocalizedString(CodingKeys.supportTitle.rawValue, comment: "")
        self.supportMessage = try container.decodeIfPresent(String.self, forKey: .supportMessage) ?? NSLocalizedString(CodingKeys.supportMessage.rawValue, comment: "")
        self.supportSearchTopics = try container.decodeIfPresent(String.self, forKey: .supportSearchTopics) ?? NSLocalizedString(CodingKeys.supportSearchTopics.rawValue, comment: "")
        self.supportDriver = try container.decodeIfPresent(String.self, forKey: .supportDriver) ?? NSLocalizedString(CodingKeys.supportDriver.rawValue, comment: "")
        self.supportOwner = try container.decodeIfPresent(String.self, forKey: .supportOwner) ?? NSLocalizedString(CodingKeys.supportOwner.rawValue, comment: "")
        self.supportFaqs = try container.decodeIfPresent(String.self, forKey: .supportFaqs) ?? NSLocalizedString(CodingKeys.supportFaqs.rawValue, comment: "")
        self.supportTalkWithUs = try container.decodeIfPresent(String.self, forKey: .supportTalkWithUs) ?? NSLocalizedString(CodingKeys.supportTalkWithUs.rawValue, comment: "")
        self.supportSendUsAnEmail = try container.decodeIfPresent(String.self, forKey: .supportSendUsAnEmail) ?? NSLocalizedString(CodingKeys.supportSendUsAnEmail.rawValue, comment: "")
        self.supportKnowTheApp = try container.decodeIfPresent(String.self, forKey: .supportKnowTheApp) ?? NSLocalizedString(CodingKeys.supportKnowTheApp.rawValue, comment: "")
        self.supportReviewWalkthroughs = try container.decodeIfPresent(String.self, forKey: .supportReviewWalkthroughs) ?? NSLocalizedString(CodingKeys.supportReviewWalkthroughs.rawValue, comment: "")
        self.supportRunOnboarding = try container.decodeIfPresent(String.self, forKey: .supportRunOnboarding) ?? NSLocalizedString(CodingKeys.supportRunOnboarding.rawValue, comment: "")
        self.supportSubject = try container.decodeIfPresent(String.self, forKey: .supportSubject) ?? NSLocalizedString(CodingKeys.supportSubject.rawValue, comment: "")
        self.supportDriverSupport = try container.decodeIfPresent(String.self, forKey: .supportDriverSupport) ?? NSLocalizedString(CodingKeys.supportDriverSupport.rawValue, comment: "")
        self.supportOwnerSupport = try container.decodeIfPresent(String.self, forKey: .supportOwnerSupport) ?? NSLocalizedString(CodingKeys.supportOwnerSupport.rawValue, comment: "")
        self.supportSearchNotSearchedYet = try container.decodeIfPresent(String.self, forKey: .supportSearchNotSearchedYet) ?? NSLocalizedString(CodingKeys.supportSearchNotSearchedYet.rawValue, comment: "")
        self.supportSearchNoResultsFoundFor = try container.decodeIfPresent(String.self, forKey: .supportSearchNoResultsFoundFor) ?? NSLocalizedString(CodingKeys.supportSearchNoResultsFoundFor.rawValue, comment: "")
        self.supportSearchTypeSomethingToSearch = try container.decodeIfPresent(String.self, forKey: .supportSearchTypeSomethingToSearch) ?? NSLocalizedString(CodingKeys.supportSearchTypeSomethingToSearch.rawValue, comment: "")
        self.supportAddPictures = try container.decodeIfPresent(String.self, forKey: .supportAddPictures) ?? NSLocalizedString(CodingKeys.supportAddPictures.rawValue, comment: .empty)
        // MARK: - INSIGHTS VIEW KEYS
        self.insightsInsightsTabTitle = try container.decodeIfPresent(String.self, forKey: .insightsInsightsTabTitle) ?? NSLocalizedString(CodingKeys.insightsInsightsTabTitle.rawValue, comment: "")
        self.insightsHistoryTabTitle = try container.decodeIfPresent(String.self, forKey: .insightsHistoryTabTitle) ?? NSLocalizedString(CodingKeys.insightsHistoryTabTitle.rawValue, comment: "")
        self.insightsLastMonth = try container.decodeIfPresent(String.self, forKey: .insightsLastMonth) ?? NSLocalizedString(CodingKeys.insightsLastMonth.rawValue, comment: "")
        self.insightsLastYear = try container.decodeIfPresent(String.self, forKey: .insightsLastYear) ?? NSLocalizedString(CodingKeys.insightsLastYear.rawValue, comment: "")
        self.insightsLastSemester = try container.decodeIfPresent(String.self, forKey: .insightsLastSemester) ?? NSLocalizedString(CodingKeys.insightsLastSemester.rawValue, comment: "")
        self.insightsNoHistory = try container.decodeIfPresent(String.self, forKey: .insightsNoHistory) ?? NSLocalizedString(CodingKeys.insightsNoHistory.rawValue, comment: "")
        self.insightsNoInsights = try container.decodeIfPresent(String.self, forKey: .insightsNoInsights) ?? NSLocalizedString(CodingKeys.insightsNoInsights.rawValue, comment: "")
        self.insightsNoInsightsNoLogin = try container.decodeIfPresent(String.self, forKey: .insightsNoInsightsNoLogin) ?? NSLocalizedString(CodingKeys.insightsNoInsightsNoLogin.rawValue, comment: "")
        self.insightsNoHistoryNoLogin = try container.decodeIfPresent(String.self, forKey: .insightsNoHistoryNoLogin) ?? NSLocalizedString(CodingKeys.insightsNoHistoryNoLogin.rawValue, comment: "")
        self.insightsMyVehicles = try container.decodeIfPresent(String.self, forKey: .insightsMyVehicles) ?? NSLocalizedString(CodingKeys.insightsMyVehicles.rawValue, comment: "")
        self.insightsTotalChargingTime = try container.decodeIfPresent(String.self, forKey: .insightsTotalChargingTime) ?? NSLocalizedString(CodingKeys.insightsTotalChargingTime.rawValue, comment: "")
        self.insightsTotalSessions = try container.decodeIfPresent(String.self, forKey: .insightsTotalSessions) ?? NSLocalizedString(CodingKeys.insightsTotalSessions.rawValue, comment: "")
        self.insightsTotalCost = try container.decodeIfPresent(String.self, forKey: .insightsTotalCost) ?? NSLocalizedString(CodingKeys.insightsTotalCost.rawValue, comment: "")
        self.insightsTotalEnergy = try container.decodeIfPresent(String.self, forKey: .insightsTotalEnergy) ?? NSLocalizedString(CodingKeys.insightsTotalEnergy.rawValue, comment: "")
        self.insightsCo2Emitted = try container.decodeIfPresent(String.self, forKey: .insightsCo2Emitted) ?? NSLocalizedString(CodingKeys.insightsCo2Emitted.rawValue, comment: "")
        self.insightsMyChargingStations = try container.decodeIfPresent(String.self, forKey: .insightsMyChargingStations) ?? NSLocalizedString(CodingKeys.insightsMyChargingStations.rawValue, comment: "")
        self.insightsIncome = try container.decodeIfPresent(String.self, forKey: .insightsIncome) ?? NSLocalizedString(CodingKeys.insightsIncome.rawValue, comment: "")
        self.insightsMyRating = try container.decodeIfPresent(String.self, forKey: .insightsMyRating) ?? NSLocalizedString(CodingKeys.insightsMyRating.rawValue, comment: "")
        self.insightsChargingTimePerSession = try container.decodeIfPresent(String.self, forKey: .insightsChargingTimePerSession) ?? NSLocalizedString(CodingKeys.insightsChargingTimePerSession.rawValue, comment: "")
        self.insightsEnergyConsumptionPerSession = try container.decodeIfPresent(String.self, forKey: .insightsEnergyConsumptionPerSession) ?? NSLocalizedString(CodingKeys.insightsEnergyConsumptionPerSession.rawValue, comment: "")
        self.insightsFavoriteCharger = try container.decodeIfPresent(String.self, forKey: .insightsFavoriteCharger) ?? NSLocalizedString(CodingKeys.insightsFavoriteCharger.rawValue, comment: "")
        self.insightsMostUsedPlug = try container.decodeIfPresent(String.self, forKey: .insightsMostUsedPlug) ?? NSLocalizedString(CodingKeys.insightsMostUsedPlug.rawValue, comment: "")
        // MARK: - BLOCKED VIEW KEYS
        self.blockedViewUpdateBt = try container.decodeIfPresent(String.self, forKey: .blockedViewUpdateBt) ?? NSLocalizedString(CodingKeys.blockedViewUpdateBt.rawValue, comment: "")
        self.blockedViewTextInfo = try container.decodeIfPresent(String.self, forKey: .blockedViewTextInfo) ?? NSLocalizedString(CodingKeys.blockedViewTextInfo.rawValue, comment: "")
        self.blockedViewPaymentError = try container.decodeIfPresent(String.self, forKey: .blockedViewPaymentError) ?? NSLocalizedString(CodingKeys.blockedViewPaymentError.rawValue, comment: "")
        // MARK: - COMPARATOR VIEW KEYS
        self.comparatorTitle = try container.decodeIfPresent(String.self, forKey: .comparatorTitle) ?? NSLocalizedString(CodingKeys.comparatorTitle.rawValue, comment: "")
        self.comparatorChargingPoint = try container.decodeIfPresent(String.self, forKey: .comparatorChargingPoint) ?? NSLocalizedString(CodingKeys.comparatorChargingPoint.rawValue, comment: "")
        self.comparatorPlugPower = try container.decodeIfPresent(String.self, forKey: .comparatorPlugPower) ?? NSLocalizedString(CodingKeys.comparatorPlugPower.rawValue, comment: "")
        self.comparatorChargingDuration = try container.decodeIfPresent(String.self, forKey: .comparatorChargingDuration) ?? NSLocalizedString(CodingKeys.comparatorChargingDuration.rawValue, comment: "")
        self.comparatorTotalCost = try container.decodeIfPresent(String.self, forKey: .comparatorTotalCost) ?? NSLocalizedString(CodingKeys.comparatorTotalCost.rawValue, comment: "")
        self.comparatorAverageCost = try container.decodeIfPresent(String.self, forKey: .comparatorAverageCost) ?? NSLocalizedString(CodingKeys.comparatorAverageCost.rawValue, comment: "")
        self.comparatorMyChargers = try container.decodeIfPresent(String.self, forKey: .comparatorMyChargers) ?? NSLocalizedString(CodingKeys.comparatorMyChargers.rawValue, comment: "")
        self.comparatorOtherChargers = try container.decodeIfPresent(String.self, forKey: .comparatorOtherChargers) ?? NSLocalizedString(CodingKeys.comparatorOtherChargers.rawValue, comment: "")
        self.comparatorFavourites = try container.decodeIfPresent(String.self, forKey: .comparatorFavourites) ?? NSLocalizedString(CodingKeys.comparatorFavourites.rawValue, comment: "")
        self.comparatorChooseChargingPoint = try container.decodeIfPresent(String.self, forKey: .comparatorChooseChargingPoint) ?? NSLocalizedString(CodingKeys.comparatorChooseChargingPoint.rawValue, comment: "")
        self.comparatorCompareButton = try container.decodeIfPresent(String.self, forKey: .comparatorCompareButton) ?? NSLocalizedString(CodingKeys.comparatorCompareButton.rawValue, comment: "")
        self.comparatorChoosePlugToCompare = try container.decodeIfPresent(String.self, forKey: .comparatorChoosePlugToCompare) ?? NSLocalizedString(CodingKeys.comparatorChoosePlugToCompare.rawValue, comment: "")
        self.comparatorPlugAlreadyBeingCompared = try container.decodeIfPresent(String.self, forKey: .comparatorPlugAlreadyBeingCompared) ?? NSLocalizedString(CodingKeys.comparatorPlugAlreadyBeingCompared.rawValue, comment: "")
        // MARK: - HISTORY VIEW KEYS
        self.historyPaymentBillingInfoPaid = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoPaid) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaid.rawValue, comment: "")
        self.historyPaymentBillingInfoPaidAndBilled = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoPaidAndBilled) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaidAndBilled.rawValue, comment: "")
        self.historyPaymentBillingInfoToProcess = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoToProcess) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoToProcess.rawValue, comment: "")
        self.historyPaymentBillingInfoNotApplicable = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoNotApplicable) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoNotApplicable.rawValue, comment: "")
        self.historyPaymentBillingInfoFailedBilling = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoFailedBilling) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedBilling.rawValue, comment: "")
        self.historyPaymentBillingInfoFailedPayment = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoFailedPayment) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedPayment.rawValue, comment: "")
        self.historyPaymentBillingInfoBilledAndNotPaid = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoBilledAndNotPaid) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoBilledAndNotPaid.rawValue, comment: "")
        self.historyDownloadMessage = try container.decodeIfPresent(String.self, forKey: .historyDownloadMessage) ?? NSLocalizedString(CodingKeys.historyDownloadMessage.rawValue, comment: "")
        self.historyPaymentStatus = try container.decodeIfPresent(String.self, forKey: .historyPaymentStatus) ?? NSLocalizedString(CodingKeys.historyPaymentStatus.rawValue, comment: "")
        self.historyStartDate = try container.decodeIfPresent(String.self, forKey: .historyStartDate) ?? NSLocalizedString(CodingKeys.historyStartDate.rawValue, comment: "")
        self.historyStopDate = try container.decodeIfPresent(String.self, forKey: .historyStopDate) ?? NSLocalizedString(CodingKeys.historyStopDate.rawValue, comment: "")
        self.historyDonwloadSuccess = try container.decodeIfPresent(String.self, forKey: .historyDonwloadSuccess) ?? NSLocalizedString(CodingKeys.historyDonwloadSuccess.rawValue, comment: "")
        // MARK: - INFO TARIFF MOBIE KEYS
        self.infoTariffMobiePerMinuteMinMaxDuration = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerMinuteMinMaxDuration) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxDuration.rawValue, comment: "")
        self.infoTariffMobiePerMinuteMinMaxKwh = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerMinuteMinMaxKwh) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxKwh.rawValue, comment: "")
        self.infoTariffMobiePerKwhStartEndTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhStartEndTime) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndTime.rawValue, comment: "")
        self.infoTariffMobiePerKwhStartEndDate = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhStartEndDate) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndDate.rawValue, comment: "")
        self.infoTariffMobiePerKwhMaxMinKwh = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhMaxMinKwh) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMaxMinKwh.rawValue, comment: "")
        self.infoTariffMobiePerKwhMinMaxDuration = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhMinMaxDuration) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMinMaxDuration.rawValue, comment: "")
        self.infoTariffMobiePerKwhDayOfWeek = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhDayOfWeek) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhDayOfWeek.rawValue, comment: "")
        self.infoTariffMobieSimulatePercent = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulatePercent) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulatePercent.rawValue, comment: "")
        self.infoTariffMobieSimulateTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulateTime) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulateTime.rawValue, comment: "")
        self.infoTariffMobieStart = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieStart) ?? NSLocalizedString(CodingKeys.infoTariffMobieStart.rawValue, comment: "")
        self.infoTariffMobieReturn = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieReturn) ?? NSLocalizedString(CodingKeys.infoTariffMobieReturn.rawValue, comment: "")
        self.infoTariffMobieSimulationByTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationByTime) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationByTime.rawValue, comment: "")
        self.infoTariffMobieDay = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDay) ?? NSLocalizedString(CodingKeys.infoTariffMobieDay.rawValue, comment: "")
        self.infoTariffMobieHour = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieHour) ?? NSLocalizedString(CodingKeys.infoTariffMobieHour.rawValue, comment: "")
        self.infoTariffMobieSimulationByPercentage = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationByPercentage) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationByPercentage.rawValue, comment: "")
        self.infoTariffMobieSimulationPrice = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationPrice) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationPrice.rawValue, comment: "")
        self.infoTariffMobieDurationRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDurationRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDurationRestriction.rawValue, comment: "")
        self.infoTariffMobieDayRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDayRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDayRestriction.rawValue, comment: "")
        self.infoTariffMobieTimeRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieTimeRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieTimeRestriction.rawValue, comment: "")
        self.infoTariffMobieDateRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDateRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDateRestriction.rawValue, comment: "")
        self.infoTariffMobieEnergyRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieEnergyRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieEnergyRestriction.rawValue, comment: "")
        self.infoTariffMobieCurrentRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieCurrentRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieCurrentRestriction.rawValue, comment: "")
        self.infoTariffMobiePowerRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePowerRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobiePowerRestriction.rawValue, comment: "")
        self.infoTariffMobieDefaultRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDefaultRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDefaultRestriction.rawValue, comment: "")
        self.infoTariffMobieBetween = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieBetween) ?? NSLocalizedString(CodingKeys.infoTariffMobieBetween.rawValue, comment: "")
        self.infoTariffMobieAfter = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieAfter) ?? NSLocalizedString(CodingKeys.infoTariffMobieAfter.rawValue, comment: "")
        self.infoTariffMobieBefore = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieBefore) ?? NSLocalizedString(CodingKeys.infoTariffMobieBefore.rawValue, comment: "")
        self.infoTariffMobieAnd = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieAnd) ?? NSLocalizedString(CodingKeys.infoTariffMobieAnd.rawValue, comment: "")
        // MARK: - CANCEL CARD VIEW KEYS
        self.cancelCardCancelCard = try container.decodeIfPresent(String.self, forKey: .cancelCardCancelCard) ?? NSLocalizedString(CodingKeys.cancelCardCancelCard.rawValue, comment: "")
        self.cancelCardDescription = try container.decodeIfPresent(String.self, forKey: .cancelCardDescription) ?? NSLocalizedString(CodingKeys.cancelCardDescription.rawValue, comment: "")
        self.cancelCardDescriptionHint = try container.decodeIfPresent(String.self, forKey: .cancelCardDescriptionHint) ?? NSLocalizedString(CodingKeys.cancelCardDescriptionHint.rawValue, comment: "")
        self.cancelCardReason = try container.decodeIfPresent(String.self, forKey: .cancelCardReason) ?? NSLocalizedString(CodingKeys.cancelCardReason.rawValue, comment: "")
        self.cancelCardLost = try container.decodeIfPresent(String.self, forKey: .cancelCardLost) ?? NSLocalizedString(CodingKeys.cancelCardLost.rawValue, comment: "")
        self.cancelCardTheft = try container.decodeIfPresent(String.self, forKey: .cancelCardTheft) ?? NSLocalizedString(CodingKeys.cancelCardTheft.rawValue, comment: "")
        self.cancelCardOther = try container.decodeIfPresent(String.self, forKey: .cancelCardOther) ?? NSLocalizedString(CodingKeys.cancelCardOther.rawValue, comment: "")
        self.cancelCardWantReplacement = try container.decodeIfPresent(String.self, forKey: .cancelCardWantReplacement) ?? NSLocalizedString(CodingKeys.cancelCardWantReplacement.rawValue, comment: "")
        self.cancelCardSuccessCanceledMessage = try container.decodeIfPresent(String.self, forKey: .cancelCardSuccessCanceledMessage) ?? NSLocalizedString(CodingKeys.cancelCardSuccessCanceledMessage.rawValue, comment: "")
    }
    
    public init() {
        // MARK: - GENERAL DEFAULT KEYS
        self.generalNoInternetConnection = NSLocalizedString(CodingKeys.generalNoInternetConnection.rawValue, comment: "")
        self.generalNoInternetConnectionMessage = NSLocalizedString(CodingKeys.generalNoInternetConnectionMessage.rawValue, comment: "")
        self.generalOk = NSLocalizedString(CodingKeys.generalOk.rawValue, comment: "")
        self.generalLess = NSLocalizedString(CodingKeys.generalLess.rawValue, comment: "")
        self.generalMore = NSLocalizedString(CodingKeys.generalMore.rawValue, comment: "")
        self.generalAvailableSoon = NSLocalizedString(CodingKeys.generalAvailableSoon.rawValue, comment: "")
        self.generalPlusVat = NSLocalizedString(CodingKeys.generalPlusVat.rawValue, comment: "")
        self.generalUnidentifiedEv = NSLocalizedString(CodingKeys.generalUnidentifiedEv.rawValue, comment: "")
        self.generalInfoNotAvailable = NSLocalizedString(CodingKeys.generalInfoNotAvailable.rawValue, comment: "")
        self.generalCameraOrLibraryTitle = NSLocalizedString(CodingKeys.generalCameraOrLibraryTitle.rawValue, comment: "")
        self.generalCameraBtn = NSLocalizedString(CodingKeys.generalCameraBtn.rawValue, comment: "")
        self.generalLibraryBtn = NSLocalizedString(CodingKeys.generalLibraryBtn.rawValue, comment: "")
        self.generalEmail = NSLocalizedString(CodingKeys.generalEmail.rawValue, comment: "")
        self.generalPhoneNumber = NSLocalizedString(CodingKeys.generalPhoneNumber.rawValue, comment: "")
        self.generalTypeHere = NSLocalizedString(CodingKeys.generalTypeHere.rawValue, comment: "")
        self.generalName = NSLocalizedString(CodingKeys.generalName.rawValue, comment: "")
        self.generalPassword = NSLocalizedString(CodingKeys.generalPassword.rawValue, comment: "")
        self.generalOldPassword = NSLocalizedString(CodingKeys.generalOldPassword.rawValue, comment: "")
        self.generalRepeatPassword = NSLocalizedString(CodingKeys.generalRepeatPassword.rawValue, comment: "")
        self.generalNext = NSLocalizedString(CodingKeys.generalNext.rawValue, comment: "")
        self.generalInvalidEmail = NSLocalizedString(CodingKeys.generalInvalidEmail.rawValue, comment: "")
        self.generalInvalidPhoneNumber = NSLocalizedString(CodingKeys.generalInvalidPhoneNumber.rawValue, comment: "")
        self.generalPasswordRequired = NSLocalizedString(CodingKeys.generalPasswordRequired.rawValue, comment: "")
        self.generalCode = NSLocalizedString(CodingKeys.generalCode.rawValue, comment: "")
        self.generalPasswordNotValid = NSLocalizedString(CodingKeys.generalPasswordNotValid.rawValue, comment: "")
        self.generalPasswordsDoNotMatch = NSLocalizedString(CodingKeys.generalPasswordsDoNotMatch.rawValue, comment: "")
        self.generalCancel = NSLocalizedString(CodingKeys.generalCancel.rawValue, comment: "")
        self.generalSearch = NSLocalizedString(CodingKeys.generalSearch.rawValue, comment: "")
        self.generalGenericErrorMessage = NSLocalizedString(CodingKeys.generalGenericErrorMessage.rawValue, comment: "")
        self.generalErrorSharingQrCode = NSLocalizedString(CodingKeys.generalErrorSharingQrCode.rawValue, comment: "")
        self.generalQrCodeSavedSuccessfully = NSLocalizedString(CodingKeys.generalQrCodeSavedSuccessfully.rawValue, comment: "")
        self.generalQrCodeSaveFailed = NSLocalizedString(CodingKeys.generalQrCodeSaveFailed.rawValue, comment: "")
        self.generalSave = NSLocalizedString(CodingKeys.generalSave.rawValue, comment: "")
        self.generalYes = NSLocalizedString(CodingKeys.generalYes.rawValue, comment: "")
        self.generalNo = NSLocalizedString(CodingKeys.generalNo.rawValue, comment: "")
        self.generalType = NSLocalizedString(CodingKeys.generalType.rawValue, comment: "")
        self.generalStreet = NSLocalizedString(CodingKeys.generalStreet.rawValue, comment: "")
        self.generalCity = NSLocalizedString(CodingKeys.generalCity.rawValue, comment: "")
        self.generalCountry = NSLocalizedString(CodingKeys.generalCountry.rawValue, comment: "")
        self.generalNumber = NSLocalizedString(CodingKeys.generalNumber.rawValue, comment: "")
        self.generalZipCode = NSLocalizedString(CodingKeys.generalZipCode.rawValue, comment: "")
        self.generalOther = NSLocalizedString(CodingKeys.generalOther.rawValue, comment: "")
        self.generalNameRequired = NSLocalizedString(CodingKeys.generalNameRequired.rawValue, comment: "")
        self.generalStreetRequired = NSLocalizedString(CodingKeys.generalStreetRequired.rawValue, comment: "")
        self.generalCityRequired = NSLocalizedString(CodingKeys.generalCityRequired.rawValue, comment: "")
        self.generalDoorNumberRequired = NSLocalizedString(CodingKeys.generalDoorNumberRequired.rawValue, comment: "")
        self.generalZipCodeRequired = NSLocalizedString(CodingKeys.generalZipCodeRequired.rawValue, comment: "")
        self.generalZipCodeNotValid = NSLocalizedString(CodingKeys.generalZipCodeNotValid.rawValue, comment: "")
        self.generalContractTypeFleet = NSLocalizedString(CodingKeys.generalContractTypeFleet.rawValue, comment: "")
        self.generalContractTypeUser = NSLocalizedString(CodingKeys.generalContractTypeUser.rawValue, comment: "")
        self.generalTariff = NSLocalizedString(CodingKeys.generalTariff.rawValue, comment: "")
        self.generalTin = NSLocalizedString(CodingKeys.generalTin.rawValue, comment: "")
        self.generalActivate = NSLocalizedString(CodingKeys.generalActivate.rawValue, comment: "")
        self.generalCardNumber = NSLocalizedString(CodingKeys.generalCardNumber.rawValue, comment: "")
        self.generalAddress = NSLocalizedString(CodingKeys.generalAddress.rawValue, comment: "")
        self.generalFieldRequired = NSLocalizedString(CodingKeys.generalFieldRequired.rawValue, comment: "")
        self.generalTinNumberInvalid = NSLocalizedString(CodingKeys.generalTinNumberInvalid.rawValue, comment: "")
        self.generalEdit = NSLocalizedString(CodingKeys.generalEdit.rawValue, comment: "")
        self.generalRemove = NSLocalizedString(CodingKeys.generalRemove.rawValue, comment: "")
        self.generalDelete = NSLocalizedString(CodingKeys.generalDelete.rawValue, comment: "")
        self.generalNotes = NSLocalizedString(CodingKeys.generalNotes.rawValue, comment: "")
        self.generalLicensePlate = NSLocalizedString(CodingKeys.generalLicensePlate.rawValue, comment: "")
        self.generalPrimary = NSLocalizedString(CodingKeys.generalPrimary.rawValue, comment: "")
        self.generalNetworks = NSLocalizedString(CodingKeys.generalNetworks.rawValue, comment: "")
        self.generalPayment = NSLocalizedString(CodingKeys.generalPayment.rawValue, comment: "")
        self.generalDriver = NSLocalizedString(CodingKeys.generalDriver.rawValue, comment: "")
        self.generalEvOwner = NSLocalizedString(CodingKeys.generalEvOwner.rawValue, comment: "")
        self.generalCompany = NSLocalizedString(CodingKeys.generalCompany.rawValue, comment: "")
        self.generalMyself = NSLocalizedString(CodingKeys.generalMyself.rawValue, comment: "")
        self.generalDuration = NSLocalizedString(CodingKeys.generalDuration.rawValue, comment: "")
        self.generalEnergySupplied = NSLocalizedString(CodingKeys.generalEnergySupplied.rawValue, comment: "")
        self.generalInstantPower = NSLocalizedString(CodingKeys.generalInstantPower.rawValue, comment: "")
        self.generalCost = NSLocalizedString(CodingKeys.generalCost.rawValue, comment: "")
        self.generalDurationPlaceholder = NSLocalizedString(CodingKeys.generalDurationPlaceholder.rawValue, comment: "")
        self.generalEnergySuppliedPlaceholder = NSLocalizedString(CodingKeys.generalEnergySuppliedPlaceholder.rawValue, comment: "")
        self.generalInstantPowerPlaceholder = NSLocalizedString(CodingKeys.generalInstantPowerPlaceholder.rawValue, comment: "")
        self.generalCostPlaceholder = NSLocalizedString(CodingKeys.generalCostPlaceholder.rawValue, comment: "")
        self.generalTimeLeft = NSLocalizedString(CodingKeys.generalTimeLeft.rawValue, comment: "")
        self.generalBattery = NSLocalizedString(CodingKeys.generalBattery.rawValue, comment: "")
        self.generalUnlockPlug = NSLocalizedString(CodingKeys.generalUnlockPlug.rawValue, comment: "")
        self.generalEstimatedPriceInfo = NSLocalizedString(CodingKeys.generalEstimatedPriceInfo.rawValue, comment: "")
        self.generalVatNotIncluded = NSLocalizedString(CodingKeys.generalVatNotIncluded.rawValue, comment: "")
        self.generalPriceOnEmptyHours = NSLocalizedString(CodingKeys.generalPriceOnEmptyHours.rawValue, comment: "")
        self.generalPriceOnFullHours = NSLocalizedString(CodingKeys.generalPriceOnFullHours.rawValue, comment: "")
        self.generalPriceOn = NSLocalizedString(CodingKeys.generalPriceOn.rawValue, comment: "")
        self.generalEnergyBased = NSLocalizedString(CodingKeys.generalEnergyBased.rawValue, comment: "")
        self.generalTimeBased = NSLocalizedString(CodingKeys.generalTimeBased.rawValue, comment: "")
        self.generalBooking = NSLocalizedString(CodingKeys.generalBooking.rawValue, comment: "")
        self.generalCharging = NSLocalizedString(CodingKeys.generalCharging.rawValue, comment: "")
        self.generalParking = NSLocalizedString(CodingKeys.generalParking.rawValue, comment: "")
        self.generalActivation = NSLocalizedString(CodingKeys.generalActivation.rawValue, comment: "")
        self.generalOhNoTitle = NSLocalizedString(CodingKeys.generalOhNoTitle.rawValue, comment: "")
        self.generalSomethingWentWrong = NSLocalizedString(CodingKeys.generalSomethingWentWrong.rawValue, comment: "")
        self.generalSend = NSLocalizedString(CodingKeys.generalSend.rawValue, comment: "")
        self.generalUnlockCableSuccessMessage = NSLocalizedString(CodingKeys.generalUnlockCableSuccessMessage.rawValue, comment: "")
        self.generalAdd = NSLocalizedString(CodingKeys.generalAdd.rawValue, comment: "")
        self.generalOccupied = NSLocalizedString(CodingKeys.generalOccupied.rawValue, comment: "")
        self.generalFree = NSLocalizedString(CodingKeys.generalFree.rawValue, comment: "")
        self.generalOffline = NSLocalizedString(CodingKeys.generalOffline.rawValue, comment: "")
        self.generalPublic = NSLocalizedString(CodingKeys.generalPublic.rawValue, comment: "")
        self.generalRestrict = NSLocalizedString(CodingKeys.generalRestrict.rawValue, comment: "")
        self.generalPrivate = NSLocalizedString(CodingKeys.generalPrivate.rawValue, comment: "")
        self.generalAvailableImagesToTake = NSLocalizedString(CodingKeys.generalAvailableImagesToTake.rawValue, comment: "")
        self.generalLocation = NSLocalizedString(CodingKeys.generalLocation.rawValue, comment: "")
        self.generalDefault = NSLocalizedString(CodingKeys.generalDefault.rawValue, comment: "")
        self.generalAddImages = NSLocalizedString(CodingKeys.generalAddImages.rawValue, comment: "")
        self.generalConfirm = NSLocalizedString(CodingKeys.generalConfirm.rawValue, comment: "")
        self.generalCopied = NSLocalizedString(CodingKeys.generalCopied.rawValue, comment: "")
        self.generalSent = NSLocalizedString(CodingKeys.generalSent.rawValue, comment: "")
        self.generalPlug = NSLocalizedString(CodingKeys.generalPlug.rawValue, comment: "")
        self.generalPlugs = NSLocalizedString(CodingKeys.generalPlugs.rawValue, comment: "")
        self.generalOf = NSLocalizedString(CodingKeys.generalOf.rawValue, comment: "")
        self.generalPage = NSLocalizedString(CodingKeys.generalPage.rawValue, comment: "")
        self.generalNoEvs = NSLocalizedString(CodingKeys.generalNoEvs.rawValue, comment: "")
        self.generalGoToMyEvs = NSLocalizedString(CodingKeys.generalGoToMyEvs.rawValue, comment: "")
        self.generalDownload = NSLocalizedString(CodingKeys.generalDownload.rawValue, comment: "")
        // MARK: - OTHER DEFAULT KEYS
        self.appNeedsToBeUpdated = NSLocalizedString(CodingKeys.appNeedsToBeUpdated.rawValue, comment: "")
        self.chargerCannotBeUsed = NSLocalizedString(CodingKeys.chargerCannotBeUsed.rawValue, comment: "")
        self.locationServicesAlertTitle = NSLocalizedString(CodingKeys.locationServicesAlertTitle.rawValue, comment: "")
        self.locationServicesAlertMessage = NSLocalizedString(CodingKeys.locationServicesAlertMessage.rawValue, comment: "")
        self.locationsServicesAlertEnableButton = NSLocalizedString(CodingKeys.locationsServicesAlertEnableButton.rawValue, comment: "")
        self.libraryPermissionAlertTitle = NSLocalizedString(CodingKeys.libraryPermissionAlertTitle.rawValue, comment: "")
        self.libraryPermissionAlertMessage = NSLocalizedString(CodingKeys.libraryPermissionAlertMessage.rawValue, comment: "")
        self.libraryPermissionAlertEnableButton = NSLocalizedString(CodingKeys.libraryPermissionAlertEnableButton.rawValue, comment: "")
        self.cameraPermissionAlertTitle = NSLocalizedString(CodingKeys.cameraPermissionAlertTitle.rawValue, comment: "")
        self.cameraPermissionAlertMesage = NSLocalizedString(CodingKeys.cameraPermissionAlertMesage.rawValue, comment: "")
        self.cameraPermissionAlertEnableButton = NSLocalizedString(CodingKeys.cameraPermissionAlertEnableButton.rawValue, comment: "")
        self.contactsPermissionAlertTitle = NSLocalizedString(CodingKeys.contactsPermissionAlertTitle.rawValue, comment: "")
        self.contactsPermissionAlertMessage = NSLocalizedString(CodingKeys.contactsPermissionAlertMessage.rawValue, comment: "")
        self.contactsPermissionAlertEnableButton = NSLocalizedString(CodingKeys.contactsPermissionAlertEnableButton.rawValue, comment: "")
        self.messageLimitAddObjects = NSLocalizedString(CodingKeys.messageLimitAddObjects.rawValue, comment: "")
        self.networkRoaming = NSLocalizedString(CodingKeys.networkRoaming.rawValue, comment: "")
        self.networkOthers = NSLocalizedString(CodingKeys.networkOthers.rawValue, comment: "")
        self.notificationsPermissionAlertTitle = NSLocalizedString(CodingKeys.notificationsPermissionAlertTitle.rawValue, comment: "")
        self.notificationsPermissionAlertMessage = NSLocalizedString(CodingKeys.notificationsPermissionAlertMessage.rawValue, comment: "")
        self.notificationsPermissionAlertEnableButton = NSLocalizedString(CodingKeys.notificationsPermissionAlertEnableButton.rawValue, comment: "")
        // MARK: - SEARCH PAGE DEFAULT KEYS
        self.searchLocations = NSLocalizedString(CodingKeys.searchLocations.rawValue, comment: "")
        self.searchChargingStations = NSLocalizedString(CodingKeys.searchChargingStations.rawValue, comment: "")
        self.searchRecent = NSLocalizedString(CodingKeys.searchRecent.rawValue, comment: "")
        self.searchNoResultsFound = NSLocalizedString(CodingKeys.searchNoResultsFound.rawValue, comment: "")
        self.searchAnUnexpectedErrorOccurred = NSLocalizedString(CodingKeys.searchAnUnexpectedErrorOccurred.rawValue, comment: "")
        self.searchNoRecents = NSLocalizedString(CodingKeys.searchNoRecents.rawValue, comment: "")
        // MARK: - FILTERS PAGE DEFAULT KEYS
        self.filtersTitle = NSLocalizedString(CodingKeys.filtersTitle.rawValue, comment: "")
        self.filtersClearFiltersButton = NSLocalizedString(CodingKeys.filtersClearFiltersButton.rawValue, comment: "")
        self.filtersAvailableStations = NSLocalizedString(CodingKeys.filtersAvailableStations.rawValue, comment: "")
        self.filtersPrice = NSLocalizedString(CodingKeys.filtersPrice.rawValue, comment: "")
        self.filtersMin = NSLocalizedString(CodingKeys.filtersMin.rawValue, comment: "")
        self.filtersPower = NSLocalizedString(CodingKeys.filtersPower.rawValue, comment: "")
        self.filtersKwh = NSLocalizedString(CodingKeys.filtersKwh.rawValue, comment: "")
        self.filtersRating = NSLocalizedString(CodingKeys.filtersRating.rawValue, comment: "")
        self.filtersMinimum = NSLocalizedString(CodingKeys.filtersMinimum.rawValue, comment: "")
        self.filtersNetworks = NSLocalizedString(CodingKeys.filtersNetworks.rawValue, comment: "")
        self.filtersOtherNetworks = NSLocalizedString(CodingKeys.filtersOtherNetworks.rawValue, comment: "")
        self.filtersEvioNetwork = NSLocalizedString(CodingKeys.filtersEvioNetwork.rawValue, comment: "")
        self.filtersTeslaNetwork = NSLocalizedString(CodingKeys.filtersTeslaNetwork.rawValue, comment: "")
        self.filtersMyChargers = NSLocalizedString(CodingKeys.filtersMyChargers.rawValue, comment: "")
        self.filtersTypeOfConnector = NSLocalizedString(CodingKeys.filtersTypeOfConnector.rawValue, comment: "")
        self.filtersVehicles = NSLocalizedString(CodingKeys.filtersVehicles.rawValue, comment: "")
        self.filtersParkingType = NSLocalizedString(CodingKeys.filtersParkingType.rawValue, comment: "")
        self.filtersApplyButton = NSLocalizedString(CodingKeys.filtersApplyButton.rawValue, comment: "")
        self.filtersInformationPrice = NSLocalizedString(CodingKeys.filtersInformationPrice.rawValue, comment: "")
        self.filtersMaxPowerEvInfo = NSLocalizedString(CodingKeys.filtersMaxPowerEvInfo.rawValue, comment: "")
        self.filtersOnlyAvailable = NSLocalizedString(CodingKeys.filtersOnlyAvailable.rawValue, comment: "")
        self.filtersOnlyOnline = NSLocalizedString(CodingKeys.filtersOnlyOnline.rawValue, comment: "")
        self.filtersOnlyPerKwh = NSLocalizedString(CodingKeys.filtersOnlyPerKwh.rawValue, comment: "")
        self.filtersOnlyPerMin = NSLocalizedString(CodingKeys.filtersOnlyPerMin.rawValue, comment: "")
        self.filtersTariff = NSLocalizedString(CodingKeys.filtersTariff.rawValue, comment: "")
        self.filtersAvailability = NSLocalizedString(CodingKeys.filtersAvailability.rawValue, comment: "")
        // MARK: - FAVOURITES PAGE DEFAULT KEYS
        self.favouritesEmptyViewWithoutLoginSubTitleUnderline = NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitleUnderline.rawValue, comment: "")
        self.favouritesEmptyViewTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewTitle.rawValue, comment: "")
        self.favouritesEmptyViewSubTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewSubTitle.rawValue, comment: "")
        self.favouritesEmptyViewWithoutLoginSubTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitle.rawValue, comment: "")
        self.favouritesTitle = NSLocalizedString(CodingKeys.favouritesTitle.rawValue, comment: "")
        // MARK: - CHARGING POINT PAGE DEFAULT KEYS
        self.chargerDetailsStop = NSLocalizedString(CodingKeys.chargerDetailsStop.rawValue, comment: "")
        self.chargerDetailsNetworkPhone = NSLocalizedString(CodingKeys.chargerDetailsNetworkPhone.rawValue, comment: "")
        self.chargerDetailsNetworkEmail = NSLocalizedString(CodingKeys.chargerDetailsNetworkEmail.rawValue, comment: "")
        self.chargerDetailsPriceEstimative = NSLocalizedString(CodingKeys.chargerDetailsPriceEstimative.rawValue, comment: "")
        self.chargerDetailsPower = NSLocalizedString(CodingKeys.chargerDetailsPower.rawValue, comment: "")
        self.chargerDetailsBookButton = NSLocalizedString(CodingKeys.chargerDetailsBookButton.rawValue, comment: "")
        self.chargerDetailsCharge = NSLocalizedString(CodingKeys.chargerDetailsCharge.rawValue, comment: "")
        self.chargerDetailsDistance = NSLocalizedString(CodingKeys.chargerDetailsDistance.rawValue, comment: "")
        self.chargerDetailsNotificationCreated = NSLocalizedString(CodingKeys.chargerDetailsNotificationCreated.rawValue, comment: "")
        self.chargerDetailsTooFarFromTheCharger = NSLocalizedString(CodingKeys.chargerDetailsTooFarFromTheCharger.rawValue, comment: "")
        self.chargerDetailsContract = NSLocalizedString(CodingKeys.chargerDetailsContract.rawValue, comment: "")
        self.chargerDetailsNoRFID = NSLocalizedString(CodingKeys.chargerDetailsNoRFID.rawValue, comment: "")
        self.chargerDetailsMyEv = NSLocalizedString(CodingKeys.chargerDetailsMyEv.rawValue, comment: "")
        self.chargerDetailsAvailability = NSLocalizedString(CodingKeys.chargerDetailsAvailability.rawValue, comment: "")
        self.chargerDetailsChargingPointInfo = NSLocalizedString(CodingKeys.chargerDetailsChargingPointInfo.rawValue, comment: "")
        self.chargerDetailsChoosePlug = NSLocalizedString(CodingKeys.chargerDetailsChoosePlug.rawValue, comment: "")
        self.chargerDetailsEstimateCost = NSLocalizedString(CodingKeys.chargerDetailsEstimateCost.rawValue, comment: "")
        self.chargerDetailsKWh = NSLocalizedString(CodingKeys.chargerDetailsKWh.rawValue, comment: "")
        self.chargerDetailsParkingType = NSLocalizedString(CodingKeys.chargerDetailsParkingType.rawValue, comment: "")
        self.chargerDetailsPointsInterestNearby = NSLocalizedString(CodingKeys.chargerDetailsPointsInterestNearby.rawValue, comment: "")
        self.chargerDetailsPrice = NSLocalizedString(CodingKeys.chargerDetailsPrice.rawValue, comment: "")
        self.chargerDetailsReportIssue = NSLocalizedString(CodingKeys.chargerDetailsReportIssue.rawValue, comment: "")
        self.chargerDetailsTime = NSLocalizedString(CodingKeys.chargerDetailsTime.rawValue, comment: "")
        self.chargerDetailsVehicles = NSLocalizedString(CodingKeys.chargerDetailsVehicles.rawValue, comment: "")
        self.chargerDetailsChargingPointNoInfo = NSLocalizedString(CodingKeys.chargerDetailsChargingPointNoInfo.rawValue, comment: "")
        self.chargerDetailsNoDistance = NSLocalizedString(CodingKeys.chargerDetailsNoDistance.rawValue, comment: "")
        self.chargerDetailsNoPlugTariff = NSLocalizedString(CodingKeys.chargerDetailsNoPlugTariff.rawValue, comment: "")
        self.chargerDetailsCustomCharge = NSLocalizedString(CodingKeys.chargerDetailsCustomCharge.rawValue, comment: "")
        self.chargerDetailsNotifyMeLabel = NSLocalizedString(CodingKeys.chargerDetailsNotifyMeLabel.rawValue, comment: "")
        self.chargerDetailsChargeXMin = NSLocalizedString(CodingKeys.chargerDetailsChargeXMin.rawValue, comment: "")
        self.chargerDetailsChargeXkWh = NSLocalizedString(CodingKeys.chargerDetailsChargeXkWh.rawValue, comment: "")
        self.chargerDetailsSpendOnlyXEuros = NSLocalizedString(CodingKeys.chargerDetailsSpendOnlyXEuros.rawValue, comment: "")
        self.chargerDetailsYouAlreadyHaveANotification = NSLocalizedString(CodingKeys.chargerDetailsYouAlreadyHaveANotification.rawValue, comment: "")
        self.chargerDetailsChargingScheduling = NSLocalizedString(CodingKeys.chargerDetailsChargingScheduling.rawValue, comment: "")
        self.chargerDetailsDatesCannotBeEqual = NSLocalizedString(CodingKeys.chargerDetailsDatesCannotBeEqual.rawValue, comment: "")
        self.chargerDetailsChargingTimeCannotBeLongerThan = NSLocalizedString(CodingKeys.chargerDetailsChargingTimeCannotBeLongerThan.rawValue, comment: "")
        self.chargerDetailsStart = NSLocalizedString(CodingKeys.chargerDetailsStart.rawValue, comment: "")
        self.chargerDetailsSchedule = NSLocalizedString(CodingKeys.chargerDetailsSchedule.rawValue, comment: "")
        self.chargerDetailsLowerTariffPeriod = NSLocalizedString(CodingKeys.chargerDetailsLowerTariffPeriod.rawValue, comment: "")
        self.chargerDetailsGreenCharging = NSLocalizedString(CodingKeys.chargerDetailsGreenCharging.rawValue, comment: "")
        self.chargerDetailsNetwork = NSLocalizedString(CodingKeys.chargerDetailsNetwork.rawValue, comment: "")
        self.chargerDetailsOperator = NSLocalizedString(CodingKeys.chargerDetailsOperator.rawValue, comment: "")
        self.chargerDetailsChargerIdentifier = NSLocalizedString(CodingKeys.chargerDetailsChargerIdentifier.rawValue, comment: "")
        self.chargerDetailsChargerManufacturer = NSLocalizedString(CodingKeys.chargerDetailsChargerManufacturer.rawValue, comment: "")
        self.chargerDetailsChargersModel = NSLocalizedString(CodingKeys.chargerDetailsChargersModel.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSPart1 = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSPart2 = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart2.rawValue, comment: "")
        self.chargerDetailsChargerOccupiediOSBoldPart = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSBoldPart.rawValue, comment: "")
        self.chargerDetailsCemeTariff = NSLocalizedString(CodingKeys.chargerDetailsCemeTariff.rawValue, comment: "")
        self.chargerDetailsAlways = NSLocalizedString(CodingKeys.chargerDetailsAlways.rawValue, comment: "")
        self.chargerDetailsLimited = NSLocalizedString(CodingKeys.chargerDetailsLimited.rawValue, comment: "")
        self.chargerPointFullDetailsThanksForTheImageMessage = NSLocalizedString(CodingKeys.chargerPointFullDetailsThanksForTheImageMessage.rawValue, comment: "")
        self.chargerDetailsWrongBehaviorStation = NSLocalizedString(CodingKeys.chargerDetailsWrongBehaviorStation.rawValue, comment: "")
        self.chargerDetailsTariff = NSLocalizedString(CodingKeys.chargerDetailsTariff.rawValue, comment: "")
        self.chargerPointFullDetailsStopDateShouldBeAfterStartDate = NSLocalizedString(CodingKeys.chargerPointFullDetailsStopDateShouldBeAfterStartDate.rawValue, comment: "")
        self.chargerPointFullDetailsChargingTimeMinimumDuration = NSLocalizedString(CodingKeys.chargerPointFullDetailsChargingTimeMinimumDuration.rawValue, comment: "")
        self.chargerDetailsGoToPaymentMethods = NSLocalizedString(CodingKeys.chargerDetailsGoToPaymentMethods.rawValue, comment: "")
        self.chargerDetailsGoToBillingProfile = NSLocalizedString(CodingKeys.chargerDetailsGoToBillingProfile.rawValue, comment: "")
        // MARK: - PLUG STATUS DEFAULT KEYS
        self.plugStatusAvailable = NSLocalizedString(CodingKeys.plugStatusAvailable.rawValue, comment: "")
        self.plugStatusBlocked = NSLocalizedString(CodingKeys.plugStatusBlocked.rawValue, comment: "")
        self.plugStatusCharging = NSLocalizedString(CodingKeys.plugStatusCharging.rawValue, comment: "")
        self.plugStatusInoperative = NSLocalizedString(CodingKeys.plugStatusInoperative.rawValue, comment: "")
        self.plugStatusOutOfOrder = NSLocalizedString(CodingKeys.plugStatusOutOfOrder.rawValue, comment: "")
        self.plugStatusPlanned = NSLocalizedString(CodingKeys.plugStatusPlanned.rawValue, comment: "")
        self.plugStatusRemoved = NSLocalizedString(CodingKeys.plugStatusRemoved.rawValue, comment: "")
        self.plugStatusBooked = NSLocalizedString(CodingKeys.plugStatusBooked.rawValue, comment: "")
        self.plugStatusUnknown = NSLocalizedString(CodingKeys.plugStatusUnknown.rawValue, comment: "")
        self.plugStatusMobieOutOfOrderMessage = NSLocalizedString(CodingKeys.plugStatusMobieOutOfOrderMessage.rawValue, comment: "")
        // MARK: - ESTIMATED COST PAGE DEFAULT KEYS
        self.estimatedCostInfoTeslaEViOS = NSLocalizedString(CodingKeys.estimatedCostInfoTeslaEViOS.rawValue, comment: "")
        self.estimatedCostInfoEVIOEviOS = NSLocalizedString(CodingKeys.estimatedCostInfoEVIOEviOS.rawValue, comment: "")
        self.estimatedCostMobieNoEviOS = NSLocalizedString(CodingKeys.estimatedCostMobieNoEviOS.rawValue, comment: "")
        self.estimatedCostInfoMobiePart1iOs = NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart1iOs.rawValue, comment: "")
        self.estimatedCostInfoMobiePart2iOs = NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart2iOs.rawValue, comment: "")
        self.estimatedCostTextInfoTeslaiOS = NSLocalizedString(CodingKeys.estimatedCostTextInfoTeslaiOS.rawValue, comment: "")
        self.estimatedCostInfoTeslaWithEViOS = NSLocalizedString(CodingKeys.estimatedCostInfoTeslaWithEViOS.rawValue, comment: "")
        self.estimatedCostEVIOHours = NSLocalizedString(CodingKeys.estimatedCostEVIOHours.rawValue, comment: "")
        self.estimatedCostEVIOMinutes = NSLocalizedString(CodingKeys.estimatedCostEVIOMinutes.rawValue, comment: "")
        self.estimatedCostSelectedPlug = NSLocalizedString(CodingKeys.estimatedCostSelectedPlug.rawValue, comment: "")
        self.estimatedCostInfoWalletPrice = NSLocalizedString(CodingKeys.estimatedCostInfoWalletPrice.rawValue, comment: "")
        self.estimatedCostEvioActivation = NSLocalizedString(CodingKeys.estimatedCostEvioActivation.rawValue, comment: "")
        self.estimatedCostEvioActivationValue = NSLocalizedString(CodingKeys.estimatedCostEvioActivationValue.rawValue, comment: "")
        self.estimatedCostTextInfoEvio = NSLocalizedString(CodingKeys.estimatedCostTextInfoEvio.rawValue, comment: "")
        self.estimatedCostOpcTariff = NSLocalizedString(CodingKeys.estimatedCostOpcTariff.rawValue, comment: "")
        self.estimatedCostCemeTariff = NSLocalizedString(CodingKeys.estimatedCostCemeTariff.rawValue, comment: "")
        self.estimatedCostActivation = NSLocalizedString(CodingKeys.estimatedCostActivation.rawValue, comment: "")
        self.estimatedCostPerMinute = NSLocalizedString(CodingKeys.estimatedCostPerMinute.rawValue, comment: "")
        self.estimatedCostPerKwH = NSLocalizedString(CodingKeys.estimatedCostPerKwH.rawValue, comment: "")
        self.estimatedCostFees = NSLocalizedString(CodingKeys.estimatedCostFees.rawValue, comment: "")
        self.estimatedCostIec = NSLocalizedString(CodingKeys.estimatedCostIec.rawValue, comment: "")
        self.estimatedCostTar = NSLocalizedString(CodingKeys.estimatedCostTar.rawValue, comment: "")
        self.estimatedCostVat = NSLocalizedString(CodingKeys.estimatedCostVat.rawValue, comment: "")
        self.estimatedCostCeme = NSLocalizedString(CodingKeys.estimatedCostCeme.rawValue, comment: "")
        self.estimatedCostOpc = NSLocalizedString(CodingKeys.estimatedCostOpc.rawValue, comment: "")
        self.estimatedCostTotal = NSLocalizedString(CodingKeys.estimatedCostTotal.rawValue, comment: "")
        self.estimatedCostChargingTime = NSLocalizedString(CodingKeys.estimatedCostChargingTime.rawValue, comment: "")
        self.estimatedCostTotalPower = NSLocalizedString(CodingKeys.estimatedCostTotalPower.rawValue, comment: "")
        self.estimatedCostParking = NSLocalizedString(CodingKeys.estimatedCostParking.rawValue, comment: "")
        self.estimatedCostCharging = NSLocalizedString(CodingKeys.estimatedCostCharging.rawValue, comment: "")
        self.estimatedCostBooking = NSLocalizedString(CodingKeys.estimatedCostBooking.rawValue, comment: "")
        self.estimatedCostParkingDuringCharging = NSLocalizedString(CodingKeys.estimatedCostParkingDuringCharging.rawValue, comment: "")
        self.estimatedCostParkingAfterCharging = NSLocalizedString(CodingKeys.estimatedCostParkingAfterCharging.rawValue, comment: "")
        // MARK: - AVALILABILITY DEFAULT KEYS
        self.availabilityTo = NSLocalizedString(CodingKeys.availabilityTo.rawValue, comment: "")
        // MARK: - CONTRACTS PAGE DEFAULT KEYS
        self.contractsTitle = NSLocalizedString(CodingKeys.contractsTitle.rawValue, comment: "")
        self.contractsRoamingNotActive = NSLocalizedString(CodingKeys.contractsRoamingNotActive.rawValue, comment: "")
        self.contractsMyContracts = NSLocalizedString(CodingKeys.contractsMyContracts.rawValue, comment: "")
        self.contractsOtherContracts = NSLocalizedString(CodingKeys.contractsOtherContracts.rawValue, comment: "")
        self.contractsSelectContract = NSLocalizedString(CodingKeys.contractsSelectContract.rawValue, comment: "")
        self.contractsContractNoValidForRoaming = NSLocalizedString(CodingKeys.contractsContractNoValidForRoaming.rawValue, comment: "")
        self.contractsContractNotValidForMobie = NSLocalizedString(CodingKeys.contractsContractNotValidForMobie.rawValue, comment: "")
        self.contractsContractNoValidForMobieButCanBeUsedForAdHoc = NSLocalizedString(CodingKeys.contractsContractNoValidForMobieButCanBeUsedForAdHoc.rawValue, comment: "")
        self.contractsContractNoActiveForEv = NSLocalizedString(CodingKeys.contractsContractNoActiveForEv.rawValue, comment: "")
        self.contractsNoOtherContracts = NSLocalizedString(CodingKeys.contractsNoOtherContracts.rawValue, comment: "")
        self.contractsNoContracts = NSLocalizedString(CodingKeys.contractsNoContracts.rawValue, comment: "")
        self.contractsNoAccessForEvioNetwork = NSLocalizedString(CodingKeys.contractsNoAccessForEvioNetwork.rawValue, comment: "")
        self.contractsVirtualCard = NSLocalizedString(CodingKeys.contractsVirtualCard.rawValue, comment: "")
        self.contractsVirtualAndPhysicalCard = NSLocalizedString(CodingKeys.contractsVirtualAndPhysicalCard.rawValue, comment: "")
        self.contractsChargeVehicleOnNetwork = NSLocalizedString(CodingKeys.contractsChargeVehicleOnNetwork.rawValue, comment: "")
        self.contractsAccessToNetwork = NSLocalizedString(CodingKeys.contractsAccessToNetwork.rawValue, comment: "")
        self.contractsTariffInfo = NSLocalizedString(CodingKeys.contractsTariffInfo.rawValue, comment: "")
        self.contractsTariffInfoEvio = NSLocalizedString(CodingKeys.contractsTariffInfoEvio.rawValue, comment: "")
        self.contractsActivateCardButton = NSLocalizedString(CodingKeys.contractsActivateCardButton.rawValue, comment: "")
        self.contractsJoinButton = NSLocalizedString(CodingKeys.contractsJoinButton.rawValue, comment: "")
        self.contractsNoAccessToNetwork = NSLocalizedString(CodingKeys.contractsNoAccessToNetwork.rawValue, comment: "")
        self.contractsAlreadyRequestedAccessToNetwork = NSLocalizedString(CodingKeys.contractsAlreadyRequestedAccessToNetwork.rawValue, comment: "")
        self.contractsAdHocAlertPart1 = NSLocalizedString(CodingKeys.contractsAdHocAlertPart1.rawValue, comment: "")
        self.contractsAdHocAlertPart2 = NSLocalizedString(CodingKeys.contractsAdHocAlertPart2.rawValue, comment: "")
        self.contractsAdHocAlertBoldPart = NSLocalizedString(CodingKeys.contractsAdHocAlertBoldPart.rawValue, comment: "")
        self.contractsAdHocAlertNextButton = NSLocalizedString(CodingKeys.contractsAdHocAlertNextButton.rawValue, comment: "")
        self.contractsMessageInfoActivationOkGv = NSLocalizedString(CodingKeys.contractsMessageInfoActivationOkGv.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditions = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditionsConditions1 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions1.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditionsConditions2 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions2.rawValue, comment: "")
        self.contractsMobieTermAndCondGeneralConditions2 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions2.rawValue, comment: "")
        self.contractsMobieGeneralConditionsRequired = NSLocalizedString(CodingKeys.contractsMobieGeneralConditionsRequired.rawValue, comment: "")
        self.contractsClientIdentification = NSLocalizedString(CodingKeys.contractsClientIdentification.rawValue, comment: "")
        self.contractsCardActivatedSuccessfully = NSLocalizedString(CodingKeys.contractsCardActivatedSuccessfully.rawValue, comment: "")
        self.contractsPaymentMethod = NSLocalizedString(CodingKeys.contractsPaymentMethod.rawValue, comment: "")
        // MARK: - EVS PAGE DEFAULT KEYS
        self.evsSelectEvTitle = NSLocalizedString(CodingKeys.evsSelectEvTitle.rawValue, comment: "")
        self.evsMyEvs = NSLocalizedString(CodingKeys.evsMyEvs.rawValue, comment: "")
        self.evsOtherEvs = NSLocalizedString(CodingKeys.evsOtherEvs.rawValue, comment: "")
        self.evsAddVehicle = NSLocalizedString(CodingKeys.evsAddVehicle.rawValue, comment: "")
        self.evsNoOtherEvsTitle = NSLocalizedString(CodingKeys.evsNoOtherEvsTitle.rawValue, comment: "")
        self.evsNoOtherEvsSubTitle = NSLocalizedString(CodingKeys.evsNoOtherEvsSubTitle.rawValue, comment: "")
        self.evsNoOtherEvsSubtitleNoLogin = NSLocalizedString(CodingKeys.evsNoOtherEvsSubtitleNoLogin.rawValue, comment: "")
        self.evsNewEv = NSLocalizedString(CodingKeys.evsNewEv.rawValue, comment: "")
        self.evsNewEvInfo = NSLocalizedString(CodingKeys.evsNewEvInfo.rawValue, comment: "")
        self.evsBrand = NSLocalizedString(CodingKeys.evsBrand.rawValue, comment: "")
        self.evsModel = NSLocalizedString(CodingKeys.evsModel.rawValue, comment: "")
        self.evsVersion = NSLocalizedString(CodingKeys.evsVersion.rawValue, comment: "")
        self.evsChargerPower = NSLocalizedString(CodingKeys.evsChargerPower.rawValue, comment: "")
        self.evsRange = NSLocalizedString(CodingKeys.evsRange.rawValue, comment: "")
        self.evsBatteryCapacity = NSLocalizedString(CodingKeys.evsBatteryCapacity.rawValue, comment: "")
        self.evsChargingTime = NSLocalizedString(CodingKeys.evsChargingTime.rawValue, comment: "")
        self.evsInternalChargingPower = NSLocalizedString(CodingKeys.evsInternalChargingPower.rawValue, comment: "")
        self.evsFastChargingPower = NSLocalizedString(CodingKeys.evsFastChargingPower.rawValue, comment: "")
        self.evsFastChargingTime = NSLocalizedString(CodingKeys.evsFastChargingTime.rawValue, comment: "")
        self.evsVehiclePlugs = NSLocalizedString(CodingKeys.evsVehiclePlugs.rawValue, comment: "")
        self.evsCharging = NSLocalizedString(CodingKeys.evsCharging.rawValue, comment: "")
        self.evsNotCharging = NSLocalizedString(CodingKeys.evsNotCharging.rawValue, comment: "")
        self.evsLeaveGroupTitle = NSLocalizedString(CodingKeys.evsLeaveGroupTitle.rawValue, comment: "")
        self.evsLeaveGroupMessage = NSLocalizedString(CodingKeys.evsLeaveGroupMessage.rawValue, comment: "")
        self.evsDrivers = NSLocalizedString(CodingKeys.evsDrivers.rawValue, comment: "")
        self.evsPlafond = NSLocalizedString(CodingKeys.evsPlafond.rawValue, comment: "")
        self.evsCompany = NSLocalizedString(CodingKeys.evsCompany.rawValue, comment: "")
        self.evsPlafondMovements = NSLocalizedString(CodingKeys.evsPlafondMovements.rawValue, comment: "")
        self.evsNoPlafondMovements = NSLocalizedString(CodingKeys.evsNoPlafondMovements.rawValue, comment: "")
        self.evsDuration = NSLocalizedString(CodingKeys.evsDuration.rawValue, comment: "")
        self.evsMovement = NSLocalizedString(CodingKeys.evsMovement.rawValue, comment: "") 
        self.evsNetwork = NSLocalizedString(CodingKeys.evsNetwork.rawValue, comment: "")
        self.evsCurrentPlafond = NSLocalizedString(CodingKeys.evsCurrentPlafond.rawValue, comment: "")
        self.evsMonthlyPlafond = NSLocalizedString(CodingKeys.evsMonthlyPlafond.rawValue, comment: "")
        self.evsUsedPlafond = NSLocalizedString(CodingKeys.evsUsedPlafond.rawValue, comment: "")
        // MARK: - VALIDATION MESSAGE DEFAULT KEYS
        self.validationMessageProceedNowBt = NSLocalizedString(CodingKeys.validationMessageProceedNowBt.rawValue, comment: "")
        self.validationMessageAdhocInfo2iOS = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2iOS.rawValue, comment: "")
        self.validationMessageMessageInfoActivationOkGv = NSLocalizedString(CodingKeys.validationMessageMessageInfoActivationOkGv.rawValue, comment: "")
        self.validationMessageNotHaveContractRoamingNote = NSLocalizedString(CodingKeys.validationMessageNotHaveContractRoamingNote.rawValue, comment: "")
        self.validationMessageAdhocInfoNew = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNew.rawValue, comment: "")
        self.validationMessageAdhocFooterNote = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNote.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteUnderline = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteUnderline.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGeneric.rawValue, comment: "")
        self.validationMessageAdhocFooterNoteGenericUnderline = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGenericUnderline.rawValue, comment: "")
        self.validationMessageAdhocInfoGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocInfoGeneric.rawValue, comment: "")
        self.validationMessageAdhocInfo2GenericAndroid = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericAndroid.rawValue, comment: "")
        self.validationMessageAdhocInfo2GenericBoldAndroid = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericBoldAndroid.rawValue, comment: "")
        self.validationMessageAdhocInfoNewGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewGeneric.rawValue, comment: "")
        self.validationMessageAdhocInfoNewV2Generic = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewV2Generic.rawValue, comment: "")
        // MARK: - REPORT ISSUE PAGE DEFAULT KEYS
        self.reportIssueTitle = NSLocalizedString(CodingKeys.reportIssueTitle.rawValue, comment: "")
        self.reportIssueBtSend = NSLocalizedString(CodingKeys.reportIssueBtSend.rawValue, comment: "")
        self.reportIssueSubtitle = NSLocalizedString(CodingKeys.reportIssueSubtitle.rawValue, comment: "")
        // MARK: - CREATE ACCOUNT PAGE DEFAULT KEYS
        self.createAccountSignIn = NSLocalizedString(CodingKeys.createAccountSignIn.rawValue, comment: "")
        self.createAccountHaveAccount = NSLocalizedString(CodingKeys.createAccountHaveAccount.rawValue, comment: "")
        self.createAccountCreateAccount = NSLocalizedString(CodingKeys.createAccountCreateAccount.rawValue, comment: "")
        // MARK: - SIGNUP PAGE DEFAULT KEYS
        self.signupTitle = NSLocalizedString(CodingKeys.signupTitle.rawValue, comment: "")
        self.signUpPasswordDoesNotMeetRequirements = NSLocalizedString(CodingKeys.signUpPasswordDoesNotMeetRequirements.rawValue, comment: "")
        self.signUpAtLeastNumberOfCharacters = NSLocalizedString(CodingKeys.signUpAtLeastNumberOfCharacters.rawValue, comment: "")
        self.signUpAtLeastLowerCase = NSLocalizedString(CodingKeys.signUpAtLeastLowerCase.rawValue, comment: "")
        self.signUpAtLeastUpperCase = NSLocalizedString(CodingKeys.signUpAtLeastUpperCase.rawValue, comment: "")
        self.signUpAtLeastNumber = NSLocalizedString(CodingKeys.signUpAtLeastNumber.rawValue, comment: "")
        self.signUpAtLeastSpecialCharacter = NSLocalizedString(CodingKeys.signUpAtLeastSpecialCharacter.rawValue, comment: "")
        self.signUpTermsAndConditionsMustBeAccepted = NSLocalizedString(CodingKeys.signUpTermsAndConditionsMustBeAccepted.rawValue, comment: "")
        self.signUpPasswordDoesNotContainInvalidSpecialCharacters = NSLocalizedString(CodingKeys.signUpPasswordDoesNotContainInvalidSpecialCharacters.rawValue, comment: "")
        self.signUpCreateApassword = NSLocalizedString(CodingKeys.signUpCreateApassword.rawValue, comment: "")
        self.signUpEnterAPassword = NSLocalizedString(CodingKeys.signUpEnterAPassword.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTerms = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTerms.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTermsTermCond = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsTermCond.rawValue, comment: "")
        self.signUpTermAndCondIAgreeTermsPriPol = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsPriPol.rawValue, comment: "")
        self.signUpTermAndCondDetailsPassword = NSLocalizedString(CodingKeys.signUpTermAndCondDetailsPassword.rawValue, comment: "")
        self.signUpTermAndCondLicenseMarketing = NSLocalizedString(CodingKeys.signUpTermAndCondLicenseMarketing.rawValue, comment: "")
        self.signUpLicenseServices = NSLocalizedString(CodingKeys.signUpLicenseServices.rawValue, comment: "")
        self.signUpLicenseProducts = NSLocalizedString(CodingKeys.signUpLicenseProducts.rawValue, comment: "")
        self.signUpGoChargeSuccess = NSLocalizedString(CodingKeys.signUpGoChargeSuccess.rawValue, comment: "")
        self.signUpAcpCardNumber = NSLocalizedString(CodingKeys.signUpAcpCardNumber.rawValue, comment: "")
        self.signUpAcpMemberNumber = NSLocalizedString(CodingKeys.signUpAcpMemberNumber.rawValue, comment: "")
        // MARK: - LOGIN PAGE DEFAULT KEYS
        self.loginButtonTitle = NSLocalizedString(CodingKeys.loginButtonTitle.rawValue, comment: "")
        self.loginForgotPassword = NSLocalizedString(CodingKeys.loginForgotPassword.rawValue, comment: "")
        self.loginForgotPasswordBoldPart = NSLocalizedString(CodingKeys.loginForgotPasswordBoldPart.rawValue, comment: "")
        self.loginPhoneNumberRequired = NSLocalizedString(CodingKeys.loginPhoneNumberRequired.rawValue, comment: "")
        self.loginOpenEmailApp = NSLocalizedString(CodingKeys.loginOpenEmailApp.rawValue, comment: "")
        // MARK: - ACTIVATION PAGE DEFAULT KEYS
        self.activationTitle = NSLocalizedString(CodingKeys.activationTitle.rawValue, comment: "")
        self.activationSubTitle = NSLocalizedString(CodingKeys.activationSubTitle.rawValue, comment: "")
        self.activationSubTitleEmail = NSLocalizedString(CodingKeys.activationSubTitleEmail.rawValue, comment: "")
        self.activationVerify = NSLocalizedString(CodingKeys.activationVerify.rawValue, comment: "")
        self.activationResendCode = NSLocalizedString(CodingKeys.activationResendCode.rawValue, comment: "")
        self.activationResendCodeBoldPart = NSLocalizedString(CodingKeys.activationResendCodeBoldPart.rawValue, comment: "")
        // MARK: - RECOVER PASSWORD PAGE DEFAULT KEYS
        self.recoverPasswordTitle = NSLocalizedString(CodingKeys.recoverPasswordTitle.rawValue, comment: "")
        self.recoverPasswordSubTitleEmail = NSLocalizedString(CodingKeys.recoverPasswordSubTitleEmail.rawValue, comment: "")
        self.recoverPasswordSubTitlePhone = NSLocalizedString(CodingKeys.recoverPasswordSubTitlePhone.rawValue, comment: "")
        // MARK: - MY ACCOUNT PAGE DEFAULT KEYS
        self.myAccountTitle = NSLocalizedString(CodingKeys.myAccountTitle.rawValue, comment: "")
        self.myAccountHome = NSLocalizedString(CodingKeys.myAccountHome.rawValue, comment: "")
        self.myAccountWork = NSLocalizedString(CodingKeys.myAccountWork.rawValue, comment: "")
        self.myAccountNoHome = NSLocalizedString(CodingKeys.myAccountNoHome.rawValue, comment: "")
        self.myAccountNoWork = NSLocalizedString(CodingKeys.myAccountNoWork.rawValue, comment: "")
        self.myAccountQrCodeTitle = NSLocalizedString(CodingKeys.myAccountQrCodeTitle.rawValue, comment: "")
        self.myAccountQrCodeSubtitle = NSLocalizedString(CodingKeys.myAccountQrCodeSubtitle.rawValue, comment: "")
        self.myAccountContracts = NSLocalizedString(CodingKeys.myAccountContracts.rawValue, comment: "")
        self.myAccountCemeTarifs = NSLocalizedString(CodingKeys.myAccountCemeTarifs.rawValue, comment: "")
        self.myAccountNotifications = NSLocalizedString(CodingKeys.myAccountNotifications.rawValue, comment: "")
        self.myAccountPrivacy = NSLocalizedString(CodingKeys.myAccountPrivacy.rawValue, comment: "")
        self.myAccountTermsAndConditions = NSLocalizedString(CodingKeys.myAccountTermsAndConditions.rawValue, comment: "")
        self.myAccountLogout = NSLocalizedString(CodingKeys.myAccountLogout.rawValue, comment: "")
        self.myAccountLogin = NSLocalizedString(CodingKeys.myAccountLogin.rawValue, comment: "")
        // MARK: - EDIT ACCOUNT PAGE DEFAULT KEYS
        self.editAccountTitle = NSLocalizedString(CodingKeys.editAccountTitle.rawValue, comment: "")
        self.editAccountChangeEmail = NSLocalizedString(CodingKeys.editAccountChangeEmail.rawValue, comment: "")
        self.editAccountDeleteAccount = NSLocalizedString(CodingKeys.editAccountDeleteAccount.rawValue, comment: "")
        self.editAccountAddNewAddress = NSLocalizedString(CodingKeys.editAccountAddNewAddress.rawValue, comment: "")
        self.editAccountChangePhoneNumber = NSLocalizedString(CodingKeys.editAccountChangePhoneNumber.rawValue, comment: "")
        self.editAccountDeleteAccountMessage = NSLocalizedString(CodingKeys.editAccountDeleteAccountMessage.rawValue, comment: "")
        self.editAccountProfileUpdatedSuccessfully = NSLocalizedString(CodingKeys.editAccountProfileUpdatedSuccessfully.rawValue, comment: "")
        // MARK: - CHANGE EMAIL / PHONE NUMBER PAGE DEFAULT KEYS
        self.changeEmailTitle = NSLocalizedString(CodingKeys.changeEmailTitle.rawValue, comment: "")
        self.changeEmailPhoneNumberTitle = NSLocalizedString(CodingKeys.changeEmailPhoneNumberTitle.rawValue, comment: "")
        self.changeEmailEmailIsTheSame = NSLocalizedString(CodingKeys.changeEmailEmailIsTheSame.rawValue, comment: "")
        self.changeEmailMobilePhoneIsTheSame = NSLocalizedString(CodingKeys.changeEmailMobilePhoneIsTheSame.rawValue, comment: "")
        // MARK: - CHANGE PASSWORD DEFAULT PAGE KEYS
        self.changePasswordTitle = NSLocalizedString(CodingKeys.changePasswordTitle.rawValue, comment: "")
        // MARK: - ADD / EDIT REFERENCE PLACE PAGE KEYS
        self.addReferencePlaceTitle = NSLocalizedString(CodingKeys.addReferencePlaceTitle.rawValue, comment: "")
        self.addReferencePlaceEditTitle = NSLocalizedString(CodingKeys.addReferencePlaceEditTitle.rawValue, comment: "")
        self.addReferencePlaceTapToSelectLocation = NSLocalizedString(CodingKeys.addReferencePlaceTapToSelectLocation.rawValue, comment: "")
        // MARK: - SEARCH LOCATION DEFAULT PAGE KEYS
        self.searchLocationTitle = NSLocalizedString(CodingKeys.searchLocationTitle.rawValue, comment: "")
        self.searchLocationSuggestions = NSLocalizedString(CodingKeys.searchLocationSuggestions.rawValue, comment: "")
        // MARK: - GLOSSARY DEFAULT PAGE KEYS
        self.glossaryTitle = NSLocalizedString(CodingKeys.glossaryTitle.rawValue, comment: "")
        self.glossaryEvioNetwork = NSLocalizedString(CodingKeys.glossaryEvioNetwork.rawValue, comment: "")
        self.glossaryOtherNetwork = NSLocalizedString(CodingKeys.glossaryOtherNetwork.rawValue, comment: "")
        self.glossaryMyChargers = NSLocalizedString(CodingKeys.glossaryMyChargers.rawValue, comment: "")
        self.glossaryMobieNetwork = NSLocalizedString(CodingKeys.glossaryMobieNetwork.rawValue, comment: "")
        self.glossaryTeslaNetwork = NSLocalizedString(CodingKeys.glossaryTeslaNetwork.rawValue, comment: "")
        self.glossaryChargersGroup = NSLocalizedString(CodingKeys.glossaryChargersGroup.rawValue, comment: "")
        self.glossaryChargerFree = NSLocalizedString(CodingKeys.glossaryChargerFree.rawValue, comment: "")
        self.glossaryChargerOccupied = NSLocalizedString(CodingKeys.glossaryChargerOccupied.rawValue, comment: "")
        self.glossaryChargerOffline = NSLocalizedString(CodingKeys.glossaryChargerOffline.rawValue, comment: "")
        self.glossaryGoCharge = NSLocalizedString(CodingKeys.glossaryGoCharge.rawValue, comment: "")
        self.glossaryHyundai = NSLocalizedString(CodingKeys.glossaryHyundai.rawValue, comment: "")
        // MARK: - NOTIFICATIONS DEFAULT PAGE KEYS
        self.notificationsTitle = NSLocalizedString(CodingKeys.notificationsTitle.rawValue, comment: "")
        self.notificationsChargingPoint = NSLocalizedString(CodingKeys.notificationsChargingPoint.rawValue, comment: "")
        self.notificationsGeneral = NSLocalizedString(CodingKeys.notificationsGeneral.rawValue, comment: "")
        self.notificationsAccount = NSLocalizedString(CodingKeys.notificationsAccount.rawValue, comment: "")
        self.notificationsPushNotifications = NSLocalizedString(CodingKeys.notificationsPushNotifications.rawValue, comment: "")
        // MARK: - SESSIONS DEFAULT PAGE KEYS
        self.sessionsMySessionsTitle = NSLocalizedString(CodingKeys.sessionsMySessionsTitle.rawValue, comment: "")
        self.sessionsMyChargersSessionsTitle = NSLocalizedString(CodingKeys.sessionsMyChargersSessionsTitle.rawValue, comment: "")
        self.sessionsNoSessionsTitle = NSLocalizedString(CodingKeys.sessionsNoSessionsTitle.rawValue, comment: "")
        self.sessionsNoSessionsMySessionsSubtitle = NSLocalizedString(CodingKeys.sessionsNoSessionsMySessionsSubtitle.rawValue, comment: "")
        self.sessionsNoSessionsSubtitleNoLogin = NSLocalizedString(CodingKeys.sessionsNoSessionsSubtitleNoLogin.rawValue, comment: "")
        self.sessionsNoSessionsMyChargerSessionsSubtitle = NSLocalizedString(CodingKeys.sessionsNoSessionsMyChargerSessionsSubtitle.rawValue, comment: "")
        self.sessionsNoBatteryInfo = NSLocalizedString(CodingKeys.sessionsNoBatteryInfo.rawValue, comment: "")
        self.sessionsAreYouSureYouWantToStop = NSLocalizedString(CodingKeys.sessionsAreYouSureYouWantToStop.rawValue, comment: "")
        self.sessionsTxtInfoMobieUpdates = NSLocalizedString(CodingKeys.sessionsTxtInfoMobieUpdates.rawValue, comment: "")
        self.sessionsChargingPoint = NSLocalizedString(CodingKeys.sessionsChargingPoint.rawValue, comment: "")
        self.sessionsChargingPoints = NSLocalizedString(CodingKeys.sessionsChargingPoints.rawValue, comment: "")
        // MARK: - START AND STOP ANIMATION DEFGAULT PAGE KEYS
        self.loadingChargingStartTitle = NSLocalizedString(CodingKeys.loadingChargingStartTitle.rawValue, comment: "")
        self.loadingChargingStartSubtitle = NSLocalizedString(CodingKeys.loadingChargingStartSubtitle.rawValue, comment: "")
        self.loadingChargingStopTitle = NSLocalizedString(CodingKeys.loadingChargingStopTitle.rawValue, comment: "")
        self.loadingChargingStoptSubtitle = NSLocalizedString(CodingKeys.loadingChargingStoptSubtitle.rawValue, comment: "")
        // MARK: - RATE SESSION VIEW DEFAULT PAGE KEYS
        self.rateSessionTitle = NSLocalizedString(CodingKeys.rateSessionTitle.rawValue, comment: "")
        self.rateSessionSubtitle = NSLocalizedString(CodingKeys.rateSessionSubtitle.rawValue, comment: "")
        self.rateSessionComment = NSLocalizedString(CodingKeys.rateSessionComment.rawValue, comment: "")
        self.rateSessionCommentPlaceholder = NSLocalizedString(CodingKeys.rateSessionCommentPlaceholder.rawValue, comment: "")
        // MARK: - SESSION SUMMARY VIEW DEFAULT PAGE KEYS
        self.sessionSummaryTotalChargingTime = NSLocalizedString(CodingKeys.sessionSummaryTotalChargingTime.rawValue, comment: "")
        self.sessionSummaryDate = NSLocalizedString(CodingKeys.sessionSummaryDate.rawValue, comment: "")
        self.sessionSummaryStartTime = NSLocalizedString(CodingKeys.sessionSummaryStartTime.rawValue, comment: "")
        self.sessionSummaryEndTime = NSLocalizedString(CodingKeys.sessionSummaryEndTime.rawValue, comment: "")
        self.sessionSummaryInstantAveragePower = NSLocalizedString(CodingKeys.sessionSummaryInstantAveragePower.rawValue, comment: "")
        self.sessionSummaryIec = NSLocalizedString(CodingKeys.sessionSummaryIec.rawValue, comment: "")
        self.sessionSummaryTar = NSLocalizedString(CodingKeys.sessionSummaryTar.rawValue, comment: "")
        self.sessionSummaryVat = NSLocalizedString(CodingKeys.sessionSummaryVat.rawValue, comment: "")
        self.sessionSummaryTotal = NSLocalizedString(CodingKeys.sessionSummaryTotal.rawValue, comment: "")
        self.sessionSummaryMobieTitle = NSLocalizedString(CodingKeys.sessionSummaryMobieTitle.rawValue, comment: "")
        self.sessionSummaryTime = NSLocalizedString(CodingKeys.sessionSummaryTime.rawValue, comment: "")
        self.sessionSummaryEnergy = NSLocalizedString(CodingKeys.sessionSummaryEnergy.rawValue, comment: "")
        self.sessionSummaryPlug = NSLocalizedString(CodingKeys.sessionSummaryPlug.rawValue, comment: "")
        self.sessionSummaryContract = NSLocalizedString(CodingKeys.sessionSummaryContract.rawValue, comment: "")
        self.sessionSummaryCo2Emitted = NSLocalizedString(CodingKeys.sessionSummaryCo2Emitted.rawValue, comment: "")
        self.sessionSummaryCharging = NSLocalizedString(CodingKeys.sessionSummaryCharging.rawValue, comment: "")
        self.sessionSummaryOpc = NSLocalizedString(CodingKeys.sessionSummaryOpc.rawValue, comment: "")
        self.sessionSummaryCeme = NSLocalizedString(CodingKeys.sessionSummaryCeme.rawValue, comment: "")
        self.sessionSummaryFees = NSLocalizedString(CodingKeys.sessionSummaryFees.rawValue, comment: "")
        self.sessionSummaryDownloadInvoice = NSLocalizedString(CodingKeys.sessionSummaryDownloadInvoice.rawValue, comment: "")
        self.sessionSummaryEstimatedPrice = NSLocalizedString(CodingKeys.sessionSummaryEstimatedPrice.rawValue, comment: "")
        self.sessionSummaryRateThisSession = NSLocalizedString(CodingKeys.sessionSummaryRateThisSession.rawValue, comment: "")
        self.sessionSummaryParking = NSLocalizedString(CodingKeys.sessionSummaryParking.rawValue, comment: "")
        self.sessionSummaryRoamingTitle = NSLocalizedString(CodingKeys.sessionSummaryRoamingTitle.rawValue, comment: "")
        self.sessionSummaryEmsp = NSLocalizedString(CodingKeys.sessionSummaryEmsp.rawValue, comment: "")
        self.sessionSummaryCdrInfoText = NSLocalizedString(CodingKeys.sessionSummaryCdrInfoText.rawValue, comment: "")
        self.sessionSummaryPowerKw = NSLocalizedString(CodingKeys.sessionSummaryPowerKw.rawValue, comment: "")
        self.sessionSummaryBattery = NSLocalizedString(CodingKeys.sessionSummaryBattery.rawValue, comment: "")
        self.sessionSummaryEnergyKwh = NSLocalizedString(CodingKeys.sessionSummaryEnergyKwh.rawValue, comment: "")
        self.sessionSummaryChargingTime = NSLocalizedString(CodingKeys.sessionSummaryChargingTime.rawValue, comment: "")
        self.sessionSummaryChargingPrice = NSLocalizedString(CodingKeys.sessionSummaryChargingPrice.rawValue, comment: "")
        self.sessionSummaryActivationFee = NSLocalizedString(CodingKeys.sessionSummaryActivationFee.rawValue, comment: "")
        self.sessionSummaryCostDuringCharge = NSLocalizedString(CodingKeys.sessionSummaryCostDuringCharge.rawValue, comment: "")
        self.sessionSummaryDuration = NSLocalizedString(CodingKeys.sessionSummaryDuration.rawValue, comment: "")
        self.sessionSummaryParkingPrice = NSLocalizedString(CodingKeys.sessionSummaryParkingPrice.rawValue, comment: "")
        self.sessionSummaryParkingDuringCharging = NSLocalizedString(CodingKeys.sessionSummaryParkingDuringCharging.rawValue, comment: "")
        self.sessionSummaryBookingPrice = NSLocalizedString(CodingKeys.sessionSummaryBookingPrice.rawValue, comment: "")
        // MARK: - START CHARGING BY QR CODE VIEW DEFAULT PAGE KEYS
        self.chargerQrCodeContract = NSLocalizedString(CodingKeys.chargerQrCodeContract.rawValue, comment: "")
        self.chargerQrCodeEv = NSLocalizedString(CodingKeys.chargerQrCodeEv.rawValue, comment: "")
        self.chargerQrCodeTitle = NSLocalizedString(CodingKeys.chargerQrCodeTitle.rawValue, comment: "")
        self.chargerQrCodeStart = NSLocalizedString(CodingKeys.chargerQrCodeStart.rawValue, comment: "")
        self.chargerQrCodeSelectContract = NSLocalizedString(CodingKeys.chargerQrCodeSelectContract.rawValue, comment: "")
        self.chargerQrCodeSelectEv = NSLocalizedString(CodingKeys.chargerQrCodeSelectEv.rawValue, comment: "")
        self.chargerQrCodeSelectContractFirst = NSLocalizedString(CodingKeys.chargerQrCodeSelectContractFirst.rawValue, comment: "")
        self.chargerQrCodeMainTitle = NSLocalizedString(CodingKeys.chargerQrCodeMainTitle.rawValue, comment: "")
        self.chargerQrCodeMainSubtitle = NSLocalizedString(CodingKeys.chargerQrCodeMainSubtitle.rawValue, comment: "")
        self.chargerQrCodeNoCamera = NSLocalizedString(CodingKeys.chargerQrCodeNoCamera.rawValue, comment: "")
        self.chargerQrCodeOrInsert = NSLocalizedString(CodingKeys.chargerQrCodeOrInsert.rawValue, comment: "")
        self.chargerQrCodeIdNumber = NSLocalizedString(CodingKeys.chargerQrCodeIdNumber.rawValue, comment: "")
        self.chargerQrCodeInvalidQrCode = NSLocalizedString(CodingKeys.chargerQrCodeInvalidQrCode.rawValue, comment: "")
        self.chargerQrCodeIdNumberTitle = NSLocalizedString(CodingKeys.chargerQrCodeIdNumberTitle.rawValue, comment: "")
        self.chargerQrCodeIdNumberPlaceholder = NSLocalizedString(CodingKeys.chargerQrCodeIdNumberPlaceholder.rawValue, comment: "")
        // MARK: - STOPPED SESSION BY REASON VIEW DEFAULT PAGE KEYS
        self.stoppedSessionByReasonTitle = NSLocalizedString(CodingKeys.stoppedSessionByReasonTitle.rawValue, comment: "")
        self.stoppedSessionByReasonSubtitle = NSLocalizedString(CodingKeys.stoppedSessionByReasonSubtitle.rawValue, comment: "")
        // MARK: - MY CHARGERS VIEW DEFAULT PAGE KEYS
        self.myChargersTabTitle = NSLocalizedString(CodingKeys.myChargersTabTitle.rawValue, comment: "")
        self.myChargersChargersTabTitle = NSLocalizedString(CodingKeys.myChargersChargersTabTitle.rawValue, comment: "")
        self.myChargersAddChargingPlaceTitle = NSLocalizedString(CodingKeys.myChargersAddChargingPlaceTitle.rawValue, comment: "")
        self.myChargersChargingPlaceName = NSLocalizedString(CodingKeys.myChargersChargingPlaceName.rawValue, comment: "")
        self.myChargersChargingPlaceNamePlaceholder = NSLocalizedString(CodingKeys.myChargersChargingPlaceNamePlaceholder.rawValue, comment: "")
        self.myChargersNoChargersTitle = NSLocalizedString(CodingKeys.myChargersNoChargersTitle.rawValue, comment: "")
        self.myChargersNoChargersSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersSubtitle.rawValue, comment: "")
        self.myChargersNoChargersNoLoginSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersNoLoginSubtitle.rawValue, comment: "")
        self.myChargersNoChargersMyChargersSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersSubtitle.rawValue, comment: "")
        self.myChargersNoChargersMyChargersNoLoginSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersNoLoginSubtitle.rawValue, comment: "")
        self.myChargersDeleteChargerTitle = NSLocalizedString(CodingKeys.myChargersDeleteChargerTitle.rawValue, comment: "")
        self.myChargersDeleteChargerSubtitle = NSLocalizedString(CodingKeys.myChargersDeleteChargerSubtitle.rawValue, comment: "")
        self.myChargersAddChargerAlertTitle = NSLocalizedString(CodingKeys.myChargersAddChargerAlertTitle.rawValue, comment: "")
        self.myChargersAddChargerAlertSubtitle = NSLocalizedString(CodingKeys.myChargersAddChargerAlertSubtitle.rawValue, comment: "")
        self.myChargersAddNewCharger = NSLocalizedString(CodingKeys.myChargersAddNewCharger.rawValue, comment: "")
        // MARK: - PLUG DETAILS VIEW DEFAULT PAGE KEYS
        self.plugDetailsConnectorType = NSLocalizedString(CodingKeys.plugDetailsConnectorType.rawValue, comment: "")
        self.plugDetailsStatus = NSLocalizedString(CodingKeys.plugDetailsStatus.rawValue, comment: "")
        self.plugDetailsCurrent = NSLocalizedString(CodingKeys.plugDetailsCurrent.rawValue, comment: "")
        self.plugDetailsVoltage = NSLocalizedString(CodingKeys.plugDetailsVoltage.rawValue, comment: "")
        self.plugDetailsPower = NSLocalizedString(CodingKeys.plugDetailsPower.rawValue, comment: "")
        self.plugDetailsAccess = NSLocalizedString(CodingKeys.plugDetailsAccess.rawValue, comment: "")
        self.plugDetailsEditPlugTitle = NSLocalizedString(CodingKeys.plugDetailsEditPlugTitle.rawValue, comment: "")
        self.plugDetailsChargingInformation = NSLocalizedString(CodingKeys.plugDetailsChargingInformation.rawValue, comment: "")
        self.plugDetailsCurrentType = NSLocalizedString(CodingKeys.plugDetailsCurrentType.rawValue, comment: "")
        self.plugDetailsActivate = NSLocalizedString(CodingKeys.plugDetailsActivate.rawValue, comment: "")
        self.plugDetailsAc1Phase = NSLocalizedString(CodingKeys.plugDetailsAc1Phase.rawValue, comment: "")
        self.plugDetailsAc3Phase = NSLocalizedString(CodingKeys.plugDetailsAc3Phase.rawValue, comment: "")
        // MARK: - WALLET VIEW DEFAULT PAGE KEYS
        self.walletTitle = NSLocalizedString(CodingKeys.walletTitle.rawValue, comment: "")
        self.walletBalance = NSLocalizedString(CodingKeys.walletBalance.rawValue, comment: "")
        self.walletInfoAboutWallet = NSLocalizedString(CodingKeys.walletInfoAboutWallet.rawValue, comment: "")
        self.walletPaymentMethods = NSLocalizedString(CodingKeys.walletPaymentMethods.rawValue, comment: "")
        self.walletWalletHistory = NSLocalizedString(CodingKeys.walletWalletHistory.rawValue, comment: "")
        self.walletFinacialTransactions = NSLocalizedString(CodingKeys.walletFinacialTransactions.rawValue, comment: "")
        self.walletBillingProfile = NSLocalizedString(CodingKeys.walletBillingProfile.rawValue, comment: "")
        self.walletAutoRechargeWallet = NSLocalizedString(CodingKeys.walletAutoRechargeWallet.rawValue, comment: "")
        self.walletAutoRechargeWalletInfoText = NSLocalizedString(CodingKeys.walletAutoRechargeWalletInfoText.rawValue, comment: "")
        self.walletAutoRechargeSuccessMessage = NSLocalizedString(CodingKeys.walletAutoRechargeSuccessMessage.rawValue, comment: "")
        // MARK: - WALLET TOP UP DEFAULT VIEW PAGE KEYS
        self.walletTopUpTitle = NSLocalizedString(CodingKeys.walletTopUpTitle.rawValue, comment: "")
        self.walletTopUpOtherAmount = NSLocalizedString(CodingKeys.walletTopUpOtherAmount.rawValue, comment: "")
        self.walletTopUpMinimumAmount = NSLocalizedString(CodingKeys.walletTopUpMinimumAmount.rawValue, comment: "")
        self.walletTopUpMbWay = NSLocalizedString(CodingKeys.walletTopUpMbWay.rawValue, comment: "")
        self.walletTopUpMultibancoReference = NSLocalizedString(CodingKeys.walletTopUpMultibancoReference.rawValue, comment: "")
        self.walletTopUpCreditCardDeposit = NSLocalizedString(CodingKeys.walletTopUpCreditCardDeposit.rawValue, comment: "")
        self.walletTopUpCreditCard = NSLocalizedString(CodingKeys.walletTopUpCreditCard.rawValue, comment: "")
        self.walletTopUpNewCreditCard = NSLocalizedString(CodingKeys.walletTopUpNewCreditCard.rawValue, comment: "")
        self.walletTopUpExistingCreditCard = NSLocalizedString(CodingKeys.walletTopUpExistingCreditCard.rawValue, comment: "")
        self.walletTopUpAddBalanceSuccess = NSLocalizedString(CodingKeys.walletTopUpAddBalanceSuccess.rawValue, comment: "")
        // MARK: - MB REFERENCE VIEW DEFAULT PAGE KEYS
        self.mbReferenceEntity = NSLocalizedString(CodingKeys.mbReferenceEntity.rawValue, comment: "")
        self.mbReferenceReference = NSLocalizedString(CodingKeys.mbReferenceReference.rawValue, comment: "")
        self.mbReferenceAmount = NSLocalizedString(CodingKeys.mbReferenceAmount.rawValue, comment: "")
        self.mbReferenceSendReferenceBySms = NSLocalizedString(CodingKeys.mbReferenceSendReferenceBySms.rawValue, comment: "")
        self.mbReferenceInfoAboutReference = NSLocalizedString(CodingKeys.mbReferenceInfoAboutReference.rawValue, comment: "")
        self.mbReferenceDidNotReceive = NSLocalizedString(CodingKeys.mbReferenceDidNotReceive.rawValue, comment: "")
        self.mbReferenceTryAgain = NSLocalizedString(CodingKeys.mbReferenceTryAgain.rawValue, comment: "")
        // MARK: - TRANSACTIONS VIEW DEFAULT PAGE KEYS
        self.transactionsTitle = NSLocalizedString(CodingKeys.transactionsTitle.rawValue, comment: "")
        self.transactionsNoTransactions = NSLocalizedString(CodingKeys.transactionsNoTransactions.rawValue, comment: "")
        self.transactionsDeposit = NSLocalizedString(CodingKeys.transactionsDeposit.rawValue, comment: "")
        self.transactionsPayment = NSLocalizedString(CodingKeys.transactionsPayment.rawValue, comment: "")
        self.transactionsCard = NSLocalizedString(CodingKeys.transactionsCard.rawValue, comment: "")
        self.transactionsMBRef = NSLocalizedString(CodingKeys.transactionsMBRef.rawValue, comment: "")
        self.transactionsMBRefPSNet = NSLocalizedString(CodingKeys.transactionsMBRefPSNet.rawValue, comment: "")
        self.transactionsPSNet = NSLocalizedString(CodingKeys.transactionsPSNet.rawValue, comment: "")
        self.transactionsMBWay = NSLocalizedString(CodingKeys.transactionsMBWay.rawValue, comment: "")
        self.transactionsWallet = NSLocalizedString(CodingKeys.transactionsWallet.rawValue, comment: "")
        self.transactionsOther = NSLocalizedString(CodingKeys.transactionsOther.rawValue, comment: "")
        self.transactionsFinancialTitle = NSLocalizedString(CodingKeys.transactionsFinancialTitle.rawValue, comment: "")
        // MARK: - BILLING PROFILE VIEW DEFAULT PAGE KEYS
        self.billingProfileTitle = NSLocalizedString(CodingKeys.billingProfileTitle.rawValue, comment: "")
        self.billingProfileBillingPeriod = NSLocalizedString(CodingKeys.billingProfileBillingPeriod.rawValue, comment: "")
        // MARK: - EDIT BILLING PROFILE VIEW DEFAULT PAGE KEYS
        self.editBillingProfileFinalConsumer = NSLocalizedString(CodingKeys.editBillingProfileFinalConsumer.rawValue, comment: "")
        self.editBillingProfilePeriod = NSLocalizedString(CodingKeys.editBillingProfilePeriod.rawValue, comment: "")
        // MARK: - PAYMENT METHODS VIEW DEFAULT KEYS
        self.paymentMethodsTitle = NSLocalizedString(CodingKeys.paymentMethodsTitle.rawValue, comment: "")
        self.paymentMethodsCreditCardInfoText = NSLocalizedString(CodingKeys.paymentMethodsCreditCardInfoText.rawValue, comment: "")
        self.paymentMethodsAddNew = NSLocalizedString(CodingKeys.paymentMethodsAddNew.rawValue, comment: "")
        self.paymentMethodsAddNewPaymentMethod = NSLocalizedString(CodingKeys.paymentMethodsAddNewPaymentMethod.rawValue, comment: "")
        self.paymentMethodsAskUserToDelete = NSLocalizedString(CodingKeys.paymentMethodsAskUserToDelete.rawValue, comment: "")
        self.paymentMethodsNoPaymentMethods = NSLocalizedString(CodingKeys.paymentMethodsNoPaymentMethods.rawValue, comment: "")
        self.paymentMethodsCantDeleteCardiOS = NSLocalizedString(CodingKeys.paymentMethodsCantDeleteCardiOS.rawValue, comment: "")
        self.paymentMethodsExpiryDate = NSLocalizedString(CodingKeys.paymentMethodsExpiryDate.rawValue, comment: "")
        self.paymentMethodsCvc = NSLocalizedString(CodingKeys.paymentMethodsCvc.rawValue, comment: "")
        self.paymentMethodsAddCard = NSLocalizedString(CodingKeys.paymentMethodsAddCard.rawValue, comment: "")
        self.paymentMethodsCardNumberNoValid = NSLocalizedString(CodingKeys.paymentMethodsCardNumberNoValid.rawValue, comment: "")
        self.paymentMethodsExpireDateNotValid = NSLocalizedString(CodingKeys.paymentMethodsExpireDateNotValid.rawValue, comment: "")
        self.paymentMethodsSecurityCodeNotValid = NSLocalizedString(CodingKeys.paymentMethodsSecurityCodeNotValid.rawValue, comment: "")
        // MARK: - SUPPORT VIEW DEFAULT KEYS
        self.supportTitle = NSLocalizedString(CodingKeys.supportTitle.rawValue, comment: "")
        self.supportMessage = NSLocalizedString(CodingKeys.supportMessage.rawValue, comment: "")
        self.supportSearchTopics = NSLocalizedString(CodingKeys.supportSearchTopics.rawValue, comment: "")
        self.supportDriver = NSLocalizedString(CodingKeys.supportDriver.rawValue, comment: "")
        self.supportOwner = NSLocalizedString(CodingKeys.supportOwner.rawValue, comment: "")
        self.supportFaqs = NSLocalizedString(CodingKeys.supportFaqs.rawValue, comment: "")
        self.supportTalkWithUs = NSLocalizedString(CodingKeys.supportTalkWithUs.rawValue, comment: "")
        self.supportSendUsAnEmail = NSLocalizedString(CodingKeys.supportSendUsAnEmail.rawValue, comment: "")
        self.supportKnowTheApp = NSLocalizedString(CodingKeys.supportKnowTheApp.rawValue, comment: "")
        self.supportReviewWalkthroughs = NSLocalizedString(CodingKeys.supportReviewWalkthroughs.rawValue, comment: "")
        self.supportRunOnboarding = NSLocalizedString(CodingKeys.supportRunOnboarding.rawValue, comment: "")
        self.supportSubject = NSLocalizedString(CodingKeys.supportSubject.rawValue, comment: "")
        self.supportDriverSupport = NSLocalizedString(CodingKeys.supportDriverSupport.rawValue, comment: "")
        self.supportOwnerSupport = NSLocalizedString(CodingKeys.supportOwnerSupport.rawValue, comment: "")
        self.supportSearchNotSearchedYet = NSLocalizedString(CodingKeys.supportSearchNotSearchedYet.rawValue, comment: "")
        self.supportSearchNoResultsFoundFor = NSLocalizedString(CodingKeys.supportSearchNoResultsFoundFor.rawValue, comment: "")
        self.supportSearchTypeSomethingToSearch = NSLocalizedString(CodingKeys.supportSearchTypeSomethingToSearch.rawValue, comment: "")
        self.supportAddPictures = NSLocalizedString(CodingKeys.supportAddPictures.rawValue, comment: .empty)
        // MARK: - INSIGHTS VIEW KEYS
        self.insightsInsightsTabTitle = NSLocalizedString(CodingKeys.insightsInsightsTabTitle.rawValue, comment: "")
        self.insightsHistoryTabTitle = NSLocalizedString(CodingKeys.insightsHistoryTabTitle.rawValue, comment: "")
        self.insightsLastMonth = NSLocalizedString(CodingKeys.insightsLastMonth.rawValue, comment: "")
        self.insightsLastYear = NSLocalizedString(CodingKeys.insightsLastYear.rawValue, comment: "")
        self.insightsLastSemester = NSLocalizedString(CodingKeys.insightsLastSemester.rawValue, comment: "")
        self.insightsNoHistory = NSLocalizedString(CodingKeys.insightsNoHistory.rawValue, comment: "")
        self.insightsNoInsights = NSLocalizedString(CodingKeys.insightsNoInsights.rawValue, comment: "")
        self.insightsNoInsightsNoLogin = NSLocalizedString(CodingKeys.insightsNoInsightsNoLogin.rawValue, comment: "")
        self.insightsNoHistoryNoLogin = NSLocalizedString(CodingKeys.insightsNoHistoryNoLogin.rawValue, comment: "")
        self.insightsMyVehicles = NSLocalizedString(CodingKeys.insightsMyVehicles.rawValue, comment: "")
        self.insightsTotalChargingTime = NSLocalizedString(CodingKeys.insightsTotalChargingTime.rawValue, comment: "")
        self.insightsTotalSessions = NSLocalizedString(CodingKeys.insightsTotalSessions.rawValue, comment: "")
        self.insightsTotalCost = NSLocalizedString(CodingKeys.insightsTotalCost.rawValue, comment: "")
        self.insightsTotalEnergy = NSLocalizedString(CodingKeys.insightsTotalEnergy.rawValue, comment: "")
        self.insightsCo2Emitted = NSLocalizedString(CodingKeys.insightsCo2Emitted.rawValue, comment: "")
        self.insightsMyChargingStations = NSLocalizedString(CodingKeys.insightsMyChargingStations.rawValue, comment: "")
        self.insightsIncome = NSLocalizedString(CodingKeys.insightsIncome.rawValue, comment: "")
        self.insightsMyRating = NSLocalizedString(CodingKeys.insightsMyRating.rawValue, comment: "")
        self.insightsChargingTimePerSession = NSLocalizedString(CodingKeys.insightsChargingTimePerSession.rawValue, comment: "")
        self.insightsEnergyConsumptionPerSession = NSLocalizedString(CodingKeys.insightsEnergyConsumptionPerSession.rawValue, comment: "")
        self.insightsFavoriteCharger = NSLocalizedString(CodingKeys.insightsFavoriteCharger.rawValue, comment: "")
        self.insightsMostUsedPlug = NSLocalizedString(CodingKeys.insightsMostUsedPlug.rawValue, comment: "")
        // MARK: - BLOCKED VIEW KEYS
        self.blockedViewUpdateBt = NSLocalizedString(CodingKeys.blockedViewUpdateBt.rawValue, comment: "")
        self.blockedViewTextInfo = NSLocalizedString(CodingKeys.blockedViewTextInfo.rawValue, comment: "")
        self.blockedViewPaymentError = NSLocalizedString(CodingKeys.blockedViewPaymentError.rawValue, comment: "")
        // MARK: - COMPARATOR VIEW KEYS
        self.comparatorTitle = NSLocalizedString(CodingKeys.comparatorTitle.rawValue, comment: "")
        self.comparatorChargingPoint = NSLocalizedString(CodingKeys.comparatorChargingPoint.rawValue, comment: "")
        self.comparatorPlugPower = NSLocalizedString(CodingKeys.comparatorPlugPower.rawValue, comment: "")
        self.comparatorChargingDuration = NSLocalizedString(CodingKeys.comparatorChargingDuration.rawValue, comment: "")
        self.comparatorTotalCost = NSLocalizedString(CodingKeys.comparatorTotalCost.rawValue, comment: "")
        self.comparatorAverageCost = NSLocalizedString(CodingKeys.comparatorAverageCost.rawValue, comment: "")
        self.comparatorMyChargers = NSLocalizedString(CodingKeys.comparatorMyChargers.rawValue, comment: "")
        self.comparatorOtherChargers = NSLocalizedString(CodingKeys.comparatorOtherChargers.rawValue, comment: "")
        self.comparatorFavourites = NSLocalizedString(CodingKeys.comparatorFavourites.rawValue, comment: "")
        self.comparatorChooseChargingPoint = NSLocalizedString(CodingKeys.comparatorChooseChargingPoint.rawValue, comment: "")
        self.comparatorCompareButton = NSLocalizedString(CodingKeys.comparatorCompareButton.rawValue, comment: "")
        self.comparatorChoosePlugToCompare = NSLocalizedString(CodingKeys.comparatorChoosePlugToCompare.rawValue, comment: "")
        self.comparatorPlugAlreadyBeingCompared = NSLocalizedString(CodingKeys.comparatorPlugAlreadyBeingCompared.rawValue, comment: "")
        // MARK: - HISTORY VIEW DEFAULT KEYS
        self.historyPaymentBillingInfoPaid = NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaid.rawValue, comment: "")
        self.historyPaymentBillingInfoPaidAndBilled = NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaidAndBilled.rawValue, comment: "")
        self.historyPaymentBillingInfoToProcess = NSLocalizedString(CodingKeys.historyPaymentBillingInfoToProcess.rawValue, comment: "")
        self.historyPaymentBillingInfoNotApplicable = NSLocalizedString(CodingKeys.historyPaymentBillingInfoNotApplicable.rawValue, comment: "")
        self.historyPaymentBillingInfoFailedBilling = NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedBilling.rawValue, comment: "")
        self.historyPaymentBillingInfoFailedPayment = NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedPayment.rawValue, comment: "")
        self.historyPaymentBillingInfoBilledAndNotPaid = NSLocalizedString(CodingKeys.historyPaymentBillingInfoBilledAndNotPaid.rawValue, comment: "")
        self.historyDownloadMessage = NSLocalizedString(CodingKeys.historyDownloadMessage.rawValue, comment: "")
        self.historyPaymentStatus = NSLocalizedString(CodingKeys.historyPaymentStatus.rawValue, comment: "")
        self.historyStartDate = NSLocalizedString(CodingKeys.historyStartDate.rawValue, comment: "")
        self.historyStopDate = NSLocalizedString(CodingKeys.historyStopDate.rawValue, comment: "")
        self.historyDonwloadSuccess = NSLocalizedString(CodingKeys.historyDonwloadSuccess.rawValue, comment: "")
        // MARK: - INFO TARIFF MOBIE DEFAULT KEYS
        self.infoTariffMobiePerMinuteMinMaxDuration = NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxDuration.rawValue, comment: "")
        self.infoTariffMobiePerMinuteMinMaxKwh = NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxKwh.rawValue, comment: "")
        self.infoTariffMobiePerKwhStartEndTime = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndTime.rawValue, comment: "")
        self.infoTariffMobiePerKwhStartEndDate = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndDate.rawValue, comment: "")
        self.infoTariffMobiePerKwhMaxMinKwh = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMaxMinKwh.rawValue, comment: "")
        self.infoTariffMobiePerKwhMinMaxDuration = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMinMaxDuration.rawValue, comment: "")
        self.infoTariffMobiePerKwhDayOfWeek = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhDayOfWeek.rawValue, comment: "")
        self.infoTariffMobieSimulatePercent = NSLocalizedString(CodingKeys.infoTariffMobieSimulatePercent.rawValue, comment: "")
        self.infoTariffMobieSimulateTime = NSLocalizedString(CodingKeys.infoTariffMobieSimulateTime.rawValue, comment: "")
        self.infoTariffMobieStart = NSLocalizedString(CodingKeys.infoTariffMobieStart.rawValue, comment: "")
        self.infoTariffMobieReturn = NSLocalizedString(CodingKeys.infoTariffMobieReturn.rawValue, comment: "")
        self.infoTariffMobieSimulationByTime = NSLocalizedString(CodingKeys.infoTariffMobieSimulationByTime.rawValue, comment: "")
        self.infoTariffMobieDay = NSLocalizedString(CodingKeys.infoTariffMobieDay.rawValue, comment: "")
        self.infoTariffMobieHour = NSLocalizedString(CodingKeys.infoTariffMobieHour.rawValue, comment: "")
        self.infoTariffMobieSimulationByPercentage = NSLocalizedString(CodingKeys.infoTariffMobieSimulationByPercentage.rawValue, comment: "")
        self.infoTariffMobieSimulationPrice = NSLocalizedString(CodingKeys.infoTariffMobieSimulationPrice.rawValue, comment: "")
        self.infoTariffMobieDurationRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDurationRestriction.rawValue, comment: "")
        self.infoTariffMobieDayRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDayRestriction.rawValue, comment: "")
        self.infoTariffMobieTimeRestriction = NSLocalizedString(CodingKeys.infoTariffMobieTimeRestriction.rawValue, comment: "")
        self.infoTariffMobieDateRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDateRestriction.rawValue, comment: "")
        self.infoTariffMobieEnergyRestriction = NSLocalizedString(CodingKeys.infoTariffMobieEnergyRestriction.rawValue, comment: "")
        self.infoTariffMobieCurrentRestriction = NSLocalizedString(CodingKeys.infoTariffMobieCurrentRestriction.rawValue, comment: "")
        self.infoTariffMobiePowerRestriction = NSLocalizedString(CodingKeys.infoTariffMobiePowerRestriction.rawValue, comment: "")
        self.infoTariffMobieDefaultRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDefaultRestriction.rawValue, comment: "")
        self.infoTariffMobieBetween = NSLocalizedString(CodingKeys.infoTariffMobieBetween.rawValue, comment: "")
        self.infoTariffMobieAfter = NSLocalizedString(CodingKeys.infoTariffMobieAfter.rawValue, comment: "")
        self.infoTariffMobieBefore = NSLocalizedString(CodingKeys.infoTariffMobieBefore.rawValue, comment: "")
        self.infoTariffMobieAnd = NSLocalizedString(CodingKeys.infoTariffMobieAnd.rawValue, comment: "")
        // MARK: - CANCEL CARD VIEW DEFAULT KEYS
        self.cancelCardCancelCard = NSLocalizedString(CodingKeys.cancelCardCancelCard.rawValue, comment: "")
        self.cancelCardDescription = NSLocalizedString(CodingKeys.cancelCardDescription.rawValue, comment: "")
        self.cancelCardDescriptionHint = NSLocalizedString(CodingKeys.cancelCardDescriptionHint.rawValue, comment: "")
        self.cancelCardReason = NSLocalizedString(CodingKeys.cancelCardReason.rawValue, comment: "")
        self.cancelCardLost = NSLocalizedString(CodingKeys.cancelCardLost.rawValue, comment: "")
        self.cancelCardTheft = NSLocalizedString(CodingKeys.cancelCardTheft.rawValue, comment: "")
        self.cancelCardOther = NSLocalizedString(CodingKeys.cancelCardOther.rawValue, comment: "")
        self.cancelCardWantReplacement = NSLocalizedString(CodingKeys.cancelCardWantReplacement.rawValue, comment: "")
        self.cancelCardSuccessCanceledMessage = NSLocalizedString(CodingKeys.cancelCardSuccessCanceledMessage.rawValue, comment: "")
    }
    
}
