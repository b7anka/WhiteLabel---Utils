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
    public let chargerDetailsChargerOccupiediOSPart1Alt: String
    public let chargerDetailsChargerOccupiediOSPart1: String
    public let chargerDetailsChargerOccupiediOSPart2: String
    public let chargerDetailsChargerOccupiediOSBoldPart: String
    public let chargerDetailsCemeTariff: String
    public let chargerDetailsLimited: String
    public let chargerDetailsAlways: String
    public let chargerDetailsWrongBehaviorStation: String
    public let chargerDetailsTariff: String
    public let chargerDetailsChargerPlugInfoFree: String
    public let chargerDetailsChargerPlugInfoOccupied: String
    public let chargerDetailsChargerInfoOffline: String
    public let chargerPointFullDetailsThanksForTheImageMessage: String
    public let chargerPointFullDetailsStopDateShouldBeAfterStartDate: String
    public let chargerPointFullDetailsChargingTimeMinimumDuration: String
    public let chargerDetailsGoToPaymentMethods: String
    public let chargerDetailsGoToBillingProfile: String
    public let chargerDetailsInfoEstimatedPrice30min: String
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
    public let contractsMessageInfoActivationMobie: String
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
    public let comparatorEnergy: String
    public let comparatorCheckTariff: String
    public let comparatorPickFromMap: String
    public let comparatorPickChargingPoint: String
    public let comparatorAddToCompare: String
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
    // MARK: - ACTIVATE NETWORK VIEW PROPERTIES
    public let activateNetworkGireve: String
    public let activateNetworkMobie: String
    // MARK: - MAP LIST VIEW PROPERTIES
    public let mapListTitle: String
    public let mapListRelevance: String
    public let mapListPrice: String
    public let mapListDistance: String
    // MARK: - ACP ASSISTENCE VIEW PROPERTIES
    public let acpAssistanceTitle: String
    public let acpAssistancePhoneNumber: String
    public let acpCardNumberNotFilled: String
    public let acpNoChargersFoundForList: String
    
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
        case chargerDetailsChargerOccupiediOSPart1Alt = "chargerDetails_chargerOccupiediOSPart1"
        case chargerDetailsChargerOccupiediOSPart1 = "chargerDetails_chargerOccupiediOSPart1New"
        case chargerDetailsChargerOccupiediOSPart2 = "chargerDetails_chargerOccupiediOSPart2"
        case chargerDetailsChargerOccupiediOSBoldPart = "chargerDetails_chargerOccupiediOSBoldPart"
        case chargerDetailsCemeTariff = "chargerDetails_cemeTariff"
        case chargerDetailsLimited = "chargerDetails_limited"
        case chargerDetailsAlways = "chargerDetails_always"
        case chargerDetailsWrongBehaviorStation = "chargerDetails_wrongBehaviorStation"
        case chargerDetailsTariff = "chargerDetails_tariff"
        case chargerDetailsChargerPlugInfoFree = "chargerDetails_chargerPlugInfoFree"
        case chargerDetailsChargerPlugInfoOccupied = "chargerDetails_chargerPlugInfoOccupied"
        case chargerDetailsChargerInfoOffline = "chargerDetails_chargerInfoOffline"
        case chargerPointFullDetailsThanksForTheImageMessage = "chargerPointFullDetails_thanksForTheImageMessage"
        case chargerPointFullDetailsStopDateShouldBeAfterStartDate = "chargerPointFullDetails_stopDateShouldBeAfterStartDate"
        case chargerPointFullDetailsChargingTimeMinimumDuration = "chargerPointFullDetails_chargingTimeMinimumDuration"
        case chargerDetailsGoToPaymentMethods = "chargerDetails_goToPaymentMethods"
        case chargerDetailsGoToBillingProfile = "chargerDetails_goToBillingProfile"
        case chargerDetailsInfoEstimatedPrice30min = "chargerDetails_infoEstimatedPrice30min"
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
        case contractsMessageInfoActivationMobie = "contracts_messageInfoActivationMobie"
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
        case validationMessageNotHaveContractRoamingNote = "validationMessage_notHaveContractRoamingNoteNew"
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
        case signUpTermAndCondLicenseMarketing = "signUpTermAndCond_licenseMarketingGeneric"
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
        case comparatorTitle = "comparator_newTitle"
        case comparatorChargingPoint = "comparator_chargingPoint"
        case comparatorPlugPower = "comparator_plugPower"
        case comparatorChargingDuration = "comparator_chargingDuration"
        case comparatorTotalCost = "comparator_total"
        case comparatorAverageCost = "comparator_averageCost"
        case comparatorMyChargers = "comparator_myChargers"
        case comparatorOtherChargers = "comparator_otherChargers"
        case comparatorFavourites = "comparator_favourites"
        case comparatorChooseChargingPoint = "comparator_chooseChargingPoint"
        case comparatorCompareButton = "comparator_compareButton"
        case comparatorChoosePlugToCompare = "comparator_choosePlugToCompare"
        case comparatorPlugAlreadyBeingCompared = "comparator_plugAlreadyBeingCompared"
        case comparatorEnergy = "comparator_energy"
        case comparatorCheckTariff = "comparator_checkTariff"
        case comparatorPickFromMap = "comparator_pickFromMap"
        case comparatorPickChargingPoint = "comparator_pickChargingPoint"
        case comparatorAddToCompare = "comparator_addToCompare"
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
        // MARK: - ACTIVATE NETWORK VIEW KEYS PROPERTIES
        case activateNetworkGireve = "activateNetwork_gireve"
        case activateNetworkMobie = "activateNetwork_mobie"
        // MARK: - MAP LIST VIEW KEYS PROPERTIES
        case mapListTitle = "mapList_title"
        case mapListRelevance = "mapList_relevance"
        case mapListPrice = "mapList_price"
        case mapListDistance = "mapList_distance"
        // MARK: - ACP ASSISTENCE VIEW PROPERTIES
        case acpAssistanceTitle = "acpAssistance_title"
        case acpAssistancePhoneNumber = "acpAssistance_phoneNumber"
        case acpCardNumberNotFilled = "acp_cardNumberNotFilled"
        case acpNoChargersFoundForList = "acp_noChargersFoundForList"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        // MARK: - GENERAL KEYS
        self.generalNoInternetConnection = try container.decodeIfPresent(String.self, forKey: .generalNoInternetConnection) ?? NSLocalizedString(CodingKeys.generalNoInternetConnection.rawValue, comment: .empty)
        self.generalNoInternetConnectionMessage = try container.decodeIfPresent(String.self, forKey: .generalNoInternetConnectionMessage) ?? NSLocalizedString(CodingKeys.generalNoInternetConnectionMessage.rawValue, comment: .empty)
        self.generalOk = try container.decodeIfPresent(String.self, forKey: .generalOk) ?? NSLocalizedString(CodingKeys.generalOk.rawValue, comment: .empty)
        self.generalLess = try container.decodeIfPresent(String.self, forKey: .generalLess) ?? NSLocalizedString(CodingKeys.generalLess.rawValue, comment: .empty)
        self.generalMore = try container.decodeIfPresent(String.self, forKey: .generalMore) ?? NSLocalizedString(CodingKeys.generalMore.rawValue, comment: .empty)
        self.generalPlusVat = try container.decodeIfPresent(String.self, forKey: .generalPlusVat) ?? NSLocalizedString(CodingKeys.generalPlusVat.rawValue, comment: .empty)
        self.generalUnidentifiedEv = try container.decodeIfPresent(String.self, forKey: .generalUnidentifiedEv) ?? NSLocalizedString(CodingKeys.generalUnidentifiedEv.rawValue, comment: .empty)
        self.generalAvailableSoon = try container.decodeIfPresent(String.self, forKey: .generalAvailableSoon) ?? NSLocalizedString(CodingKeys.generalAvailableSoon.rawValue, comment: .empty)
        self.generalInfoNotAvailable = try container.decodeIfPresent(String.self, forKey: .generalInfoNotAvailable) ?? NSLocalizedString(CodingKeys.generalInfoNotAvailable.rawValue, comment: .empty)
        self.generalCameraOrLibraryTitle = try container.decodeIfPresent(String.self, forKey: .generalCameraOrLibraryTitle) ?? NSLocalizedString(CodingKeys.generalCameraOrLibraryTitle.rawValue, comment: .empty)
        self.generalCameraBtn = try container.decodeIfPresent(String.self, forKey: .generalCameraBtn) ?? NSLocalizedString(CodingKeys.generalCameraBtn.rawValue, comment: .empty)
        self.generalLibraryBtn = try container.decodeIfPresent(String.self, forKey: .generalLibraryBtn) ?? NSLocalizedString(CodingKeys.generalLibraryBtn.rawValue, comment: .empty)
        self.generalEmail = try container.decodeIfPresent(String.self, forKey: .generalEmail) ?? NSLocalizedString(CodingKeys.generalEmail.rawValue, comment: .empty)
        self.generalPhoneNumber = try container.decodeIfPresent(String.self, forKey: .generalPhoneNumber) ?? NSLocalizedString(CodingKeys.generalPhoneNumber.rawValue, comment: .empty)
        self.generalTypeHere = try container.decodeIfPresent(String.self, forKey: .generalTypeHere) ?? NSLocalizedString(CodingKeys.generalTypeHere.rawValue, comment: .empty)
        self.generalName = try container.decodeIfPresent(String.self, forKey: .generalName) ?? NSLocalizedString(CodingKeys.generalName.rawValue, comment: .empty)
        self.generalPassword = try container.decodeIfPresent(String.self, forKey: .generalPassword) ?? NSLocalizedString(CodingKeys.generalPassword.rawValue, comment: .empty)
        self.generalOldPassword = try container.decodeIfPresent(String.self, forKey: .generalOldPassword) ?? NSLocalizedString(CodingKeys.generalOldPassword.rawValue, comment: .empty)
        self.generalRepeatPassword = try container.decodeIfPresent(String.self, forKey: .generalRepeatPassword) ?? NSLocalizedString(CodingKeys.generalRepeatPassword.rawValue, comment: .empty)
        self.generalInvalidEmail = try container.decodeIfPresent(String.self, forKey: .generalInvalidEmail) ?? NSLocalizedString(CodingKeys.generalInvalidEmail.rawValue, comment: .empty)
        self.generalInvalidPhoneNumber = try container.decodeIfPresent(String.self, forKey: .generalInvalidPhoneNumber) ?? NSLocalizedString(CodingKeys.generalInvalidPhoneNumber.rawValue, comment: .empty)
        self.generalNext = try container.decodeIfPresent(String.self, forKey: .generalNext) ?? NSLocalizedString(CodingKeys.generalNext.rawValue, comment: .empty)
        self.generalPasswordRequired = try container.decodeIfPresent(String.self, forKey: .generalPasswordRequired) ?? NSLocalizedString(CodingKeys.generalPasswordRequired.rawValue, comment: .empty)
        self.generalCode = try container.decodeIfPresent(String.self, forKey: .generalCode) ?? NSLocalizedString(CodingKeys.generalCode.rawValue, comment: .empty)
        self.generalPasswordNotValid = try container.decodeIfPresent(String.self, forKey: .generalPasswordNotValid) ?? NSLocalizedString(CodingKeys.generalPasswordNotValid.rawValue, comment: .empty)
        self.generalPasswordsDoNotMatch = try container.decodeIfPresent(String.self, forKey: .generalPasswordsDoNotMatch) ?? NSLocalizedString(CodingKeys.generalPasswordsDoNotMatch.rawValue, comment: .empty)
        self.generalGenericErrorMessage = try container.decodeIfPresent(String.self, forKey: .generalGenericErrorMessage) ?? NSLocalizedString(CodingKeys.generalGenericErrorMessage.rawValue, comment: .empty)
        self.generalCancel = try container.decodeIfPresent(String.self, forKey: .generalCancel) ?? NSLocalizedString(CodingKeys.generalCancel.rawValue, comment: .empty)
        self.generalSearch = try container.decodeIfPresent(String.self, forKey: .generalSearch) ?? NSLocalizedString(CodingKeys.generalSearch.rawValue, comment: .empty)
        self.generalErrorSharingQrCode = try container.decodeIfPresent(String.self, forKey: .generalErrorSharingQrCode) ?? NSLocalizedString(CodingKeys.generalErrorSharingQrCode.rawValue, comment: .empty)
        self.generalQrCodeSavedSuccessfully = try container.decodeIfPresent(String.self, forKey: .generalQrCodeSavedSuccessfully) ?? NSLocalizedString(CodingKeys.generalQrCodeSavedSuccessfully.rawValue, comment: .empty)
        self.generalQrCodeSaveFailed = try container.decodeIfPresent(String.self, forKey: .generalQrCodeSaveFailed) ?? NSLocalizedString(CodingKeys.generalQrCodeSaveFailed.rawValue, comment: .empty)
        self.generalSave = try container.decodeIfPresent(String.self, forKey: .generalSave) ?? NSLocalizedString(CodingKeys.generalSave.rawValue, comment: .empty)
        self.generalYes = try container.decodeIfPresent(String.self, forKey: .generalYes) ?? NSLocalizedString(CodingKeys.generalYes.rawValue, comment: .empty)
        self.generalNo = try container.decodeIfPresent(String.self, forKey: .generalNo) ?? NSLocalizedString(CodingKeys.generalNo.rawValue, comment: .empty)
        self.generalType = try container.decodeIfPresent(String.self, forKey: .generalType) ?? NSLocalizedString(CodingKeys.generalType.rawValue, comment: .empty)
        self.generalStreet = try container.decodeIfPresent(String.self, forKey: .generalStreet) ?? NSLocalizedString(CodingKeys.generalStreet.rawValue, comment: .empty)
        self.generalCity = try container.decodeIfPresent(String.self, forKey: .generalCity) ?? NSLocalizedString(CodingKeys.generalCity.rawValue, comment: .empty)
        self.generalCountry = try container.decodeIfPresent(String.self, forKey: .generalCountry) ?? NSLocalizedString(CodingKeys.generalCountry.rawValue, comment: .empty)
        self.generalNumber = try container.decodeIfPresent(String.self, forKey: .generalNumber) ?? NSLocalizedString(CodingKeys.generalNumber.rawValue, comment: .empty)
        self.generalZipCode = try container.decodeIfPresent(String.self, forKey: .generalZipCode) ?? NSLocalizedString(CodingKeys.generalZipCode.rawValue, comment: .empty)
        self.generalOther = try container.decodeIfPresent(String.self, forKey: .generalOther) ?? NSLocalizedString(CodingKeys.generalOther.rawValue, comment: .empty)
        self.generalNameRequired = try container.decodeIfPresent(String.self, forKey: .generalNameRequired) ?? NSLocalizedString(CodingKeys.generalNameRequired.rawValue, comment: .empty)
        self.generalStreetRequired = try container.decodeIfPresent(String.self, forKey: .generalStreetRequired) ?? NSLocalizedString(CodingKeys.generalStreetRequired.rawValue, comment: .empty)
        self.generalCityRequired = try container.decodeIfPresent(String.self, forKey: .generalCityRequired) ?? NSLocalizedString(CodingKeys.generalCityRequired.rawValue, comment: .empty)
        self.generalDoorNumberRequired = try container.decodeIfPresent(String.self, forKey: .generalDoorNumberRequired) ?? NSLocalizedString(CodingKeys.generalDoorNumberRequired.rawValue, comment: .empty)
        self.generalZipCodeRequired = try container.decodeIfPresent(String.self, forKey: .generalZipCodeRequired) ?? NSLocalizedString(CodingKeys.generalZipCodeRequired.rawValue, comment: .empty)
        self.generalZipCodeNotValid = try container.decodeIfPresent(String.self, forKey: .generalZipCodeNotValid) ?? NSLocalizedString(CodingKeys.generalZipCodeNotValid.rawValue, comment: .empty)
        self.generalContractTypeFleet = try container.decodeIfPresent(String.self, forKey: .generalContractTypeFleet) ?? NSLocalizedString(CodingKeys.generalContractTypeFleet.rawValue, comment: .empty)
        self.generalContractTypeUser = try container.decodeIfPresent(String.self, forKey: .generalContractTypeUser) ?? NSLocalizedString(CodingKeys.generalContractTypeUser.rawValue, comment: .empty)
        self.generalTariff = try container.decodeIfPresent(String.self, forKey: .generalTariff) ?? NSLocalizedString(CodingKeys.generalTariff.rawValue, comment: .empty)
        self.generalTin = try container.decodeIfPresent(String.self, forKey: .generalTin) ?? NSLocalizedString(CodingKeys.generalTin.rawValue, comment: .empty)
        self.generalActivate = try container.decodeIfPresent(String.self, forKey: .generalActivate) ?? NSLocalizedString(CodingKeys.generalActivate.rawValue, comment: .empty)
        self.generalCardNumber = try container.decodeIfPresent(String.self, forKey: .generalCardNumber) ?? NSLocalizedString(CodingKeys.generalCardNumber.rawValue, comment: .empty)
        self.generalAddress = try container.decodeIfPresent(String.self, forKey: .generalAddress) ?? NSLocalizedString(CodingKeys.generalAddress.rawValue, comment: .empty)
        self.generalFieldRequired = try container.decodeIfPresent(String.self, forKey: .generalFieldRequired) ?? NSLocalizedString(CodingKeys.generalFieldRequired.rawValue, comment: .empty)
        self.generalTinNumberInvalid = try container.decodeIfPresent(String.self, forKey: .generalTinNumberInvalid) ?? NSLocalizedString(CodingKeys.generalTinNumberInvalid.rawValue, comment: .empty)
        self.generalEdit = try container.decodeIfPresent(String.self, forKey: .generalEdit) ?? NSLocalizedString(CodingKeys.generalEdit.rawValue, comment: .empty)
        self.generalRemove = try container.decodeIfPresent(String.self, forKey: .generalRemove) ?? NSLocalizedString(CodingKeys.generalRemove.rawValue, comment: .empty)
        self.generalDelete = try container.decodeIfPresent(String.self, forKey: .generalDelete) ?? NSLocalizedString(CodingKeys.generalDelete.rawValue, comment: .empty)
        self.generalNotes = try container.decodeIfPresent(String.self, forKey: .generalNotes) ?? NSLocalizedString(CodingKeys.generalNotes.rawValue, comment: .empty)
        self.generalLicensePlate = try container.decodeIfPresent(String.self, forKey: .generalLicensePlate) ?? NSLocalizedString(CodingKeys.generalLicensePlate.rawValue, comment: .empty)
        self.generalPrimary = try container.decodeIfPresent(String.self, forKey: .generalPrimary) ?? NSLocalizedString(CodingKeys.generalPrimary.rawValue, comment: .empty)
        self.generalNetworks = try container.decodeIfPresent(String.self, forKey: .generalNetworks) ?? NSLocalizedString(CodingKeys.generalNetworks.rawValue, comment: .empty)
        self.generalPayment = try container.decodeIfPresent(String.self, forKey: .generalPayment) ?? NSLocalizedString(CodingKeys.generalPayment.rawValue, comment: .empty)
        self.generalDriver = try container.decodeIfPresent(String.self, forKey: .generalDriver) ?? NSLocalizedString(CodingKeys.generalDriver.rawValue, comment: .empty)
        self.generalEvOwner = try container.decodeIfPresent(String.self, forKey: .generalEvOwner) ?? NSLocalizedString(CodingKeys.generalEvOwner.rawValue, comment: .empty)
        self.generalCompany = try container.decodeIfPresent(String.self, forKey: .generalCompany) ?? NSLocalizedString(CodingKeys.generalCompany.rawValue, comment: .empty)
        self.generalMyself = try container.decodeIfPresent(String.self, forKey: .generalMyself) ?? NSLocalizedString(CodingKeys.generalMyself.rawValue, comment: .empty)
        self.generalDuration = try container.decodeIfPresent(String.self, forKey: .generalDuration) ?? NSLocalizedString(CodingKeys.generalDuration.rawValue, comment: .empty)
        self.generalEnergySupplied = try container.decodeIfPresent(String.self, forKey: .generalEnergySupplied) ?? NSLocalizedString(CodingKeys.generalEnergySupplied.rawValue, comment: .empty)
        self.generalInstantPower = try container.decodeIfPresent(String.self, forKey: .generalInstantPower) ?? NSLocalizedString(CodingKeys.generalInstantPower.rawValue, comment: .empty)
        self.generalCost = try container.decodeIfPresent(String.self, forKey: .generalCost) ?? NSLocalizedString(CodingKeys.generalCost.rawValue, comment: .empty)
        self.generalDurationPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalDurationPlaceholder) ?? NSLocalizedString(CodingKeys.generalDurationPlaceholder.rawValue, comment: .empty)
        self.generalEnergySuppliedPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalEnergySuppliedPlaceholder) ?? NSLocalizedString(CodingKeys.generalEnergySuppliedPlaceholder.rawValue, comment: .empty)
        self.generalInstantPowerPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalInstantPowerPlaceholder) ?? NSLocalizedString(CodingKeys.generalInstantPowerPlaceholder.rawValue, comment: .empty)
        self.generalCostPlaceholder = try container.decodeIfPresent(String.self, forKey: .generalCostPlaceholder) ?? NSLocalizedString(CodingKeys.generalCostPlaceholder.rawValue, comment: .empty)
        self.generalTimeLeft = try container.decodeIfPresent(String.self, forKey: .generalTimeLeft) ?? NSLocalizedString(CodingKeys.generalTimeLeft.rawValue, comment: .empty)
        self.generalBattery = try container.decodeIfPresent(String.self, forKey: .generalBattery) ?? NSLocalizedString(CodingKeys.generalBattery.rawValue, comment: .empty)
        self.generalUnlockPlug = try container.decodeIfPresent(String.self, forKey: .generalUnlockPlug) ?? NSLocalizedString(CodingKeys.generalUnlockPlug.rawValue, comment: .empty)
        self.generalEstimatedPriceInfo = try container.decodeIfPresent(String.self, forKey: .generalEstimatedPriceInfo) ?? NSLocalizedString(CodingKeys.generalEstimatedPriceInfo.rawValue, comment: .empty)
        self.generalVatNotIncluded = try container.decodeIfPresent(String.self, forKey: .generalVatNotIncluded) ?? NSLocalizedString(CodingKeys.generalVatNotIncluded.rawValue, comment: .empty)
        self.generalPriceOnEmptyHours = try container.decodeIfPresent(String.self, forKey: .generalPriceOnEmptyHours) ?? NSLocalizedString(CodingKeys.generalPriceOnEmptyHours.rawValue, comment: .empty)
        self.generalPriceOnFullHours = try container.decodeIfPresent(String.self, forKey: .generalPriceOnFullHours) ?? NSLocalizedString(CodingKeys.generalPriceOnFullHours.rawValue, comment: .empty)
        self.generalPriceOn = try container.decodeIfPresent(String.self, forKey: .generalPriceOn) ?? NSLocalizedString(CodingKeys.generalPriceOn.rawValue, comment: .empty)
        self.generalEnergyBased = try container.decodeIfPresent(String.self, forKey: .generalEnergyBased) ?? NSLocalizedString(CodingKeys.generalEnergyBased.rawValue, comment: .empty)
        self.generalTimeBased = try container.decodeIfPresent(String.self, forKey: .generalTimeBased) ?? NSLocalizedString(CodingKeys.generalTimeBased.rawValue, comment: .empty)
        self.generalBooking = try container.decodeIfPresent(String.self, forKey: .generalBooking) ?? NSLocalizedString(CodingKeys.generalBooking.rawValue, comment: .empty)
        self.generalCharging = try container.decodeIfPresent(String.self, forKey: .generalCharging) ?? NSLocalizedString(CodingKeys.generalCharging.rawValue, comment: .empty)
        self.generalParking = try container.decodeIfPresent(String.self, forKey: .generalParking) ?? NSLocalizedString(CodingKeys.generalParking.rawValue, comment: .empty)
        self.generalActivation = try container.decodeIfPresent(String.self, forKey: .generalActivation) ?? NSLocalizedString(CodingKeys.generalActivation.rawValue, comment: .empty)
        self.generalOhNoTitle = try container.decodeIfPresent(String.self, forKey: .generalOhNoTitle) ?? NSLocalizedString(CodingKeys.generalOhNoTitle.rawValue, comment: .empty)
        self.generalSomethingWentWrong = try container.decodeIfPresent(String.self, forKey: .generalSomethingWentWrong) ?? NSLocalizedString(CodingKeys.generalSomethingWentWrong.rawValue, comment: .empty)
        self.generalSend = try container.decodeIfPresent(String.self, forKey: .generalSend) ?? NSLocalizedString(CodingKeys.generalSend.rawValue, comment: .empty)
        self.generalUnlockCableSuccessMessage = try container.decodeIfPresent(String.self, forKey: .generalUnlockCableSuccessMessage) ?? NSLocalizedString(CodingKeys.generalUnlockCableSuccessMessage.rawValue, comment: .empty)
        self.generalAdd = try container.decodeIfPresent(String.self, forKey: .generalAdd) ?? NSLocalizedString(CodingKeys.generalAdd.rawValue, comment: .empty)
        self.generalOccupied = try container.decodeIfPresent(String.self, forKey: .generalOccupied) ?? NSLocalizedString(CodingKeys.generalOccupied.rawValue, comment: .empty)
        self.generalFree = try container.decodeIfPresent(String.self, forKey: .generalFree) ?? NSLocalizedString(CodingKeys.generalFree.rawValue, comment: .empty)
        self.generalOffline = try container.decodeIfPresent(String.self, forKey: .generalOffline) ?? NSLocalizedString(CodingKeys.generalOffline.rawValue, comment: .empty)
        self.generalPublic = try container.decodeIfPresent(String.self, forKey: .generalPublic) ?? NSLocalizedString(CodingKeys.generalPublic.rawValue, comment: .empty)
        self.generalRestrict = try container.decodeIfPresent(String.self, forKey: .generalRestrict) ?? NSLocalizedString(CodingKeys.generalRestrict.rawValue, comment: .empty)
        self.generalPrivate = try container.decodeIfPresent(String.self, forKey: .generalPrivate) ?? NSLocalizedString(CodingKeys.generalPrivate.rawValue, comment: .empty)
        self.generalAvailableImagesToTake = try container.decodeIfPresent(String.self, forKey: .generalAvailableImagesToTake) ?? NSLocalizedString(CodingKeys.generalAvailableImagesToTake.rawValue, comment: .empty)
        self.generalLocation = try container.decodeIfPresent(String.self, forKey: .generalLocation) ?? NSLocalizedString(CodingKeys.generalLocation.rawValue, comment: .empty)
        self.generalDefault = try container.decodeIfPresent(String.self, forKey: .generalDefault) ?? NSLocalizedString(CodingKeys.generalDefault.rawValue, comment: .empty)
        self.generalAddImages = try container.decodeIfPresent(String.self, forKey: .generalAddImages) ?? NSLocalizedString(CodingKeys.generalAddImages.rawValue, comment: .empty)
        self.generalConfirm = try container.decodeIfPresent(String.self, forKey: .generalConfirm) ?? NSLocalizedString(CodingKeys.generalConfirm.rawValue, comment: .empty)
        self.generalCopied = try container.decodeIfPresent(String.self, forKey: .generalCopied) ?? NSLocalizedString(CodingKeys.generalCopied.rawValue, comment: .empty)
        self.generalSent = try container.decodeIfPresent(String.self, forKey: .generalSent) ?? NSLocalizedString(CodingKeys.generalSent.rawValue, comment: .empty)
        self.generalPlug = try container.decodeIfPresent(String.self, forKey: .generalPlug) ?? NSLocalizedString(CodingKeys.generalPlug.rawValue, comment: .empty)
        self.generalPlugs = try container.decodeIfPresent(String.self, forKey: .generalPlugs) ?? NSLocalizedString(CodingKeys.generalPlugs.rawValue, comment: .empty)
        self.generalOf = try container.decodeIfPresent(String.self, forKey: .generalOf) ?? NSLocalizedString(CodingKeys.generalOf.rawValue, comment: .empty)
        self.generalPage = try container.decodeIfPresent(String.self, forKey: .generalPage) ?? NSLocalizedString(CodingKeys.generalPage.rawValue, comment: .empty)
        self.generalNoEvs = try container.decodeIfPresent(String.self, forKey: .generalNoEvs) ?? NSLocalizedString(CodingKeys.generalNoEvs.rawValue, comment: .empty)
        self.generalGoToMyEvs = try container.decodeIfPresent(String.self, forKey: .generalGoToMyEvs) ?? NSLocalizedString(CodingKeys.generalGoToMyEvs.rawValue, comment: .empty)
        self.generalDownload = try container.decodeIfPresent(String.self, forKey: .generalDownload) ?? NSLocalizedString(CodingKeys.generalDownload.rawValue, comment: .empty)
        // MARK: - OTHER KEYS
        self.appNeedsToBeUpdated = try container.decodeIfPresent(String.self, forKey: .appNeedsToBeUpdated) ?? NSLocalizedString(CodingKeys.appNeedsToBeUpdated.rawValue, comment: .empty)
        self.chargerCannotBeUsed = try container.decodeIfPresent(String.self, forKey: .chargerCannotBeUsed) ?? NSLocalizedString(CodingKeys.chargerCannotBeUsed.rawValue, comment: .empty)
        self.locationServicesAlertTitle = try container.decodeIfPresent(String.self, forKey: .locationServicesAlertTitle) ?? NSLocalizedString(CodingKeys.locationServicesAlertTitle.rawValue, comment: .empty)
        self.locationServicesAlertMessage = try container.decodeIfPresent(String.self, forKey: .locationServicesAlertMessage) ?? NSLocalizedString(CodingKeys.locationServicesAlertMessage.rawValue, comment: .empty)
        self.locationsServicesAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .locationsServicesAlertEnableButton) ?? NSLocalizedString(CodingKeys.locationsServicesAlertEnableButton.rawValue, comment: .empty)
        self.libraryPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertTitle.rawValue, comment: .empty)
        self.libraryPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertMessage.rawValue, comment: .empty)
        self.libraryPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .libraryPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.libraryPermissionAlertEnableButton.rawValue, comment: .empty)
        self.messageLimitAddObjects = try container.decodeIfPresent(String.self, forKey: .messageLimitAddObjects) ?? NSLocalizedString(CodingKeys.messageLimitAddObjects.rawValue, comment: .empty)
        self.networkRoaming = try container.decodeIfPresent(String.self, forKey: .networkRoaming) ?? NSLocalizedString(CodingKeys.networkRoaming.rawValue, comment: .empty)
        self.networkOthers = try container.decodeIfPresent(String.self, forKey: .networkOthers) ?? NSLocalizedString(CodingKeys.networkOthers.rawValue, comment: .empty)
        self.cameraPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertTitle.rawValue, comment: .empty)
        self.cameraPermissionAlertMesage = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertMesage) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertMesage.rawValue, comment: .empty)
        self.cameraPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .cameraPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.cameraPermissionAlertEnableButton.rawValue, comment: .empty)
        self.contactsPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertTitle.rawValue, comment: .empty)
        self.contactsPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertMessage.rawValue, comment: .empty)
        self.contactsPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .contactsPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.contactsPermissionAlertEnableButton.rawValue, comment: .empty)
        self.notificationsPermissionAlertTitle = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertTitle) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertTitle.rawValue, comment: .empty)
        self.notificationsPermissionAlertMessage = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertMessage) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertMessage.rawValue, comment: .empty)
        self.notificationsPermissionAlertEnableButton = try container.decodeIfPresent(String.self, forKey: .notificationsPermissionAlertEnableButton) ?? NSLocalizedString(CodingKeys.notificationsPermissionAlertEnableButton.rawValue, comment: .empty)
        // MARK: - SEARCH PAGE KEYS
        self.searchLocations = try container.decodeIfPresent(String.self, forKey: .searchLocations) ?? NSLocalizedString(CodingKeys.searchLocations.rawValue, comment: .empty)
        self.searchChargingStations = try container.decodeIfPresent(String.self, forKey: .searchChargingStations) ?? NSLocalizedString(CodingKeys.searchChargingStations.rawValue, comment: .empty)
        self.searchRecent = try container.decodeIfPresent(String.self, forKey: .searchRecent) ?? NSLocalizedString(CodingKeys.searchRecent.rawValue, comment: .empty)
        self.searchNoResultsFound = try container.decodeIfPresent(String.self, forKey: .searchNoResultsFound) ?? NSLocalizedString(CodingKeys.searchNoResultsFound.rawValue, comment: .empty)
        self.searchAnUnexpectedErrorOccurred = try container.decodeIfPresent(String.self, forKey: .searchAnUnexpectedErrorOccurred) ?? NSLocalizedString(CodingKeys.searchAnUnexpectedErrorOccurred.rawValue, comment: .empty)
        self.searchNoRecents = try container.decodeIfPresent(String.self, forKey: .searchNoRecents) ?? NSLocalizedString(CodingKeys.searchNoRecents.rawValue, comment: .empty)
        // MARK: - FILTERS PAGE KEYS
        self.filtersTitle = try container.decodeIfPresent(String.self, forKey: .filtersTitle) ?? NSLocalizedString(CodingKeys.filtersTitle.rawValue, comment: .empty)
        self.filtersClearFiltersButton = try container.decodeIfPresent(String.self, forKey: .filtersClearFiltersButton) ?? NSLocalizedString(CodingKeys.filtersClearFiltersButton.rawValue, comment: .empty)
        self.filtersAvailableStations = try container.decodeIfPresent(String.self, forKey: .filtersAvailableStations) ?? NSLocalizedString(CodingKeys.filtersAvailableStations.rawValue, comment: .empty)
        self.filtersPrice = try container.decodeIfPresent(String.self, forKey: .filtersPrice) ?? NSLocalizedString(CodingKeys.filtersPrice.rawValue, comment: .empty)
        self.filtersMin = try container.decodeIfPresent(String.self, forKey: .filtersMin) ?? NSLocalizedString(CodingKeys.filtersMin.rawValue, comment: .empty)
        self.filtersPower = try container.decodeIfPresent(String.self, forKey: .filtersPower) ?? NSLocalizedString(CodingKeys.filtersPower.rawValue, comment: .empty)
        self.filtersKwh = try container.decodeIfPresent(String.self, forKey: .filtersKwh) ?? NSLocalizedString(CodingKeys.filtersKwh.rawValue, comment: .empty)
        self.filtersRating = try container.decodeIfPresent(String.self, forKey: .filtersRating) ?? NSLocalizedString(CodingKeys.filtersRating.rawValue, comment: .empty)
        self.filtersMinimum = try container.decodeIfPresent(String.self, forKey: .filtersMinimum) ?? NSLocalizedString(CodingKeys.filtersMinimum.rawValue, comment: .empty)
        self.filtersNetworks = try container.decodeIfPresent(String.self, forKey: .filtersNetworks) ?? NSLocalizedString(CodingKeys.filtersNetworks.rawValue, comment: .empty)
        self.filtersOtherNetworks = try container.decodeIfPresent(String.self, forKey: .filtersOtherNetworks) ?? NSLocalizedString(CodingKeys.filtersOtherNetworks.rawValue, comment: .empty)
        self.filtersEvioNetwork = try container.decodeIfPresent(String.self, forKey: .filtersEvioNetwork) ?? NSLocalizedString(CodingKeys.filtersEvioNetwork.rawValue, comment: .empty)
        self.filtersTeslaNetwork = try container.decodeIfPresent(String.self, forKey: .filtersTeslaNetwork) ?? NSLocalizedString(CodingKeys.filtersTeslaNetwork.rawValue, comment: .empty)
        self.filtersMyChargers = try container.decodeIfPresent(String.self, forKey: .filtersMyChargers) ?? NSLocalizedString(CodingKeys.filtersMyChargers.rawValue, comment: .empty)
        self.filtersTypeOfConnector = try container.decodeIfPresent(String.self, forKey: .filtersTypeOfConnector) ?? NSLocalizedString(CodingKeys.filtersTypeOfConnector.rawValue, comment: .empty)
        self.filtersVehicles = try container.decodeIfPresent(String.self, forKey: .filtersVehicles) ?? NSLocalizedString(CodingKeys.filtersVehicles.rawValue, comment: .empty)
        self.filtersParkingType = try container.decodeIfPresent(String.self, forKey: .filtersParkingType) ?? NSLocalizedString(CodingKeys.filtersParkingType.rawValue, comment: .empty)
        self.filtersApplyButton = try container.decodeIfPresent(String.self, forKey: .filtersApplyButton) ?? NSLocalizedString(CodingKeys.filtersApplyButton.rawValue, comment: .empty)
        self.filtersInformationPrice = try container.decodeIfPresent(String.self, forKey: .filtersInformationPrice) ?? NSLocalizedString(CodingKeys.filtersInformationPrice.rawValue, comment: .empty)
        self.filtersMaxPowerEvInfo = try container.decodeIfPresent(String.self, forKey: .filtersMaxPowerEvInfo) ?? NSLocalizedString(CodingKeys.filtersMaxPowerEvInfo.rawValue, comment: .empty)
        self.filtersOnlyAvailable = try container.decodeIfPresent(String.self, forKey: .filtersOnlyAvailable) ?? NSLocalizedString(CodingKeys.filtersOnlyAvailable.rawValue, comment: .empty)
        self.filtersOnlyOnline = try container.decodeIfPresent(String.self, forKey: .filtersOnlyOnline) ?? NSLocalizedString(CodingKeys.filtersOnlyOnline.rawValue, comment: .empty)
        self.filtersOnlyPerKwh = try container.decodeIfPresent(String.self, forKey: .filtersOnlyPerKwh) ?? NSLocalizedString(CodingKeys.filtersOnlyPerKwh.rawValue, comment: .empty)
        self.filtersOnlyPerMin = try container.decodeIfPresent(String.self, forKey: .filtersOnlyPerMin) ?? NSLocalizedString(CodingKeys.filtersOnlyPerMin.rawValue, comment: .empty)
        self.filtersTariff = try container.decodeIfPresent(String.self, forKey: .filtersTariff) ?? NSLocalizedString(CodingKeys.filtersTariff.rawValue, comment: .empty)
        self.filtersAvailability = try container.decodeIfPresent(String.self, forKey: .filtersAvailability) ?? NSLocalizedString(CodingKeys.filtersAvailability.rawValue, comment: .empty)
        // MARK: - FAVOURITES PAGE KEYS
        self.favouritesEmptyViewWithoutLoginSubTitleUnderline = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewWithoutLoginSubTitleUnderline) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitleUnderline.rawValue, comment: .empty)
        self.favouritesEmptyViewTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewTitle.rawValue, comment: .empty)
        self.favouritesEmptyViewSubTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewSubTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewSubTitle.rawValue, comment: .empty)
        self.favouritesEmptyViewWithoutLoginSubTitle = try container.decodeIfPresent(String.self, forKey: .favouritesEmptyViewWithoutLoginSubTitle) ?? NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitle.rawValue, comment: .empty)
        self.favouritesTitle = try container.decodeIfPresent(String.self, forKey: .favouritesTitle) ?? NSLocalizedString(CodingKeys.favouritesTitle.rawValue, comment: .empty)
        // MARK: - CHARGING POINT PAGE KEYS
        self.chargerDetailsStop = try container.decodeIfPresent(String.self, forKey: .chargerDetailsStop) ?? NSLocalizedString(CodingKeys.chargerDetailsStop.rawValue, comment: .empty)
        self.chargerDetailsNetworkPhone = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetworkPhone) ?? NSLocalizedString(CodingKeys.chargerDetailsNetworkPhone.rawValue, comment: .empty)
        self.chargerDetailsNetworkEmail = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetworkEmail) ?? NSLocalizedString(CodingKeys.chargerDetailsNetworkEmail.rawValue, comment: .empty)
        self.chargerDetailsPriceEstimative = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPriceEstimative) ?? NSLocalizedString(CodingKeys.chargerDetailsPriceEstimative.rawValue, comment: .empty)
        self.chargerDetailsPower = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPower) ?? NSLocalizedString(CodingKeys.chargerDetailsPower.rawValue, comment: .empty)
        self.chargerDetailsBookButton = try container.decodeIfPresent(String.self, forKey: .chargerDetailsBookButton) ?? NSLocalizedString(CodingKeys.chargerDetailsBookButton.rawValue, comment: .empty)
        self.chargerDetailsCharge = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCharge) ?? NSLocalizedString(CodingKeys.chargerDetailsCharge.rawValue, comment: .empty)
        self.chargerDetailsDistance = try container.decodeIfPresent(String.self, forKey: .chargerDetailsDistance) ?? NSLocalizedString(CodingKeys.chargerDetailsDistance.rawValue, comment: .empty)
        self.chargerDetailsNotificationCreated = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNotificationCreated) ?? NSLocalizedString(CodingKeys.chargerDetailsNotificationCreated.rawValue, comment: .empty)
        self.chargerDetailsTooFarFromTheCharger = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTooFarFromTheCharger) ?? NSLocalizedString(CodingKeys.chargerDetailsTooFarFromTheCharger.rawValue, comment: .empty)
        self.chargerDetailsContract = try container.decodeIfPresent(String.self, forKey: .chargerDetailsContract) ?? NSLocalizedString(CodingKeys.chargerDetailsContract.rawValue, comment: .empty)
        self.chargerDetailsNoRFID = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoRFID) ?? NSLocalizedString(CodingKeys.chargerDetailsNoRFID.rawValue, comment: .empty)
        self.chargerDetailsMyEv = try container.decodeIfPresent(String.self, forKey: .chargerDetailsMyEv) ?? NSLocalizedString(CodingKeys.chargerDetailsMyEv.rawValue, comment: .empty)
        self.chargerDetailsAvailability = try container.decodeIfPresent(String.self, forKey: .chargerDetailsAvailability) ?? NSLocalizedString(CodingKeys.chargerDetailsAvailability.rawValue, comment: .empty)
        self.chargerDetailsChargingPointInfo = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingPointInfo) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingPointInfo.rawValue, comment: .empty)
        self.chargerDetailsChoosePlug = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChoosePlug) ?? NSLocalizedString(CodingKeys.chargerDetailsChoosePlug.rawValue, comment: .empty)
        self.chargerDetailsEstimateCost = try container.decodeIfPresent(String.self, forKey: .chargerDetailsEstimateCost) ?? NSLocalizedString(CodingKeys.chargerDetailsEstimateCost.rawValue, comment: .empty)
        self.chargerDetailsKWh = try container.decodeIfPresent(String.self, forKey: .chargerDetailsKWh) ?? NSLocalizedString(CodingKeys.chargerDetailsKWh.rawValue, comment: .empty)
        self.chargerDetailsParkingType = try container.decodeIfPresent(String.self, forKey: .chargerDetailsParkingType) ?? NSLocalizedString(CodingKeys.chargerDetailsParkingType.rawValue, comment: .empty)
        self.chargerDetailsPointsInterestNearby = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPointsInterestNearby) ?? NSLocalizedString(CodingKeys.chargerDetailsPointsInterestNearby.rawValue, comment: .empty)
        self.chargerDetailsPrice = try container.decodeIfPresent(String.self, forKey: .chargerDetailsPrice) ?? NSLocalizedString(CodingKeys.chargerDetailsPrice.rawValue, comment: .empty)
        self.chargerDetailsReportIssue = try container.decodeIfPresent(String.self, forKey: .chargerDetailsReportIssue) ?? NSLocalizedString(CodingKeys.chargerDetailsReportIssue.rawValue, comment: .empty)
        self.chargerDetailsTime = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTime) ?? NSLocalizedString(CodingKeys.chargerDetailsTime.rawValue, comment: .empty)
        self.chargerDetailsVehicles = try container.decodeIfPresent(String.self, forKey: .chargerDetailsVehicles) ?? NSLocalizedString(CodingKeys.chargerDetailsVehicles.rawValue, comment: .empty)
        self.chargerDetailsChargingPointNoInfo = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingPointNoInfo) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingPointNoInfo.rawValue, comment: .empty)
        self.chargerDetailsNoDistance = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoDistance) ?? NSLocalizedString(CodingKeys.chargerDetailsNoDistance.rawValue, comment: .empty)
        self.chargerDetailsNoPlugTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNoPlugTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsNoPlugTariff.rawValue, comment: .empty)
        self.chargerDetailsCustomCharge = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCustomCharge) ?? NSLocalizedString(CodingKeys.chargerDetailsCustomCharge.rawValue, comment: .empty)
        self.chargerDetailsNotifyMeLabel = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNotifyMeLabel) ?? NSLocalizedString(CodingKeys.chargerDetailsNotifyMeLabel.rawValue, comment: .empty)
        self.chargerDetailsChargeXMin = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargeXMin) ?? NSLocalizedString(CodingKeys.chargerDetailsChargeXMin.rawValue, comment: .empty)
        self.chargerDetailsChargeXkWh = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargeXkWh) ?? NSLocalizedString(CodingKeys.chargerDetailsChargeXkWh.rawValue, comment: .empty)
        self.chargerDetailsSpendOnlyXEuros = try container.decodeIfPresent(String.self, forKey: .chargerDetailsSpendOnlyXEuros) ?? NSLocalizedString(CodingKeys.chargerDetailsSpendOnlyXEuros.rawValue, comment: .empty)
        self.chargerDetailsYouAlreadyHaveANotification = try container.decodeIfPresent(String.self, forKey: .chargerDetailsYouAlreadyHaveANotification) ?? NSLocalizedString(CodingKeys.chargerDetailsYouAlreadyHaveANotification.rawValue, comment: .empty)
        self.chargerDetailsChargingScheduling = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingScheduling) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingScheduling.rawValue, comment: .empty)
        self.chargerDetailsDatesCannotBeEqual = try container.decodeIfPresent(String.self, forKey: .chargerDetailsDatesCannotBeEqual) ?? NSLocalizedString(CodingKeys.chargerDetailsDatesCannotBeEqual.rawValue, comment: .empty)
        self.chargerDetailsChargingTimeCannotBeLongerThan = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargingTimeCannotBeLongerThan) ?? NSLocalizedString(CodingKeys.chargerDetailsChargingTimeCannotBeLongerThan.rawValue, comment: .empty)
        self.chargerDetailsStart = try container.decodeIfPresent(String.self, forKey: .chargerDetailsStart) ?? NSLocalizedString(CodingKeys.chargerDetailsStart.rawValue, comment: .empty)
        self.chargerDetailsSchedule = try container.decodeIfPresent(String.self, forKey: .chargerDetailsSchedule) ?? NSLocalizedString(CodingKeys.chargerDetailsSchedule.rawValue, comment: .empty)
        self.chargerDetailsLowerTariffPeriod = try container.decodeIfPresent(String.self, forKey: .chargerDetailsLowerTariffPeriod) ?? NSLocalizedString(CodingKeys.chargerDetailsLowerTariffPeriod.rawValue, comment: .empty)
        self.chargerDetailsGreenCharging = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGreenCharging) ?? NSLocalizedString(CodingKeys.chargerDetailsGreenCharging.rawValue, comment: .empty)
        self.chargerDetailsNetwork = try container.decodeIfPresent(String.self, forKey: .chargerDetailsNetwork) ?? NSLocalizedString(CodingKeys.chargerDetailsNetwork.rawValue, comment: .empty)
        self.chargerDetailsOperator = try container.decodeIfPresent(String.self, forKey: .chargerDetailsOperator) ?? NSLocalizedString(CodingKeys.chargerDetailsOperator.rawValue, comment: .empty)
        self.chargerDetailsChargerIdentifier = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerIdentifier) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerIdentifier.rawValue, comment: .empty)
        self.chargerDetailsChargerManufacturer = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerManufacturer) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerManufacturer.rawValue, comment: .empty)
        self.chargerDetailsChargersModel = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargersModel) ?? NSLocalizedString(CodingKeys.chargerDetailsChargersModel.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart1Alt = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSPart1Alt) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1Alt.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart1 = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSPart1) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart2 = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSPart2) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart2.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSBoldPart = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerOccupiediOSBoldPart) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSBoldPart.rawValue, comment: .empty)
        self.chargerDetailsCemeTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsCemeTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsCemeTariff.rawValue, comment: .empty)
        self.chargerDetailsAlways = try container.decodeIfPresent(String.self, forKey: .chargerDetailsAlways) ?? NSLocalizedString(CodingKeys.chargerDetailsAlways.rawValue, comment: .empty)
        self.chargerDetailsLimited = try container.decodeIfPresent(String.self, forKey: .chargerDetailsLimited) ?? NSLocalizedString(CodingKeys.chargerDetailsLimited.rawValue, comment: .empty)
        self.chargerDetailsWrongBehaviorStation = try container.decodeIfPresent(String.self, forKey: .chargerDetailsWrongBehaviorStation) ?? NSLocalizedString(CodingKeys.chargerDetailsWrongBehaviorStation.rawValue, comment: .empty)
        self.chargerDetailsTariff = try container.decodeIfPresent(String.self, forKey: .chargerDetailsTariff) ?? NSLocalizedString(CodingKeys.chargerDetailsTariff.rawValue, comment: .empty)
        self.chargerDetailsChargerPlugInfoFree = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerPlugInfoFree) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerPlugInfoFree.rawValue, comment: .empty)
        self.chargerDetailsChargerPlugInfoOccupied = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerPlugInfoOccupied) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerPlugInfoOccupied.rawValue, comment: .empty)
        self.chargerDetailsChargerInfoOffline = try container.decodeIfPresent(String.self, forKey: .chargerDetailsChargerInfoOffline) ?? NSLocalizedString(CodingKeys.chargerDetailsChargerInfoOffline.rawValue, comment: .empty)
        self.chargerPointFullDetailsThanksForTheImageMessage = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsThanksForTheImageMessage) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsThanksForTheImageMessage.rawValue, comment: .empty)
        self.chargerPointFullDetailsStopDateShouldBeAfterStartDate = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsStopDateShouldBeAfterStartDate) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsStopDateShouldBeAfterStartDate.rawValue, comment: .empty)
        self.chargerPointFullDetailsChargingTimeMinimumDuration = try container.decodeIfPresent(String.self, forKey: .chargerPointFullDetailsChargingTimeMinimumDuration) ?? NSLocalizedString(CodingKeys.chargerPointFullDetailsChargingTimeMinimumDuration.rawValue, comment: .empty)
        self.chargerDetailsGoToPaymentMethods = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGoToPaymentMethods) ?? NSLocalizedString(CodingKeys.chargerDetailsGoToPaymentMethods.rawValue, comment: .empty)
        self.chargerDetailsGoToBillingProfile = try container.decodeIfPresent(String.self, forKey: .chargerDetailsGoToBillingProfile) ?? NSLocalizedString(CodingKeys.chargerDetailsGoToBillingProfile.rawValue, comment: .empty)
        self.chargerDetailsInfoEstimatedPrice30min = try container.decodeIfPresent(String.self, forKey: .chargerDetailsInfoEstimatedPrice30min) ?? NSLocalizedString(CodingKeys.chargerDetailsInfoEstimatedPrice30min.rawValue, comment: .empty)
        // MARK: - PLUG STATUS KEYS
        self.plugStatusAvailable = try container.decodeIfPresent(String.self, forKey: .plugStatusAvailable) ?? NSLocalizedString(CodingKeys.plugStatusAvailable.rawValue, comment: .empty)
        self.plugStatusBlocked = try container.decodeIfPresent(String.self, forKey: .plugStatusBlocked) ?? NSLocalizedString(CodingKeys.plugStatusBlocked.rawValue, comment: .empty)
        self.plugStatusCharging = try container.decodeIfPresent(String.self, forKey: .plugStatusCharging) ?? NSLocalizedString(CodingKeys.plugStatusCharging.rawValue, comment: .empty)
        self.plugStatusInoperative = try container.decodeIfPresent(String.self, forKey: .plugStatusInoperative) ?? NSLocalizedString(CodingKeys.plugStatusInoperative.rawValue, comment: .empty)
        self.plugStatusOutOfOrder = try container.decodeIfPresent(String.self, forKey: .plugStatusOutOfOrder) ?? NSLocalizedString(CodingKeys.plugStatusOutOfOrder.rawValue, comment: .empty)
        self.plugStatusPlanned = try container.decodeIfPresent(String.self, forKey: .plugStatusPlanned) ?? NSLocalizedString(CodingKeys.plugStatusPlanned.rawValue, comment: .empty)
        self.plugStatusRemoved = try container.decodeIfPresent(String.self, forKey: .plugStatusRemoved) ?? NSLocalizedString(CodingKeys.plugStatusRemoved.rawValue, comment: .empty)
        self.plugStatusBooked = try container.decodeIfPresent(String.self, forKey: .plugStatusBooked) ?? NSLocalizedString(CodingKeys.plugStatusBooked.rawValue, comment: .empty)
        self.plugStatusUnknown = try container.decodeIfPresent(String.self, forKey: .plugStatusUnknown) ?? NSLocalizedString(CodingKeys.plugStatusUnknown.rawValue, comment: .empty)
        self.plugStatusMobieOutOfOrderMessage = try container.decodeIfPresent(String.self, forKey: .plugStatusMobieOutOfOrderMessage) ?? NSLocalizedString(CodingKeys.plugStatusMobieOutOfOrderMessage.rawValue, comment: .empty)
        // MARK: - ESTIMATED COST PAGE KEYS
        self.estimatedCostInfoTeslaEViOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoTeslaEViOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoTeslaEViOS.rawValue, comment: .empty)
        self.estimatedCostInfoEVIOEviOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoEVIOEviOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoEVIOEviOS.rawValue, comment: .empty)
        self.estimatedCostMobieNoEviOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostMobieNoEviOS) ?? NSLocalizedString(CodingKeys.estimatedCostMobieNoEviOS.rawValue, comment: .empty)
        self.estimatedCostInfoMobiePart1iOs = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoMobiePart1iOs) ?? NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart1iOs.rawValue, comment: .empty)
        self.estimatedCostInfoMobiePart2iOs = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoMobiePart2iOs) ?? NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart2iOs.rawValue, comment: .empty)
        self.estimatedCostTextInfoTeslaiOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostTextInfoTeslaiOS) ?? NSLocalizedString(CodingKeys.estimatedCostTextInfoTeslaiOS.rawValue, comment: .empty)
        self.estimatedCostInfoTeslaWithEViOS = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoTeslaWithEViOS) ?? NSLocalizedString(CodingKeys.estimatedCostInfoTeslaWithEViOS.rawValue, comment: .empty)
        self.estimatedCostEVIOHours = try container.decodeIfPresent(String.self, forKey: .estimatedCostEVIOHours) ?? NSLocalizedString(CodingKeys.estimatedCostEVIOHours.rawValue, comment: .empty)
        self.estimatedCostEVIOMinutes = try container.decodeIfPresent(String.self, forKey: .estimatedCostEVIOMinutes) ?? NSLocalizedString(CodingKeys.estimatedCostEVIOMinutes.rawValue, comment: .empty)
        self.estimatedCostSelectedPlug = try container.decodeIfPresent(String.self, forKey: .estimatedCostSelectedPlug) ?? NSLocalizedString(CodingKeys.estimatedCostSelectedPlug.rawValue, comment: .empty)
        self.estimatedCostInfoWalletPrice = try container.decodeIfPresent(String.self, forKey: .estimatedCostInfoWalletPrice) ?? NSLocalizedString(CodingKeys.estimatedCostInfoWalletPrice.rawValue, comment: .empty)
        self.estimatedCostEvioActivation = try container.decodeIfPresent(String.self, forKey: .estimatedCostEvioActivation) ?? NSLocalizedString(CodingKeys.estimatedCostEvioActivation.rawValue, comment: .empty)
        self.estimatedCostEvioActivationValue = try container.decodeIfPresent(String.self, forKey: .estimatedCostEvioActivationValue) ?? NSLocalizedString(CodingKeys.estimatedCostEvioActivationValue.rawValue, comment: .empty)
        self.estimatedCostTextInfoEvio = try container.decodeIfPresent(String.self, forKey: .estimatedCostTextInfoEvio) ?? NSLocalizedString(CodingKeys.estimatedCostTextInfoEvio.rawValue, comment: .empty)
        self.estimatedCostOpcTariff = try container.decodeIfPresent(String.self, forKey: .estimatedCostOpcTariff) ?? NSLocalizedString(CodingKeys.estimatedCostOpcTariff.rawValue, comment: .empty)
        self.estimatedCostCemeTariff = try container.decodeIfPresent(String.self, forKey: .estimatedCostCemeTariff) ?? NSLocalizedString(CodingKeys.estimatedCostCemeTariff.rawValue, comment: .empty)
        self.estimatedCostActivation = try container.decodeIfPresent(String.self, forKey: .estimatedCostActivation) ?? NSLocalizedString(CodingKeys.estimatedCostActivation.rawValue, comment: .empty)
        self.estimatedCostPerMinute = try container.decodeIfPresent(String.self, forKey: .estimatedCostPerMinute) ?? NSLocalizedString(CodingKeys.estimatedCostPerMinute.rawValue, comment: .empty)
        self.estimatedCostPerKwH = try container.decodeIfPresent(String.self, forKey: .estimatedCostPerKwH) ?? NSLocalizedString(CodingKeys.estimatedCostPerKwH.rawValue, comment: .empty)
        self.estimatedCostFees = try container.decodeIfPresent(String.self, forKey: .estimatedCostFees) ?? NSLocalizedString(CodingKeys.estimatedCostFees.rawValue, comment: .empty)
        self.estimatedCostIec = try container.decodeIfPresent(String.self, forKey: .estimatedCostIec) ?? NSLocalizedString(CodingKeys.estimatedCostIec.rawValue, comment: .empty)
        self.estimatedCostTar = try container.decodeIfPresent(String.self, forKey: .estimatedCostTar) ?? NSLocalizedString(CodingKeys.estimatedCostTar.rawValue, comment: .empty)
        self.estimatedCostVat = try container.decodeIfPresent(String.self, forKey: .estimatedCostVat) ?? NSLocalizedString(CodingKeys.estimatedCostVat.rawValue, comment: .empty)
        self.estimatedCostCeme = try container.decodeIfPresent(String.self, forKey: .estimatedCostCeme) ?? NSLocalizedString(CodingKeys.estimatedCostCeme.rawValue, comment: .empty)
        self.estimatedCostOpc = try container.decodeIfPresent(String.self, forKey: .estimatedCostOpc) ?? NSLocalizedString(CodingKeys.estimatedCostOpc.rawValue, comment: .empty)
        self.estimatedCostTotal = try container.decodeIfPresent(String.self, forKey: .estimatedCostTotal) ?? NSLocalizedString(CodingKeys.estimatedCostTotal.rawValue, comment: .empty)
        self.estimatedCostChargingTime = try container.decodeIfPresent(String.self, forKey: .estimatedCostChargingTime) ?? NSLocalizedString(CodingKeys.estimatedCostChargingTime.rawValue, comment: .empty)
        self.estimatedCostTotalPower = try container.decodeIfPresent(String.self, forKey: .estimatedCostTotalPower) ?? NSLocalizedString(CodingKeys.estimatedCostTotalPower.rawValue, comment: .empty)
        self.estimatedCostParking = try container.decodeIfPresent(String.self, forKey: .estimatedCostParking) ?? NSLocalizedString(CodingKeys.estimatedCostParking.rawValue, comment: .empty)
        self.estimatedCostCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostCharging) ?? NSLocalizedString(CodingKeys.estimatedCostCharging.rawValue, comment: .empty)
        self.estimatedCostBooking = try container.decodeIfPresent(String.self, forKey: .estimatedCostBooking) ?? NSLocalizedString(CodingKeys.estimatedCostBooking.rawValue, comment: .empty)
        self.estimatedCostParkingDuringCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostParkingDuringCharging) ?? NSLocalizedString(CodingKeys.estimatedCostParkingDuringCharging.rawValue, comment: .empty)
        self.estimatedCostParkingAfterCharging = try container.decodeIfPresent(String.self, forKey: .estimatedCostParkingAfterCharging) ?? NSLocalizedString(CodingKeys.estimatedCostParkingAfterCharging.rawValue, comment: .empty)
        // MARK: - AVAILABILITY KEYS
        self.availabilityTo = try container.decodeIfPresent(String.self, forKey: .availabilityTo) ?? NSLocalizedString(CodingKeys.availabilityTo.rawValue, comment: .empty)
        // MARK: - CONTRACTS PAGE KEYS
        self.contractsTitle = try container.decodeIfPresent(String.self, forKey: .contractsTitle) ?? NSLocalizedString(CodingKeys.contractsTitle.rawValue, comment: .empty)
        self.contractsRoamingNotActive = try container.decodeIfPresent(String.self, forKey: .contractsRoamingNotActive) ?? NSLocalizedString(CodingKeys.contractsRoamingNotActive.rawValue, comment: .empty)
        self.contractsMyContracts = try container.decodeIfPresent(String.self, forKey: .contractsMyContracts) ?? NSLocalizedString(CodingKeys.contractsMyContracts.rawValue, comment: .empty)
        self.contractsOtherContracts = try container.decodeIfPresent(String.self, forKey: .contractsOtherContracts) ?? NSLocalizedString(CodingKeys.contractsOtherContracts.rawValue, comment: .empty)
        self.contractsSelectContract = try container.decodeIfPresent(String.self, forKey: .contractsSelectContract) ?? NSLocalizedString(CodingKeys.contractsSelectContract.rawValue, comment: .empty)
        self.contractsContractNoValidForRoaming = try container.decodeIfPresent(String.self, forKey: .contractsContractNoValidForRoaming) ?? NSLocalizedString(CodingKeys.contractsContractNoValidForRoaming.rawValue, comment: .empty)
        self.contractsContractNotValidForMobie = try container.decodeIfPresent(String.self, forKey: .contractsContractNotValidForMobie) ?? NSLocalizedString(CodingKeys.contractsContractNotValidForMobie.rawValue, comment: .empty)
        self.contractsContractNoValidForMobieButCanBeUsedForAdHoc = try container.decodeIfPresent(String.self, forKey: .contractsContractNoValidForMobieButCanBeUsedForAdHoc) ?? NSLocalizedString(CodingKeys.contractsContractNoValidForMobieButCanBeUsedForAdHoc.rawValue, comment: .empty)
        self.contractsContractNoActiveForEv = try container.decodeIfPresent(String.self, forKey: .contractsContractNoActiveForEv) ?? NSLocalizedString(CodingKeys.contractsContractNoActiveForEv.rawValue, comment: .empty)
        self.contractsNoOtherContracts = try container.decodeIfPresent(String.self, forKey: .contractsNoOtherContracts) ?? NSLocalizedString(CodingKeys.contractsNoOtherContracts.rawValue, comment: .empty)
        self.contractsNoContracts = try container.decodeIfPresent(String.self, forKey: .contractsNoContracts) ?? NSLocalizedString(CodingKeys.contractsNoContracts.rawValue, comment: .empty)
        self.contractsNoAccessForEvioNetwork = try container.decodeIfPresent(String.self, forKey: .contractsNoAccessForEvioNetwork) ?? NSLocalizedString(CodingKeys.contractsNoAccessForEvioNetwork.rawValue, comment: .empty)
        self.contractsVirtualCard = try container.decodeIfPresent(String.self, forKey: .contractsVirtualCard) ?? NSLocalizedString(CodingKeys.contractsVirtualCard.rawValue, comment: .empty)
        self.contractsVirtualAndPhysicalCard = try container.decodeIfPresent(String.self, forKey: .contractsVirtualAndPhysicalCard) ?? NSLocalizedString(CodingKeys.contractsVirtualAndPhysicalCard.rawValue, comment: .empty)
        self.contractsChargeVehicleOnNetwork = try container.decodeIfPresent(String.self, forKey: .contractsChargeVehicleOnNetwork) ?? NSLocalizedString(CodingKeys.contractsChargeVehicleOnNetwork.rawValue, comment: .empty)
        self.contractsAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsAccessToNetwork.rawValue, comment: .empty)
        self.contractsTariffInfo = try container.decodeIfPresent(String.self, forKey: .contractsTariffInfo) ?? NSLocalizedString(CodingKeys.contractsTariffInfo.rawValue, comment: .empty)
        self.contractsTariffInfoEvio = try container.decodeIfPresent(String.self, forKey: .contractsTariffInfoEvio) ?? NSLocalizedString(CodingKeys.contractsTariffInfoEvio.rawValue, comment: .empty)
        self.contractsActivateCardButton = try container.decodeIfPresent(String.self, forKey: .contractsActivateCardButton) ?? NSLocalizedString(CodingKeys.contractsActivateCardButton.rawValue, comment: .empty)
        self.contractsJoinButton = try container.decodeIfPresent(String.self, forKey: .contractsJoinButton) ?? NSLocalizedString(CodingKeys.contractsJoinButton.rawValue, comment: .empty)
        self.contractsNoAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsNoAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsNoAccessToNetwork.rawValue, comment: .empty)
        self.contractsAlreadyRequestedAccessToNetwork = try container.decodeIfPresent(String.self, forKey: .contractsAlreadyRequestedAccessToNetwork) ?? NSLocalizedString(CodingKeys.contractsAlreadyRequestedAccessToNetwork.rawValue, comment: .empty)
        self.contractsAdHocAlertPart1 = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertPart1) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertPart1.rawValue, comment: .empty)
        self.contractsAdHocAlertPart2 = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertPart2) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertPart2.rawValue, comment: .empty)
        self.contractsAdHocAlertBoldPart = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertBoldPart) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertBoldPart.rawValue, comment: .empty)
        self.contractsAdHocAlertNextButton = try container.decodeIfPresent(String.self, forKey: .contractsAdHocAlertNextButton) ?? NSLocalizedString(CodingKeys.contractsAdHocAlertNextButton.rawValue, comment: .empty)
        self.contractsMessageInfoActivationOkGv = try container.decodeIfPresent(String.self, forKey: .contractsMessageInfoActivationOkGv) ?? NSLocalizedString(CodingKeys.contractsMessageInfoActivationOkGv.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditions = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditions) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditionsConditions1 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditionsConditions1) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions1.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditionsConditions2 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditionsConditions2) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions2.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditions2 = try container.decodeIfPresent(String.self, forKey: .contractsMobieTermAndCondGeneralConditions2) ?? NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions2.rawValue, comment: .empty)
        self.contractsMobieGeneralConditionsRequired = try container.decodeIfPresent(String.self, forKey: .contractsMobieGeneralConditionsRequired) ?? NSLocalizedString(CodingKeys.contractsMobieGeneralConditionsRequired.rawValue, comment: .empty)
        self.contractsClientIdentification = try container.decodeIfPresent(String.self, forKey: .contractsClientIdentification) ?? NSLocalizedString(CodingKeys.contractsClientIdentification.rawValue, comment: .empty)
        self.contractsCardActivatedSuccessfully = try container.decodeIfPresent(String.self, forKey: .contractsCardActivatedSuccessfully) ?? NSLocalizedString(CodingKeys.contractsCardActivatedSuccessfully.rawValue, comment: .empty)
        self.contractsPaymentMethod = try container.decodeIfPresent(String.self, forKey: .contractsPaymentMethod) ?? NSLocalizedString(CodingKeys.contractsPaymentMethod.rawValue, comment: .empty)
        self.contractsMessageInfoActivationMobie = try container.decodeIfPresent(String.self, forKey: .contractsMessageInfoActivationMobie) ?? NSLocalizedString(CodingKeys.contractsMessageInfoActivationMobie.rawValue, comment: .empty)
        // MARK: - EVS PAGE KEYS
        self.evsSelectEvTitle = try container.decodeIfPresent(String.self, forKey: .evsSelectEvTitle) ?? NSLocalizedString(CodingKeys.evsSelectEvTitle.rawValue, comment: .empty)
        self.evsMyEvs = try container.decodeIfPresent(String.self, forKey: .evsMyEvs) ?? NSLocalizedString(CodingKeys.evsMyEvs.rawValue, comment: .empty)
        self.evsOtherEvs = try container.decodeIfPresent(String.self, forKey: .evsOtherEvs) ?? NSLocalizedString(CodingKeys.evsOtherEvs.rawValue, comment: .empty)
        self.evsAddVehicle = try container.decodeIfPresent(String.self, forKey: .evsAddVehicle) ?? NSLocalizedString(CodingKeys.evsAddVehicle.rawValue, comment: .empty)
        self.evsNoOtherEvsTitle = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsTitle) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsTitle.rawValue, comment: .empty)
        self.evsNoOtherEvsSubTitle = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsSubTitle) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsSubTitle.rawValue, comment: .empty)
        self.evsNoOtherEvsSubtitleNoLogin = try container.decodeIfPresent(String.self, forKey: .evsNoOtherEvsSubtitleNoLogin) ?? NSLocalizedString(CodingKeys.evsNoOtherEvsSubtitleNoLogin.rawValue, comment: .empty)
        self.evsNewEv = try container.decodeIfPresent(String.self, forKey: .evsNewEv) ?? NSLocalizedString(CodingKeys.evsNewEv.rawValue, comment: .empty)
        self.evsNewEvInfo = try container.decodeIfPresent(String.self, forKey: .evsNewEvInfo) ?? NSLocalizedString(CodingKeys.evsNewEvInfo.rawValue, comment: .empty)
        self.evsBrand = try container.decodeIfPresent(String.self, forKey: .evsBrand) ?? NSLocalizedString(CodingKeys.evsBrand.rawValue, comment: .empty)
        self.evsModel = try container.decodeIfPresent(String.self, forKey: .evsModel) ?? NSLocalizedString(CodingKeys.evsModel.rawValue, comment: .empty)
        self.evsVersion = try container.decodeIfPresent(String.self, forKey: .evsVersion) ?? NSLocalizedString(CodingKeys.evsVersion.rawValue, comment: .empty)
        self.evsChargerPower = try container.decodeIfPresent(String.self, forKey: .evsChargerPower) ?? NSLocalizedString(CodingKeys.evsChargerPower.rawValue, comment: .empty)
        self.evsRange = try container.decodeIfPresent(String.self, forKey: .evsRange) ?? NSLocalizedString(CodingKeys.evsRange.rawValue, comment: .empty)
        self.evsBatteryCapacity = try container.decodeIfPresent(String.self, forKey: .evsBatteryCapacity) ?? NSLocalizedString(CodingKeys.evsBatteryCapacity.rawValue, comment: .empty)
        self.evsChargingTime = try container.decodeIfPresent(String.self, forKey: .evsChargingTime) ?? NSLocalizedString(CodingKeys.evsChargingTime.rawValue, comment: .empty)
        self.evsInternalChargingPower = try container.decodeIfPresent(String.self, forKey: .evsInternalChargingPower) ?? NSLocalizedString(CodingKeys.evsInternalChargingPower.rawValue, comment: .empty)
        self.evsFastChargingPower = try container.decodeIfPresent(String.self, forKey: .evsFastChargingPower) ?? NSLocalizedString(CodingKeys.evsFastChargingPower.rawValue, comment: .empty)
        self.evsFastChargingTime = try container.decodeIfPresent(String.self, forKey: .evsFastChargingTime) ?? NSLocalizedString(CodingKeys.evsFastChargingTime.rawValue, comment: .empty)
        self.evsVehiclePlugs = try container.decodeIfPresent(String.self, forKey: .evsVehiclePlugs) ?? NSLocalizedString(CodingKeys.evsVehiclePlugs.rawValue, comment: .empty)
        self.evsCharging = try container.decodeIfPresent(String.self, forKey: .evsCharging) ?? NSLocalizedString(CodingKeys.evsCharging.rawValue, comment: .empty)
        self.evsNotCharging = try container.decodeIfPresent(String.self, forKey: .evsNotCharging) ?? NSLocalizedString(CodingKeys.evsNotCharging.rawValue, comment: .empty)
        self.evsLeaveGroupTitle = try container.decodeIfPresent(String.self, forKey: .evsLeaveGroupTitle) ?? NSLocalizedString(CodingKeys.evsLeaveGroupTitle.rawValue, comment: .empty)
        self.evsLeaveGroupMessage = try container.decodeIfPresent(String.self, forKey: .evsLeaveGroupMessage) ?? NSLocalizedString(CodingKeys.evsLeaveGroupMessage.rawValue, comment: .empty)
        self.evsDrivers = try container.decodeIfPresent(String.self, forKey: .evsDrivers) ?? NSLocalizedString(CodingKeys.evsDrivers.rawValue, comment: .empty)
        self.evsCurrentPlafond = try container.decodeIfPresent(String.self, forKey: .evsCurrentPlafond) ?? NSLocalizedString(CodingKeys.evsCurrentPlafond.rawValue, comment: .empty)
        self.evsMonthlyPlafond = try container.decodeIfPresent(String.self, forKey: .evsMonthlyPlafond) ?? NSLocalizedString(CodingKeys.evsMonthlyPlafond.rawValue, comment: .empty)
        self.evsUsedPlafond = try container.decodeIfPresent(String.self, forKey: .evsUsedPlafond) ?? NSLocalizedString(CodingKeys.evsUsedPlafond.rawValue, comment: .empty)
        self.evsPlafond = NSLocalizedString(CodingKeys.evsPlafond.rawValue, comment: .empty)
        self.evsCompany = try container.decodeIfPresent(String.self, forKey: .evsCompany) ?? NSLocalizedString(CodingKeys.evsCompany.rawValue, comment: .empty)
        self.evsPlafondMovements = try container.decodeIfPresent(String.self, forKey: .evsPlafondMovements) ?? NSLocalizedString(CodingKeys.evsPlafondMovements.rawValue, comment: .empty)
        self.evsNoPlafondMovements = try container.decodeIfPresent(String.self, forKey: .evsNoPlafondMovements) ?? NSLocalizedString(CodingKeys.evsNoPlafondMovements.rawValue, comment: .empty)
        self.evsDuration = try container.decodeIfPresent(String.self, forKey: .evsDuration) ?? NSLocalizedString(CodingKeys.evsDuration.rawValue, comment: .empty)
        self.evsMovement = try container.decodeIfPresent(String.self, forKey: .evsMovement) ?? NSLocalizedString(CodingKeys.evsMovement.rawValue, comment: .empty)
        self.evsNetwork = try container.decodeIfPresent(String.self, forKey: .evsNetwork) ?? NSLocalizedString(CodingKeys.evsNetwork.rawValue, comment: .empty)
        // MARK: - VALIDATION MESSAGE PAGE KEYS
        self.validationMessageProceedNowBt = try container.decodeIfPresent(String.self, forKey: .validationMessageProceedNowBt) ?? NSLocalizedString(CodingKeys.validationMessageProceedNowBt.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2iOS = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2iOS) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2iOS.rawValue, comment: .empty)
        self.validationMessageMessageInfoActivationOkGv = try container.decodeIfPresent(String.self, forKey: .validationMessageMessageInfoActivationOkGv) ?? NSLocalizedString(CodingKeys.validationMessageMessageInfoActivationOkGv.rawValue, comment: .empty)
        self.validationMessageNotHaveContractRoamingNote = try container.decodeIfPresent(String.self, forKey: .validationMessageNotHaveContractRoamingNote) ?? NSLocalizedString(CodingKeys.validationMessageNotHaveContractRoamingNote.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNew = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNew) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNew.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNote = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNote) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNote.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteUnderline = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteUnderline) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteUnderline.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteGenericUnderline = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocFooterNoteGenericUnderline) ?? NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGenericUnderline.rawValue, comment: .empty)
        self.validationMessageAdhocInfoGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2GenericAndroid = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2GenericAndroid) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericAndroid.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2GenericBoldAndroid = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfo2GenericBoldAndroid) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericBoldAndroid.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNewGeneric = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNewGeneric) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNewV2Generic = try container.decodeIfPresent(String.self, forKey: .validationMessageAdhocInfoNewV2Generic) ?? NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewV2Generic.rawValue, comment: .empty)
        // MARK: - REPORT MESSAGE PAGE KEYS
        self.reportIssueTitle = try container.decodeIfPresent(String.self, forKey: .reportIssueTitle) ?? NSLocalizedString(CodingKeys.reportIssueTitle.rawValue, comment: .empty)
        self.reportIssueBtSend = try container.decodeIfPresent(String.self, forKey: .reportIssueBtSend) ?? NSLocalizedString(CodingKeys.reportIssueBtSend.rawValue, comment: .empty)
        self.reportIssueSubtitle = try container.decodeIfPresent(String.self, forKey: .reportIssueSubtitle) ?? NSLocalizedString(CodingKeys.reportIssueSubtitle.rawValue, comment: .empty)
        // MARK: - CREATE ACCOUNT PAGE KEYS
        self.createAccountSignIn = try container.decodeIfPresent(String.self, forKey: .createAccountSignIn) ?? NSLocalizedString(CodingKeys.createAccountSignIn.rawValue, comment: .empty)
        self.createAccountHaveAccount = try container.decodeIfPresent(String.self, forKey: .createAccountHaveAccount) ?? NSLocalizedString(CodingKeys.createAccountHaveAccount.rawValue, comment: .empty)
        self.createAccountCreateAccount = try container.decodeIfPresent(String.self, forKey: .createAccountCreateAccount) ?? NSLocalizedString(CodingKeys.createAccountCreateAccount.rawValue, comment: .empty)
        // MARK: - SIGNUP PAGE KEYS
        self.signupTitle = try container.decodeIfPresent(String.self, forKey: .signupTitle) ?? NSLocalizedString(CodingKeys.signupTitle.rawValue, comment: .empty)
        self.signUpPasswordDoesNotMeetRequirements = try container.decodeIfPresent(String.self, forKey: .signUpPasswordDoesNotMeetRequirements) ?? NSLocalizedString(CodingKeys.signUpPasswordDoesNotMeetRequirements.rawValue, comment: .empty)
        self.signUpAtLeastNumberOfCharacters = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastNumberOfCharacters) ?? NSLocalizedString(CodingKeys.signUpAtLeastNumberOfCharacters.rawValue, comment: .empty)
        self.signUpAtLeastLowerCase = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastLowerCase) ?? NSLocalizedString(CodingKeys.signUpAtLeastLowerCase.rawValue, comment: .empty)
        self.signUpAtLeastUpperCase = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastUpperCase) ?? NSLocalizedString(CodingKeys.signUpAtLeastUpperCase.rawValue, comment: .empty)
        self.signUpAtLeastNumber = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastNumber) ?? NSLocalizedString(CodingKeys.signUpAtLeastNumber.rawValue, comment: .empty)
        self.signUpAtLeastSpecialCharacter = try container.decodeIfPresent(String.self, forKey: .signUpAtLeastSpecialCharacter) ?? NSLocalizedString(CodingKeys.signUpAtLeastSpecialCharacter.rawValue, comment: .empty)
        self.signUpTermsAndConditionsMustBeAccepted = try container.decodeIfPresent(String.self, forKey: .signUpTermsAndConditionsMustBeAccepted) ?? NSLocalizedString(CodingKeys.signUpTermsAndConditionsMustBeAccepted.rawValue, comment: .empty)
        self.signUpPasswordDoesNotContainInvalidSpecialCharacters = try container.decodeIfPresent(String.self, forKey: .signUpPasswordDoesNotContainInvalidSpecialCharacters) ?? NSLocalizedString(CodingKeys.signUpPasswordDoesNotContainInvalidSpecialCharacters.rawValue, comment: .empty)
        self.signUpCreateApassword = try container.decodeIfPresent(String.self, forKey: .signUpCreateApassword) ?? NSLocalizedString(CodingKeys.signUpCreateApassword.rawValue, comment: .empty)
        self.signUpEnterAPassword = try container.decodeIfPresent(String.self, forKey: .signUpEnterAPassword) ?? NSLocalizedString(CodingKeys.signUpEnterAPassword.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTerms = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTerms) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTerms.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTermsTermCond = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTermsTermCond) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsTermCond.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTermsPriPol = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondIAgreeTermsPriPol) ?? NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsPriPol.rawValue, comment: .empty)
        self.signUpTermAndCondDetailsPassword = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondDetailsPassword) ?? NSLocalizedString(CodingKeys.signUpTermAndCondDetailsPassword.rawValue, comment: .empty)
        self.signUpTermAndCondLicenseMarketing = try container.decodeIfPresent(String.self, forKey: .signUpTermAndCondLicenseMarketing) ?? NSLocalizedString(CodingKeys.signUpTermAndCondLicenseMarketing.rawValue, comment: .empty)
        self.signUpLicenseServices = try container.decodeIfPresent(String.self, forKey: .signUpLicenseServices) ?? NSLocalizedString(CodingKeys.signUpLicenseServices.rawValue, comment: .empty)
        self.signUpLicenseProducts = try container.decodeIfPresent(String.self, forKey: .signUpLicenseProducts) ?? NSLocalizedString(CodingKeys.signUpLicenseProducts.rawValue, comment: .empty)
        self.signUpGoChargeSuccess = try container.decodeIfPresent(String.self, forKey: .signUpGoChargeSuccess) ?? NSLocalizedString(CodingKeys.signUpGoChargeSuccess.rawValue, comment: .empty)
        self.signUpAcpCardNumber = try container.decodeIfPresent(String.self, forKey: .signUpAcpCardNumber) ?? NSLocalizedString(CodingKeys.signUpAcpCardNumber.rawValue, comment: .empty)
        self.signUpAcpMemberNumber = try container.decodeIfPresent(String.self, forKey: .signUpAcpMemberNumber) ?? NSLocalizedString(CodingKeys.signUpAcpMemberNumber.rawValue, comment: .empty)
        // MARK: - LOGIN PAGE KEYS
        self.loginButtonTitle = try container.decodeIfPresent(String.self, forKey: .loginButtonTitle) ?? NSLocalizedString(CodingKeys.loginButtonTitle.rawValue, comment: .empty)
        self.loginForgotPassword = try container.decodeIfPresent(String.self, forKey: .loginForgotPassword) ?? NSLocalizedString(CodingKeys.loginForgotPassword.rawValue, comment: .empty)
        self.loginForgotPasswordBoldPart = try container.decodeIfPresent(String.self, forKey: .loginForgotPasswordBoldPart) ?? NSLocalizedString(CodingKeys.loginForgotPasswordBoldPart.rawValue, comment: .empty)
        self.loginPhoneNumberRequired = try container.decodeIfPresent(String.self, forKey: .loginPhoneNumberRequired) ?? NSLocalizedString(CodingKeys.loginPhoneNumberRequired.rawValue, comment: .empty)
        self.loginOpenEmailApp = try container.decodeIfPresent(String.self, forKey: .loginOpenEmailApp) ?? NSLocalizedString(CodingKeys.loginOpenEmailApp.rawValue, comment: .empty)
        // MARK: - ACTIVATION PAGE KEYS
        self.activationTitle = try container.decodeIfPresent(String.self, forKey: .activationTitle) ?? NSLocalizedString(CodingKeys.activationTitle.rawValue, comment: .empty)
        self.activationSubTitle = try container.decodeIfPresent(String.self, forKey: .activationSubTitle) ?? NSLocalizedString(CodingKeys.activationSubTitle.rawValue, comment: .empty)
        self.activationSubTitleEmail = try container.decodeIfPresent(String.self, forKey: .activationSubTitleEmail) ?? NSLocalizedString(CodingKeys.activationSubTitleEmail.rawValue, comment: .empty)
        self.activationVerify = try container.decodeIfPresent(String.self, forKey: .activationVerify) ?? NSLocalizedString(CodingKeys.activationVerify.rawValue, comment: .empty)
        self.activationResendCode = try container.decodeIfPresent(String.self, forKey: .activationResendCode) ?? NSLocalizedString(CodingKeys.activationResendCode.rawValue, comment: .empty)
        self.activationResendCodeBoldPart = try container.decodeIfPresent(String.self, forKey: .activationResendCodeBoldPart) ?? NSLocalizedString(CodingKeys.activationResendCodeBoldPart.rawValue, comment: .empty)
        // MARK: - RECOVER PASSWORD PAGE KEYS
        self.recoverPasswordTitle = try container.decodeIfPresent(String.self, forKey: .recoverPasswordTitle) ?? NSLocalizedString(CodingKeys.recoverPasswordTitle.rawValue, comment: .empty)
        self.recoverPasswordSubTitleEmail = try container.decodeIfPresent(String.self, forKey: .recoverPasswordSubTitleEmail) ?? NSLocalizedString(CodingKeys.recoverPasswordSubTitleEmail.rawValue, comment: .empty)
        self.recoverPasswordSubTitlePhone = try container.decodeIfPresent(String.self, forKey: .recoverPasswordSubTitlePhone) ?? NSLocalizedString(CodingKeys.recoverPasswordSubTitlePhone.rawValue, comment: .empty)
        // MARK: - MY ACCOUNT PAGE KEYS
        self.myAccountTitle = try container.decodeIfPresent(String.self, forKey: .myAccountTitle) ?? NSLocalizedString(CodingKeys.myAccountTitle.rawValue, comment: .empty)
        self.myAccountHome = try container.decodeIfPresent(String.self, forKey: .myAccountHome) ?? NSLocalizedString(CodingKeys.myAccountHome.rawValue, comment: .empty)
        self.myAccountWork = try container.decodeIfPresent(String.self, forKey: .myAccountWork) ?? NSLocalizedString(CodingKeys.myAccountWork.rawValue, comment: .empty)
        self.myAccountNoHome = try container.decodeIfPresent(String.self, forKey: .myAccountNoHome) ?? NSLocalizedString(CodingKeys.myAccountNoHome.rawValue, comment: .empty)
        self.myAccountNoWork = try container.decodeIfPresent(String.self, forKey: .myAccountNoWork) ?? NSLocalizedString(CodingKeys.myAccountNoWork.rawValue, comment: .empty)
        self.myAccountQrCodeTitle = try container.decodeIfPresent(String.self, forKey: .myAccountQrCodeTitle) ?? NSLocalizedString(CodingKeys.myAccountQrCodeTitle.rawValue, comment: .empty)
        self.myAccountQrCodeSubtitle = try container.decodeIfPresent(String.self, forKey: .myAccountQrCodeSubtitle) ?? NSLocalizedString(CodingKeys.myAccountQrCodeSubtitle.rawValue, comment: .empty)
        self.myAccountContracts = try container.decodeIfPresent(String.self, forKey: .myAccountContracts) ?? NSLocalizedString(CodingKeys.myAccountContracts.rawValue, comment: .empty)
        self.myAccountCemeTarifs = try container.decodeIfPresent(String.self, forKey: .myAccountCemeTarifs) ?? NSLocalizedString(CodingKeys.myAccountCemeTarifs.rawValue, comment: .empty)
        self.myAccountNotifications = try container.decodeIfPresent(String.self, forKey: .myAccountNotifications) ?? NSLocalizedString(CodingKeys.myAccountNotifications.rawValue, comment: .empty)
        self.myAccountPrivacy = try container.decodeIfPresent(String.self, forKey: .myAccountPrivacy) ?? NSLocalizedString(CodingKeys.myAccountPrivacy.rawValue, comment: .empty)
        self.myAccountTermsAndConditions = try container.decodeIfPresent(String.self, forKey: .myAccountTermsAndConditions) ?? NSLocalizedString(CodingKeys.myAccountTermsAndConditions.rawValue, comment: .empty)
        self.myAccountLogout = try container.decodeIfPresent(String.self, forKey: .myAccountLogout) ?? NSLocalizedString(CodingKeys.myAccountLogout.rawValue, comment: .empty)
        self.myAccountLogin = try container.decodeIfPresent(String.self, forKey: .myAccountLogin) ?? NSLocalizedString(CodingKeys.myAccountLogin.rawValue, comment: .empty)
        // MARK: - EDIT ACCOUNT PAGE KEYS
        self.editAccountTitle = try container.decodeIfPresent(String.self, forKey: .editAccountTitle) ?? NSLocalizedString(CodingKeys.editAccountTitle.rawValue, comment: .empty)
        self.editAccountChangeEmail = try container.decodeIfPresent(String.self, forKey: .editAccountChangeEmail) ?? NSLocalizedString(CodingKeys.editAccountChangeEmail.rawValue, comment: .empty)
        self.editAccountDeleteAccount = try container.decodeIfPresent(String.self, forKey: .editAccountDeleteAccount) ?? NSLocalizedString(CodingKeys.editAccountDeleteAccount.rawValue, comment: .empty)
        self.editAccountAddNewAddress = try container.decodeIfPresent(String.self, forKey: .editAccountAddNewAddress) ?? NSLocalizedString(CodingKeys.editAccountAddNewAddress.rawValue, comment: .empty)
        self.editAccountChangePhoneNumber = try container.decodeIfPresent(String.self, forKey: .editAccountChangePhoneNumber) ?? NSLocalizedString(CodingKeys.editAccountChangePhoneNumber.rawValue, comment: .empty)
        self.editAccountDeleteAccountMessage = try container.decodeIfPresent(String.self, forKey: .editAccountDeleteAccountMessage) ?? NSLocalizedString(CodingKeys.editAccountDeleteAccountMessage.rawValue, comment: .empty)
        self.editAccountProfileUpdatedSuccessfully = try container.decodeIfPresent(String.self, forKey: .editAccountProfileUpdatedSuccessfully) ?? NSLocalizedString(CodingKeys.editAccountProfileUpdatedSuccessfully.rawValue, comment: .empty)
        // MARK: - CHANGE EMAIL / PHONE NUMBER PAGE KEYS
        self.changeEmailTitle = try container.decodeIfPresent(String.self, forKey: .changeEmailTitle) ?? NSLocalizedString(CodingKeys.changeEmailTitle.rawValue, comment: .empty)
        self.changeEmailPhoneNumberTitle = try container.decodeIfPresent(String.self, forKey: .changeEmailPhoneNumberTitle) ?? NSLocalizedString(CodingKeys.changeEmailPhoneNumberTitle.rawValue, comment: .empty)
        self.changeEmailEmailIsTheSame = try container.decodeIfPresent(String.self, forKey: .changeEmailEmailIsTheSame) ?? NSLocalizedString(CodingKeys.changeEmailEmailIsTheSame.rawValue, comment: .empty)
        self.changeEmailMobilePhoneIsTheSame = try container.decodeIfPresent(String.self, forKey: .changeEmailMobilePhoneIsTheSame) ?? NSLocalizedString(CodingKeys.changeEmailMobilePhoneIsTheSame.rawValue, comment: .empty)
        // MARK: - CHANGE PASSWORD PAGE KEYS
        self.changePasswordTitle = try container.decodeIfPresent(String.self, forKey: .changePasswordTitle) ?? NSLocalizedString(CodingKeys.changePasswordTitle.rawValue, comment: .empty)
        // MARK: - ADD / EDIT REFERENCE PLACE PAGE KEYS
        self.addReferencePlaceTitle = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceTitle) ?? NSLocalizedString(CodingKeys.addReferencePlaceTitle.rawValue, comment: .empty)
        self.addReferencePlaceEditTitle = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceEditTitle) ?? NSLocalizedString(CodingKeys.addReferencePlaceEditTitle.rawValue, comment: .empty)
        self.addReferencePlaceTapToSelectLocation = try container.decodeIfPresent(String.self, forKey: .addReferencePlaceTapToSelectLocation) ?? NSLocalizedString(CodingKeys.addReferencePlaceTapToSelectLocation.rawValue, comment: .empty)
        // MARK: - SEARCH LOCATION PAGE KEYS
        self.searchLocationTitle = try container.decodeIfPresent(String.self, forKey: .searchLocationTitle) ?? NSLocalizedString(CodingKeys.searchLocationTitle.rawValue, comment: .empty)
        self.searchLocationSuggestions = try container.decodeIfPresent(String.self, forKey: .searchLocationSuggestions) ?? NSLocalizedString(CodingKeys.searchLocationSuggestions.rawValue, comment: .empty)
        // MARK: - GLOSSARY PAGE KEYS
        self.glossaryTitle = try container.decodeIfPresent(String.self, forKey: .glossaryTitle) ?? NSLocalizedString(CodingKeys.glossaryTitle.rawValue, comment: .empty)
        self.glossaryEvioNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryEvioNetwork) ?? NSLocalizedString(CodingKeys.glossaryEvioNetwork.rawValue, comment: .empty)
        self.glossaryOtherNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryOtherNetwork) ?? NSLocalizedString(CodingKeys.glossaryOtherNetwork.rawValue, comment: .empty)
        self.glossaryMyChargers = try container.decodeIfPresent(String.self, forKey: .glossaryMyChargers) ?? NSLocalizedString(CodingKeys.glossaryMyChargers.rawValue, comment: .empty)
        self.glossaryMobieNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryMobieNetwork) ?? NSLocalizedString(CodingKeys.glossaryMobieNetwork.rawValue, comment: .empty)
        self.glossaryTeslaNetwork = try container.decodeIfPresent(String.self, forKey: .glossaryTeslaNetwork) ?? NSLocalizedString(CodingKeys.glossaryTeslaNetwork.rawValue, comment: .empty)
        self.glossaryChargersGroup = try container.decodeIfPresent(String.self, forKey: .glossaryChargersGroup) ?? NSLocalizedString(CodingKeys.glossaryChargersGroup.rawValue, comment: .empty)
        self.glossaryChargerFree = try container.decodeIfPresent(String.self, forKey: .glossaryChargerFree) ?? NSLocalizedString(CodingKeys.glossaryChargerFree.rawValue, comment: .empty)
        self.glossaryChargerOccupied = try container.decodeIfPresent(String.self, forKey: .glossaryChargerOccupied) ?? NSLocalizedString(CodingKeys.glossaryChargerOccupied.rawValue, comment: .empty)
        self.glossaryChargerOffline = try container.decodeIfPresent(String.self, forKey: .glossaryChargerOffline) ?? NSLocalizedString(CodingKeys.glossaryChargerOffline.rawValue, comment: .empty)
        self.glossaryGoCharge = try container.decodeIfPresent(String.self, forKey: .glossaryGoCharge) ?? NSLocalizedString(CodingKeys.glossaryGoCharge.rawValue, comment: .empty)
        self.glossaryHyundai = try container.decodeIfPresent(String.self, forKey: .glossaryHyundai) ?? NSLocalizedString(CodingKeys.glossaryHyundai.rawValue, comment: .empty)
        // MARK: - NOTIFICATIONS PAGE KEYS
        self.notificationsTitle = try container.decodeIfPresent(String.self, forKey: .notificationsTitle) ?? NSLocalizedString(CodingKeys.notificationsTitle.rawValue, comment: .empty)
        self.notificationsChargingPoint = try container.decodeIfPresent(String.self, forKey: .notificationsChargingPoint) ?? NSLocalizedString(CodingKeys.notificationsChargingPoint.rawValue, comment: .empty)
        self.notificationsGeneral = try container.decodeIfPresent(String.self, forKey: .notificationsGeneral) ?? NSLocalizedString(CodingKeys.notificationsGeneral.rawValue, comment: .empty)
        self.notificationsAccount = try container.decodeIfPresent(String.self, forKey: .notificationsAccount) ?? NSLocalizedString(CodingKeys.notificationsAccount.rawValue, comment: .empty)
        self.notificationsPushNotifications = try container.decodeIfPresent(String.self, forKey: .notificationsPushNotifications) ?? NSLocalizedString(CodingKeys.notificationsPushNotifications.rawValue, comment: .empty)
        // MARK: - SESSIONS PAGE KEYS
        self.sessionsMySessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsMySessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsMySessionsTitle.rawValue, comment: .empty)
        self.sessionsMyChargersSessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsMyChargersSessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsMyChargersSessionsTitle.rawValue, comment: .empty)
        self.sessionsNoSessionsTitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsTitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsTitle.rawValue, comment: .empty)
        self.sessionsNoSessionsMySessionsSubtitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsMySessionsSubtitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsMySessionsSubtitle.rawValue, comment: .empty)
        self.sessionsNoSessionsSubtitleNoLogin = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsSubtitleNoLogin) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsSubtitleNoLogin.rawValue, comment: .empty)
        self.sessionsNoSessionsMyChargerSessionsSubtitle = try container.decodeIfPresent(String.self, forKey: .sessionsNoSessionsMyChargerSessionsSubtitle) ?? NSLocalizedString(CodingKeys.sessionsNoSessionsMyChargerSessionsSubtitle.rawValue, comment: .empty)
        self.sessionsNoBatteryInfo = try container.decodeIfPresent(String.self, forKey: .sessionsNoBatteryInfo) ?? NSLocalizedString(CodingKeys.sessionsNoBatteryInfo.rawValue, comment: .empty)
        self.sessionsAreYouSureYouWantToStop = try container.decodeIfPresent(String.self, forKey: .sessionsAreYouSureYouWantToStop) ?? NSLocalizedString(CodingKeys.sessionsAreYouSureYouWantToStop.rawValue, comment: .empty)
        self.sessionsTxtInfoMobieUpdates = try container.decodeIfPresent(String.self, forKey: .sessionsTxtInfoMobieUpdates) ?? NSLocalizedString(CodingKeys.sessionsTxtInfoMobieUpdates.rawValue, comment: .empty)
        self.sessionsChargingPoint = try container.decodeIfPresent(String.self, forKey: .sessionsChargingPoint) ?? NSLocalizedString(CodingKeys.sessionsChargingPoint.rawValue, comment: .empty)
        self.sessionsChargingPoints = try container.decodeIfPresent(String.self, forKey: .sessionsChargingPoints) ?? NSLocalizedString(CodingKeys.sessionsChargingPoints.rawValue, comment: .empty)
        // MARK: - START AND STOP ANIMATION PAGE KEYS
        self.loadingChargingStartTitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStartTitle) ?? NSLocalizedString(CodingKeys.loadingChargingStartTitle.rawValue, comment: .empty)
        self.loadingChargingStartSubtitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStartSubtitle) ?? NSLocalizedString(CodingKeys.loadingChargingStartSubtitle.rawValue, comment: .empty)
        self.loadingChargingStopTitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStopTitle) ?? NSLocalizedString(CodingKeys.loadingChargingStopTitle.rawValue, comment: .empty)
        self.loadingChargingStoptSubtitle = try container.decodeIfPresent(String.self, forKey: .loadingChargingStoptSubtitle) ?? NSLocalizedString(CodingKeys.loadingChargingStoptSubtitle.rawValue, comment: .empty)
        // MARK: - RATE SESSION VIEW PAGE KEYS
        self.rateSessionTitle = try container.decodeIfPresent(String.self, forKey: .rateSessionTitle) ?? NSLocalizedString(CodingKeys.rateSessionTitle.rawValue, comment: .empty)
        self.rateSessionSubtitle = try container.decodeIfPresent(String.self, forKey: .rateSessionSubtitle) ?? NSLocalizedString(CodingKeys.rateSessionSubtitle.rawValue, comment: .empty)
        self.rateSessionComment = try container.decodeIfPresent(String.self, forKey: .rateSessionComment) ?? NSLocalizedString(CodingKeys.rateSessionComment.rawValue, comment: .empty)
        self.rateSessionCommentPlaceholder = try container.decodeIfPresent(String.self, forKey: .rateSessionCommentPlaceholder) ?? NSLocalizedString(CodingKeys.rateSessionCommentPlaceholder.rawValue, comment: .empty)
        // MARK: - SESSION SUMMARY VIEW PAGE KEYS
        self.sessionSummaryTotalChargingTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTotalChargingTime) ?? NSLocalizedString(CodingKeys.sessionSummaryTotalChargingTime.rawValue, comment: .empty)
        self.sessionSummaryDate = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDate) ?? NSLocalizedString(CodingKeys.sessionSummaryDate.rawValue, comment: .empty)
        self.sessionSummaryStartTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryStartTime) ?? NSLocalizedString(CodingKeys.sessionSummaryStartTime.rawValue, comment: .empty)
        self.sessionSummaryEndTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEndTime) ?? NSLocalizedString(CodingKeys.sessionSummaryEndTime.rawValue, comment: .empty)
        self.sessionSummaryInstantAveragePower = try container.decodeIfPresent(String.self, forKey: .sessionSummaryInstantAveragePower) ?? NSLocalizedString(CodingKeys.sessionSummaryInstantAveragePower.rawValue, comment: .empty)
        self.sessionSummaryIec = try container.decodeIfPresent(String.self, forKey: .sessionSummaryIec) ?? NSLocalizedString(CodingKeys.sessionSummaryIec.rawValue, comment: .empty)
        self.sessionSummaryTar = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTar) ?? NSLocalizedString(CodingKeys.sessionSummaryTar.rawValue, comment: .empty)
        self.sessionSummaryVat = try container.decodeIfPresent(String.self, forKey: .sessionSummaryVat) ?? NSLocalizedString(CodingKeys.sessionSummaryVat.rawValue, comment: .empty)
        self.sessionSummaryTotal = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTotal) ?? NSLocalizedString(CodingKeys.sessionSummaryTotal.rawValue, comment: .empty)
        self.sessionSummaryMobieTitle = try container.decodeIfPresent(String.self, forKey: .sessionSummaryMobieTitle) ?? NSLocalizedString(CodingKeys.sessionSummaryMobieTitle.rawValue, comment: .empty)
        self.sessionSummaryTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryTime) ?? NSLocalizedString(CodingKeys.sessionSummaryTime.rawValue, comment: .empty)
        self.sessionSummaryEnergy = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEnergy) ?? NSLocalizedString(CodingKeys.sessionSummaryEnergy.rawValue, comment: .empty)
        self.sessionSummaryPlug = try container.decodeIfPresent(String.self, forKey: .sessionSummaryPlug) ?? NSLocalizedString(CodingKeys.sessionSummaryPlug.rawValue, comment: .empty)
        self.sessionSummaryContract = try container.decodeIfPresent(String.self, forKey: .sessionSummaryContract) ?? NSLocalizedString(CodingKeys.sessionSummaryContract.rawValue, comment: .empty)
        self.sessionSummaryCo2Emitted = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCo2Emitted) ?? NSLocalizedString(CodingKeys.sessionSummaryCo2Emitted.rawValue, comment: .empty)
        self.sessionSummaryCharging = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCharging) ?? NSLocalizedString(CodingKeys.sessionSummaryCharging.rawValue, comment: .empty)
        self.sessionSummaryOpc = try container.decodeIfPresent(String.self, forKey: .sessionSummaryOpc) ?? NSLocalizedString(CodingKeys.sessionSummaryOpc.rawValue, comment: .empty)
        self.sessionSummaryCeme = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCeme) ?? NSLocalizedString(CodingKeys.sessionSummaryCeme.rawValue, comment: .empty)
        self.sessionSummaryFees = try container.decodeIfPresent(String.self, forKey: .sessionSummaryFees) ?? NSLocalizedString(CodingKeys.sessionSummaryFees.rawValue, comment: .empty)
        self.sessionSummaryDownloadInvoice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDownloadInvoice) ?? NSLocalizedString(CodingKeys.sessionSummaryDownloadInvoice.rawValue, comment: .empty)
        self.sessionSummaryEstimatedPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEstimatedPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryEstimatedPrice.rawValue, comment: .empty)
        self.sessionSummaryRateThisSession = try container.decodeIfPresent(String.self, forKey: .sessionSummaryRateThisSession) ?? NSLocalizedString(CodingKeys.sessionSummaryRateThisSession.rawValue, comment: .empty)
        self.sessionSummaryParking = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParking) ?? NSLocalizedString(CodingKeys.sessionSummaryParking.rawValue, comment: .empty)
        self.sessionSummaryRoamingTitle = try container.decodeIfPresent(String.self, forKey: .sessionSummaryRoamingTitle) ?? NSLocalizedString(CodingKeys.sessionSummaryRoamingTitle.rawValue, comment: .empty)
        self.sessionSummaryEmsp = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEmsp) ?? NSLocalizedString(CodingKeys.sessionSummaryEmsp.rawValue, comment: .empty)
        self.sessionSummaryCdrInfoText = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCdrInfoText) ?? NSLocalizedString(CodingKeys.sessionSummaryCdrInfoText.rawValue, comment: .empty)
        self.sessionSummaryPowerKw = try container.decodeIfPresent(String.self, forKey: .sessionSummaryPowerKw) ?? NSLocalizedString(CodingKeys.sessionSummaryPowerKw.rawValue, comment: .empty)
        self.sessionSummaryBattery = try container.decodeIfPresent(String.self, forKey: .sessionSummaryBattery) ?? NSLocalizedString(CodingKeys.sessionSummaryBattery.rawValue, comment: .empty)
        self.sessionSummaryEnergyKwh = try container.decodeIfPresent(String.self, forKey: .sessionSummaryEnergyKwh) ?? NSLocalizedString(CodingKeys.sessionSummaryEnergyKwh.rawValue, comment: .empty)
        self.sessionSummaryChargingTime = try container.decodeIfPresent(String.self, forKey: .sessionSummaryChargingTime) ?? NSLocalizedString(CodingKeys.sessionSummaryChargingTime.rawValue, comment: .empty)
        self.sessionSummaryChargingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryChargingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryChargingPrice.rawValue, comment: .empty)
        self.sessionSummaryActivationFee = try container.decodeIfPresent(String.self, forKey: .sessionSummaryActivationFee) ?? NSLocalizedString(CodingKeys.sessionSummaryActivationFee.rawValue, comment: .empty)
        self.sessionSummaryCostDuringCharge = try container.decodeIfPresent(String.self, forKey: .sessionSummaryCostDuringCharge) ?? NSLocalizedString(CodingKeys.sessionSummaryCostDuringCharge.rawValue, comment: .empty)
        self.sessionSummaryDuration = try container.decodeIfPresent(String.self, forKey: .sessionSummaryDuration) ?? NSLocalizedString(CodingKeys.sessionSummaryDuration.rawValue, comment: .empty)
        self.sessionSummaryParkingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParkingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryParkingPrice.rawValue, comment: .empty)
        self.sessionSummaryParkingDuringCharging = try container.decodeIfPresent(String.self, forKey: .sessionSummaryParkingDuringCharging) ?? NSLocalizedString(CodingKeys.sessionSummaryParkingDuringCharging.rawValue, comment: .empty)
        self.sessionSummaryBookingPrice = try container.decodeIfPresent(String.self, forKey: .sessionSummaryBookingPrice) ?? NSLocalizedString(CodingKeys.sessionSummaryBookingPrice.rawValue, comment: .empty)
        // MARK: - START CHARGING BY QR CODE VIEW PAGE KEYS
        self.chargerQrCodeContract = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeContract) ?? NSLocalizedString(CodingKeys.chargerQrCodeContract.rawValue, comment: .empty)
        self.chargerQrCodeEv = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeEv) ?? NSLocalizedString(CodingKeys.chargerQrCodeEv.rawValue, comment: .empty)
        self.chargerQrCodeTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeTitle.rawValue, comment: .empty)
        self.chargerQrCodeStart = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeStart) ?? NSLocalizedString(CodingKeys.chargerQrCodeStart.rawValue, comment: .empty)
        self.chargerQrCodeSelectContract = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectContract) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectContract.rawValue, comment: .empty)
        self.chargerQrCodeSelectEv = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectEv) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectEv.rawValue, comment: .empty)
        self.chargerQrCodeSelectContractFirst = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeSelectContractFirst) ?? NSLocalizedString(CodingKeys.chargerQrCodeSelectContractFirst.rawValue, comment: .empty)
        self.chargerQrCodeMainTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeMainTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeMainTitle.rawValue, comment: .empty)
        self.chargerQrCodeMainSubtitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeMainSubtitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeMainSubtitle.rawValue, comment: .empty)
        self.chargerQrCodeNoCamera = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeNoCamera) ?? NSLocalizedString(CodingKeys.chargerQrCodeNoCamera.rawValue, comment: .empty)
        self.chargerQrCodeOrInsert = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeOrInsert) ?? NSLocalizedString(CodingKeys.chargerQrCodeOrInsert.rawValue, comment: .empty)
        self.chargerQrCodeIdNumber = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumber) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumber.rawValue, comment: .empty)
        self.chargerQrCodeInvalidQrCode = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeInvalidQrCode) ?? NSLocalizedString(CodingKeys.chargerQrCodeInvalidQrCode.rawValue, comment: .empty)
        self.chargerQrCodeIdNumberTitle = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumberTitle) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumberTitle.rawValue, comment: .empty)
        self.chargerQrCodeIdNumberPlaceholder = try container.decodeIfPresent(String.self, forKey: .chargerQrCodeIdNumberPlaceholder) ?? NSLocalizedString(CodingKeys.chargerQrCodeIdNumberPlaceholder.rawValue, comment: .empty)
        // MARK: - STOPPED SESSION BY REASON PAGE KEYS
        self.stoppedSessionByReasonTitle = try container.decodeIfPresent(String.self, forKey: .stoppedSessionByReasonTitle) ?? NSLocalizedString(CodingKeys.stoppedSessionByReasonTitle.rawValue, comment: .empty)
        self.stoppedSessionByReasonSubtitle = try container.decodeIfPresent(String.self, forKey: .stoppedSessionByReasonSubtitle) ?? NSLocalizedString(CodingKeys.stoppedSessionByReasonSubtitle.rawValue, comment: .empty)
        // MARK: - MY CHARGERS VIEW CODING PAGE KEYS
        self.myChargersTabTitle = try container.decodeIfPresent(String.self, forKey: .myChargersTabTitle) ?? NSLocalizedString(CodingKeys.myChargersTabTitle.rawValue, comment: .empty)
        self.myChargersChargersTabTitle = try container.decodeIfPresent(String.self, forKey: .myChargersChargersTabTitle) ?? NSLocalizedString(CodingKeys.myChargersChargersTabTitle.rawValue, comment: .empty)
        self.myChargersAddChargingPlaceTitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargingPlaceTitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargingPlaceTitle.rawValue, comment: .empty)
        self.myChargersChargingPlaceName = try container.decodeIfPresent(String.self, forKey: .myChargersChargingPlaceName) ?? NSLocalizedString(CodingKeys.myChargersChargingPlaceName.rawValue, comment: .empty)
        self.myChargersChargingPlaceNamePlaceholder = try container.decodeIfPresent(String.self, forKey: .myChargersChargingPlaceNamePlaceholder) ?? NSLocalizedString(CodingKeys.myChargersChargingPlaceNamePlaceholder.rawValue, comment: .empty)
        self.myChargersNoChargersTitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersTitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersTitle.rawValue, comment: .empty)
        self.myChargersNoChargersSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersNoLoginSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersNoLoginSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersNoLoginSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersMyChargersSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersMyChargersSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersMyChargersNoLoginSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersNoChargersMyChargersNoLoginSubtitle) ?? NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersNoLoginSubtitle.rawValue, comment: .empty)
        self.myChargersDeleteChargerTitle = try container.decodeIfPresent(String.self, forKey: .myChargersDeleteChargerTitle) ?? NSLocalizedString(CodingKeys.myChargersDeleteChargerTitle.rawValue, comment: .empty)
        self.myChargersDeleteChargerSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersDeleteChargerSubtitle) ?? NSLocalizedString(CodingKeys.myChargersDeleteChargerSubtitle.rawValue, comment: .empty)
        self.myChargersAddChargerAlertTitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargerAlertTitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargerAlertTitle.rawValue, comment: .empty)
        self.myChargersAddChargerAlertSubtitle = try container.decodeIfPresent(String.self, forKey: .myChargersAddChargerAlertSubtitle) ?? NSLocalizedString(CodingKeys.myChargersAddChargerAlertSubtitle.rawValue, comment: .empty)
        self.myChargersAddNewCharger = try container.decodeIfPresent(String.self, forKey: .myChargersAddNewCharger) ?? NSLocalizedString(CodingKeys.myChargersAddNewCharger.rawValue, comment: .empty)
        // MARK: - PLUG DETAILS VIEW PAGE KEYS
        self.plugDetailsConnectorType = try container.decodeIfPresent(String.self, forKey: .plugDetailsConnectorType) ?? NSLocalizedString(CodingKeys.plugDetailsConnectorType.rawValue, comment: .empty)
        self.plugDetailsStatus = try container.decodeIfPresent(String.self, forKey: .plugDetailsStatus) ?? NSLocalizedString(CodingKeys.plugDetailsStatus.rawValue, comment: .empty)
        self.plugDetailsCurrent = try container.decodeIfPresent(String.self, forKey: .plugDetailsCurrent) ?? NSLocalizedString(CodingKeys.plugDetailsCurrent.rawValue, comment: .empty)
        self.plugDetailsVoltage = try container.decodeIfPresent(String.self, forKey: .plugDetailsVoltage) ?? NSLocalizedString(CodingKeys.plugDetailsVoltage.rawValue, comment: .empty)
        self.plugDetailsPower = try container.decodeIfPresent(String.self, forKey: .plugDetailsPower) ?? NSLocalizedString(CodingKeys.plugDetailsPower.rawValue, comment: .empty)
        self.plugDetailsAccess = try container.decodeIfPresent(String.self, forKey: .plugDetailsAccess) ?? NSLocalizedString(CodingKeys.plugDetailsAccess.rawValue, comment: .empty)
        self.plugDetailsEditPlugTitle = try container.decodeIfPresent(String.self, forKey: .plugDetailsEditPlugTitle) ?? NSLocalizedString(CodingKeys.plugDetailsEditPlugTitle.rawValue, comment: .empty)
        self.plugDetailsChargingInformation = try container.decodeIfPresent(String.self, forKey: .plugDetailsChargingInformation) ?? NSLocalizedString(CodingKeys.plugDetailsChargingInformation.rawValue, comment: .empty)
        self.plugDetailsCurrentType = try container.decodeIfPresent(String.self, forKey: .plugDetailsCurrentType) ?? NSLocalizedString(CodingKeys.plugDetailsCurrentType.rawValue, comment: .empty)
        self.plugDetailsActivate = try container.decodeIfPresent(String.self, forKey: .plugDetailsActivate) ?? NSLocalizedString(CodingKeys.plugDetailsActivate.rawValue, comment: .empty)
        self.plugDetailsAc1Phase = try container.decodeIfPresent(String.self, forKey: .plugDetailsAc1Phase) ?? NSLocalizedString(CodingKeys.plugDetailsAc1Phase.rawValue, comment: .empty)
        self.plugDetailsAc3Phase = try container.decodeIfPresent(String.self, forKey: .plugDetailsAc3Phase) ?? NSLocalizedString(CodingKeys.plugDetailsAc3Phase.rawValue, comment: .empty)
        // MARK: - WALLET VIEW PAGE KEYS
        self.walletTitle = try container.decodeIfPresent(String.self, forKey: .walletTitle) ?? NSLocalizedString(CodingKeys.walletTitle.rawValue, comment: .empty)
        self.walletBalance = try container.decodeIfPresent(String.self, forKey: .walletBalance) ?? NSLocalizedString(CodingKeys.walletBalance.rawValue, comment: .empty)
        self.walletInfoAboutWallet = try container.decodeIfPresent(String.self, forKey: .walletInfoAboutWallet) ?? NSLocalizedString(CodingKeys.walletInfoAboutWallet.rawValue, comment: .empty)
        self.walletPaymentMethods = try container.decodeIfPresent(String.self, forKey: .walletPaymentMethods) ?? NSLocalizedString(CodingKeys.walletPaymentMethods.rawValue, comment: .empty)
        self.walletWalletHistory = try container.decodeIfPresent(String.self, forKey: .walletWalletHistory) ?? NSLocalizedString(CodingKeys.walletWalletHistory.rawValue, comment: .empty)
        self.walletFinacialTransactions = try container.decodeIfPresent(String.self, forKey: .walletFinacialTransactions) ?? NSLocalizedString(CodingKeys.walletFinacialTransactions.rawValue, comment: .empty)
        self.walletBillingProfile = try container.decodeIfPresent(String.self, forKey: .walletBillingProfile) ?? NSLocalizedString(CodingKeys.walletBillingProfile.rawValue, comment: .empty)
        self.walletAutoRechargeWallet = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeWallet) ?? NSLocalizedString(CodingKeys.walletAutoRechargeWallet.rawValue, comment: .empty)
        self.walletAutoRechargeWalletInfoText = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeWalletInfoText) ?? NSLocalizedString(CodingKeys.walletAutoRechargeWalletInfoText.rawValue, comment: .empty)
        self.walletAutoRechargeSuccessMessage = try container.decodeIfPresent(String.self, forKey: .walletAutoRechargeSuccessMessage) ?? NSLocalizedString(CodingKeys.walletAutoRechargeSuccessMessage.rawValue, comment: .empty)
        // MARK: - WALLET TOP UP VIEW PAGE KEYS
        self.walletTopUpTitle = try container.decodeIfPresent(String.self, forKey: .walletTopUpTitle) ?? NSLocalizedString(CodingKeys.walletTopUpTitle.rawValue, comment: .empty)
        self.walletTopUpOtherAmount = try container.decodeIfPresent(String.self, forKey: .walletTopUpOtherAmount) ?? NSLocalizedString(CodingKeys.walletTopUpOtherAmount.rawValue, comment: .empty)
        self.walletTopUpMinimumAmount = try container.decodeIfPresent(String.self, forKey: .walletTopUpMinimumAmount) ?? NSLocalizedString(CodingKeys.walletTopUpMinimumAmount.rawValue, comment: .empty)
        self.walletTopUpMbWay = try container.decodeIfPresent(String.self, forKey: .walletTopUpMbWay) ?? NSLocalizedString(CodingKeys.walletTopUpMbWay.rawValue, comment: .empty)
        self.walletTopUpMultibancoReference = try container.decodeIfPresent(String.self, forKey: .walletTopUpMultibancoReference) ?? NSLocalizedString(CodingKeys.walletTopUpMultibancoReference.rawValue, comment: .empty)
        self.walletTopUpCreditCardDeposit = try container.decodeIfPresent(String.self, forKey: .walletTopUpCreditCardDeposit) ?? NSLocalizedString(CodingKeys.walletTopUpCreditCardDeposit.rawValue, comment: .empty)
        self.walletTopUpCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpCreditCard.rawValue, comment: .empty)
        self.walletTopUpNewCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpNewCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpNewCreditCard.rawValue, comment: .empty)
        self.walletTopUpExistingCreditCard = try container.decodeIfPresent(String.self, forKey: .walletTopUpExistingCreditCard) ?? NSLocalizedString(CodingKeys.walletTopUpExistingCreditCard.rawValue, comment: .empty)
        self.walletTopUpAddBalanceSuccess = try container.decodeIfPresent(String.self, forKey: .walletTopUpAddBalanceSuccess) ?? NSLocalizedString(CodingKeys.walletTopUpAddBalanceSuccess.rawValue, comment: .empty)
        // MARK: - MB REFERENCE VIEW PAGE KEYS
        self.mbReferenceEntity = try container.decodeIfPresent(String.self, forKey: .mbReferenceEntity) ?? NSLocalizedString(CodingKeys.mbReferenceEntity.rawValue, comment: .empty)
        self.mbReferenceReference = try container.decodeIfPresent(String.self, forKey: .mbReferenceReference) ?? NSLocalizedString(CodingKeys.mbReferenceReference.rawValue, comment: .empty)
        self.mbReferenceAmount = try container.decodeIfPresent(String.self, forKey: .mbReferenceAmount) ?? NSLocalizedString(CodingKeys.mbReferenceAmount.rawValue, comment: .empty)
        self.mbReferenceSendReferenceBySms = try container.decodeIfPresent(String.self, forKey: .mbReferenceSendReferenceBySms) ?? NSLocalizedString(CodingKeys.mbReferenceSendReferenceBySms.rawValue, comment: .empty)
        self.mbReferenceInfoAboutReference = try container.decodeIfPresent(String.self, forKey: .mbReferenceInfoAboutReference) ?? NSLocalizedString(CodingKeys.mbReferenceInfoAboutReference.rawValue, comment: .empty)
        self.mbReferenceDidNotReceive = try container.decodeIfPresent(String.self, forKey: .mbReferenceDidNotReceive) ?? NSLocalizedString(CodingKeys.mbReferenceDidNotReceive.rawValue, comment: .empty)
        self.mbReferenceTryAgain = try container.decodeIfPresent(String.self, forKey: .mbReferenceTryAgain) ?? NSLocalizedString(CodingKeys.mbReferenceTryAgain.rawValue, comment: .empty)
        // MARK: - TRANSACTIONS VIEW PAGE KEYS
        self.transactionsTitle = try container.decodeIfPresent(String.self, forKey: .transactionsTitle) ?? NSLocalizedString(CodingKeys.transactionsTitle.rawValue, comment: .empty)
        self.transactionsNoTransactions = try container.decodeIfPresent(String.self, forKey: .transactionsNoTransactions) ?? NSLocalizedString(CodingKeys.transactionsNoTransactions.rawValue, comment: .empty)
        self.transactionsDeposit = try container.decodeIfPresent(String.self, forKey: .transactionsDeposit) ?? NSLocalizedString(CodingKeys.transactionsDeposit.rawValue, comment: .empty)
        self.transactionsPayment = try container.decodeIfPresent(String.self, forKey: .transactionsPayment) ?? NSLocalizedString(CodingKeys.transactionsPayment.rawValue, comment: .empty)
        self.transactionsCard = try container.decodeIfPresent(String.self, forKey: .transactionsCard) ?? NSLocalizedString(CodingKeys.transactionsCard.rawValue, comment: .empty)
        self.transactionsMBRef = try container.decodeIfPresent(String.self, forKey: .transactionsMBRef) ?? NSLocalizedString(CodingKeys.transactionsMBRef.rawValue, comment: .empty)
        self.transactionsMBRefPSNet = try container.decodeIfPresent(String.self, forKey: .transactionsMBRefPSNet) ?? NSLocalizedString(CodingKeys.transactionsMBRefPSNet.rawValue, comment: .empty)
        self.transactionsPSNet = try container.decodeIfPresent(String.self, forKey: .transactionsPSNet) ?? NSLocalizedString(CodingKeys.transactionsPSNet.rawValue, comment: .empty)
        self.transactionsMBWay = try container.decodeIfPresent(String.self, forKey: .transactionsMBWay) ?? NSLocalizedString(CodingKeys.transactionsMBWay.rawValue, comment: .empty)
        self.transactionsWallet = try container.decodeIfPresent(String.self, forKey: .transactionsWallet) ?? NSLocalizedString(CodingKeys.transactionsWallet.rawValue, comment: .empty)
        self.transactionsOther = try container.decodeIfPresent(String.self, forKey: .transactionsOther) ?? NSLocalizedString(CodingKeys.transactionsOther.rawValue, comment: .empty)
        self.transactionsFinancialTitle = try container.decodeIfPresent(String.self, forKey: .transactionsFinancialTitle) ?? NSLocalizedString(CodingKeys.transactionsFinancialTitle.rawValue, comment: .empty)
        // MARK: - BILLING PROFILE VIEW PAGE KEYS
        self.billingProfileTitle = try container.decodeIfPresent(String.self, forKey: .billingProfileTitle) ?? NSLocalizedString(CodingKeys.billingProfileTitle.rawValue, comment: .empty)
        self.billingProfileBillingPeriod = try container.decodeIfPresent(String.self, forKey: .billingProfileBillingPeriod) ?? NSLocalizedString(CodingKeys.billingProfileBillingPeriod.rawValue, comment: .empty)
        // MARK: - EDIT BILLING PROFILE VIEW KEYS
        self.editBillingProfileFinalConsumer = try container.decodeIfPresent(String.self, forKey: .editBillingProfileFinalConsumer) ?? NSLocalizedString(CodingKeys.editBillingProfileFinalConsumer.rawValue, comment: .empty)
        self.editBillingProfilePeriod = try container.decodeIfPresent(String.self, forKey: .editBillingProfilePeriod) ?? NSLocalizedString(CodingKeys.editBillingProfilePeriod.rawValue, comment: .empty)
        // MARK: - PAYMENT METHODS VIEW KEYS
        self.paymentMethodsTitle = try container.decodeIfPresent(String.self, forKey: .paymentMethodsTitle) ?? NSLocalizedString(CodingKeys.paymentMethodsTitle.rawValue, comment: .empty)
        self.paymentMethodsCreditCardInfoText = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCreditCardInfoText) ?? NSLocalizedString(CodingKeys.paymentMethodsCreditCardInfoText.rawValue, comment: .empty)
        self.paymentMethodsAddNew = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddNew) ?? NSLocalizedString(CodingKeys.paymentMethodsAddNew.rawValue, comment: .empty)
        self.paymentMethodsAddNewPaymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddNewPaymentMethod) ?? NSLocalizedString(CodingKeys.paymentMethodsAddNewPaymentMethod.rawValue, comment: .empty)
        self.paymentMethodsAskUserToDelete = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAskUserToDelete) ?? NSLocalizedString(CodingKeys.paymentMethodsAskUserToDelete.rawValue, comment: .empty)
        self.paymentMethodsNoPaymentMethods = try container.decodeIfPresent(String.self, forKey: .paymentMethodsNoPaymentMethods) ?? NSLocalizedString(CodingKeys.paymentMethodsNoPaymentMethods.rawValue, comment: .empty)
        self.paymentMethodsCantDeleteCardiOS = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCantDeleteCardiOS) ?? NSLocalizedString(CodingKeys.paymentMethodsCantDeleteCardiOS.rawValue, comment: .empty)
        self.paymentMethodsExpiryDate = try container.decodeIfPresent(String.self, forKey: .paymentMethodsExpiryDate) ?? NSLocalizedString(CodingKeys.paymentMethodsExpiryDate.rawValue, comment: .empty)
        self.paymentMethodsCvc = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCvc) ?? NSLocalizedString(CodingKeys.paymentMethodsCvc.rawValue, comment: .empty)
        self.paymentMethodsAddCard = try container.decodeIfPresent(String.self, forKey: .paymentMethodsAddCard) ?? NSLocalizedString(CodingKeys.paymentMethodsAddCard.rawValue, comment: .empty)
        self.paymentMethodsCardNumberNoValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsCardNumberNoValid) ?? NSLocalizedString(CodingKeys.paymentMethodsCardNumberNoValid.rawValue, comment: .empty)
        self.paymentMethodsExpireDateNotValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsExpireDateNotValid) ?? NSLocalizedString(CodingKeys.paymentMethodsExpireDateNotValid.rawValue, comment: .empty)
        self.paymentMethodsSecurityCodeNotValid = try container.decodeIfPresent(String.self, forKey: .paymentMethodsSecurityCodeNotValid) ?? NSLocalizedString(CodingKeys.paymentMethodsSecurityCodeNotValid.rawValue, comment: .empty)
        // MARK: - SUPPORT VIEW KEYS
        self.supportTitle = try container.decodeIfPresent(String.self, forKey: .supportTitle) ?? NSLocalizedString(CodingKeys.supportTitle.rawValue, comment: .empty)
        self.supportMessage = try container.decodeIfPresent(String.self, forKey: .supportMessage) ?? NSLocalizedString(CodingKeys.supportMessage.rawValue, comment: .empty)
        self.supportSearchTopics = try container.decodeIfPresent(String.self, forKey: .supportSearchTopics) ?? NSLocalizedString(CodingKeys.supportSearchTopics.rawValue, comment: .empty)
        self.supportDriver = try container.decodeIfPresent(String.self, forKey: .supportDriver) ?? NSLocalizedString(CodingKeys.supportDriver.rawValue, comment: .empty)
        self.supportOwner = try container.decodeIfPresent(String.self, forKey: .supportOwner) ?? NSLocalizedString(CodingKeys.supportOwner.rawValue, comment: .empty)
        self.supportFaqs = try container.decodeIfPresent(String.self, forKey: .supportFaqs) ?? NSLocalizedString(CodingKeys.supportFaqs.rawValue, comment: .empty)
        self.supportTalkWithUs = try container.decodeIfPresent(String.self, forKey: .supportTalkWithUs) ?? NSLocalizedString(CodingKeys.supportTalkWithUs.rawValue, comment: .empty)
        self.supportSendUsAnEmail = try container.decodeIfPresent(String.self, forKey: .supportSendUsAnEmail) ?? NSLocalizedString(CodingKeys.supportSendUsAnEmail.rawValue, comment: .empty)
        self.supportKnowTheApp = try container.decodeIfPresent(String.self, forKey: .supportKnowTheApp) ?? NSLocalizedString(CodingKeys.supportKnowTheApp.rawValue, comment: .empty)
        self.supportReviewWalkthroughs = try container.decodeIfPresent(String.self, forKey: .supportReviewWalkthroughs) ?? NSLocalizedString(CodingKeys.supportReviewWalkthroughs.rawValue, comment: .empty)
        self.supportRunOnboarding = try container.decodeIfPresent(String.self, forKey: .supportRunOnboarding) ?? NSLocalizedString(CodingKeys.supportRunOnboarding.rawValue, comment: .empty)
        self.supportSubject = try container.decodeIfPresent(String.self, forKey: .supportSubject) ?? NSLocalizedString(CodingKeys.supportSubject.rawValue, comment: .empty)
        self.supportDriverSupport = try container.decodeIfPresent(String.self, forKey: .supportDriverSupport) ?? NSLocalizedString(CodingKeys.supportDriverSupport.rawValue, comment: .empty)
        self.supportOwnerSupport = try container.decodeIfPresent(String.self, forKey: .supportOwnerSupport) ?? NSLocalizedString(CodingKeys.supportOwnerSupport.rawValue, comment: .empty)
        self.supportSearchNotSearchedYet = try container.decodeIfPresent(String.self, forKey: .supportSearchNotSearchedYet) ?? NSLocalizedString(CodingKeys.supportSearchNotSearchedYet.rawValue, comment: .empty)
        self.supportSearchNoResultsFoundFor = try container.decodeIfPresent(String.self, forKey: .supportSearchNoResultsFoundFor) ?? NSLocalizedString(CodingKeys.supportSearchNoResultsFoundFor.rawValue, comment: .empty)
        self.supportSearchTypeSomethingToSearch = try container.decodeIfPresent(String.self, forKey: .supportSearchTypeSomethingToSearch) ?? NSLocalizedString(CodingKeys.supportSearchTypeSomethingToSearch.rawValue, comment: .empty)
        self.supportAddPictures = try container.decodeIfPresent(String.self, forKey: .supportAddPictures) ?? NSLocalizedString(CodingKeys.supportAddPictures.rawValue, comment: .empty)
        // MARK: - INSIGHTS VIEW KEYS
        self.insightsInsightsTabTitle = try container.decodeIfPresent(String.self, forKey: .insightsInsightsTabTitle) ?? NSLocalizedString(CodingKeys.insightsInsightsTabTitle.rawValue, comment: .empty)
        self.insightsHistoryTabTitle = try container.decodeIfPresent(String.self, forKey: .insightsHistoryTabTitle) ?? NSLocalizedString(CodingKeys.insightsHistoryTabTitle.rawValue, comment: .empty)
        self.insightsLastMonth = try container.decodeIfPresent(String.self, forKey: .insightsLastMonth) ?? NSLocalizedString(CodingKeys.insightsLastMonth.rawValue, comment: .empty)
        self.insightsLastYear = try container.decodeIfPresent(String.self, forKey: .insightsLastYear) ?? NSLocalizedString(CodingKeys.insightsLastYear.rawValue, comment: .empty)
        self.insightsLastSemester = try container.decodeIfPresent(String.self, forKey: .insightsLastSemester) ?? NSLocalizedString(CodingKeys.insightsLastSemester.rawValue, comment: .empty)
        self.insightsNoHistory = try container.decodeIfPresent(String.self, forKey: .insightsNoHistory) ?? NSLocalizedString(CodingKeys.insightsNoHistory.rawValue, comment: .empty)
        self.insightsNoInsights = try container.decodeIfPresent(String.self, forKey: .insightsNoInsights) ?? NSLocalizedString(CodingKeys.insightsNoInsights.rawValue, comment: .empty)
        self.insightsNoInsightsNoLogin = try container.decodeIfPresent(String.self, forKey: .insightsNoInsightsNoLogin) ?? NSLocalizedString(CodingKeys.insightsNoInsightsNoLogin.rawValue, comment: .empty)
        self.insightsNoHistoryNoLogin = try container.decodeIfPresent(String.self, forKey: .insightsNoHistoryNoLogin) ?? NSLocalizedString(CodingKeys.insightsNoHistoryNoLogin.rawValue, comment: .empty)
        self.insightsMyVehicles = try container.decodeIfPresent(String.self, forKey: .insightsMyVehicles) ?? NSLocalizedString(CodingKeys.insightsMyVehicles.rawValue, comment: .empty)
        self.insightsTotalChargingTime = try container.decodeIfPresent(String.self, forKey: .insightsTotalChargingTime) ?? NSLocalizedString(CodingKeys.insightsTotalChargingTime.rawValue, comment: .empty)
        self.insightsTotalSessions = try container.decodeIfPresent(String.self, forKey: .insightsTotalSessions) ?? NSLocalizedString(CodingKeys.insightsTotalSessions.rawValue, comment: .empty)
        self.insightsTotalCost = try container.decodeIfPresent(String.self, forKey: .insightsTotalCost) ?? NSLocalizedString(CodingKeys.insightsTotalCost.rawValue, comment: .empty)
        self.insightsTotalEnergy = try container.decodeIfPresent(String.self, forKey: .insightsTotalEnergy) ?? NSLocalizedString(CodingKeys.insightsTotalEnergy.rawValue, comment: .empty)
        self.insightsCo2Emitted = try container.decodeIfPresent(String.self, forKey: .insightsCo2Emitted) ?? NSLocalizedString(CodingKeys.insightsCo2Emitted.rawValue, comment: .empty)
        self.insightsMyChargingStations = try container.decodeIfPresent(String.self, forKey: .insightsMyChargingStations) ?? NSLocalizedString(CodingKeys.insightsMyChargingStations.rawValue, comment: .empty)
        self.insightsIncome = try container.decodeIfPresent(String.self, forKey: .insightsIncome) ?? NSLocalizedString(CodingKeys.insightsIncome.rawValue, comment: .empty)
        self.insightsMyRating = try container.decodeIfPresent(String.self, forKey: .insightsMyRating) ?? NSLocalizedString(CodingKeys.insightsMyRating.rawValue, comment: .empty)
        self.insightsChargingTimePerSession = try container.decodeIfPresent(String.self, forKey: .insightsChargingTimePerSession) ?? NSLocalizedString(CodingKeys.insightsChargingTimePerSession.rawValue, comment: .empty)
        self.insightsEnergyConsumptionPerSession = try container.decodeIfPresent(String.self, forKey: .insightsEnergyConsumptionPerSession) ?? NSLocalizedString(CodingKeys.insightsEnergyConsumptionPerSession.rawValue, comment: .empty)
        self.insightsFavoriteCharger = try container.decodeIfPresent(String.self, forKey: .insightsFavoriteCharger) ?? NSLocalizedString(CodingKeys.insightsFavoriteCharger.rawValue, comment: .empty)
        self.insightsMostUsedPlug = try container.decodeIfPresent(String.self, forKey: .insightsMostUsedPlug) ?? NSLocalizedString(CodingKeys.insightsMostUsedPlug.rawValue, comment: .empty)
        // MARK: - BLOCKED VIEW KEYS
        self.blockedViewUpdateBt = try container.decodeIfPresent(String.self, forKey: .blockedViewUpdateBt) ?? NSLocalizedString(CodingKeys.blockedViewUpdateBt.rawValue, comment: .empty)
        self.blockedViewTextInfo = try container.decodeIfPresent(String.self, forKey: .blockedViewTextInfo) ?? NSLocalizedString(CodingKeys.blockedViewTextInfo.rawValue, comment: .empty)
        self.blockedViewPaymentError = try container.decodeIfPresent(String.self, forKey: .blockedViewPaymentError) ?? NSLocalizedString(CodingKeys.blockedViewPaymentError.rawValue, comment: .empty)
        // MARK: - COMPARATOR VIEW KEYS
        self.comparatorTitle = try container.decodeIfPresent(String.self, forKey: .comparatorTitle) ?? NSLocalizedString(CodingKeys.comparatorTitle.rawValue, comment: .empty)
        self.comparatorChargingPoint = try container.decodeIfPresent(String.self, forKey: .comparatorChargingPoint) ?? NSLocalizedString(CodingKeys.comparatorChargingPoint.rawValue, comment: .empty)
        self.comparatorPlugPower = try container.decodeIfPresent(String.self, forKey: .comparatorPlugPower) ?? NSLocalizedString(CodingKeys.comparatorPlugPower.rawValue, comment: .empty)
        self.comparatorChargingDuration = try container.decodeIfPresent(String.self, forKey: .comparatorChargingDuration) ?? NSLocalizedString(CodingKeys.comparatorChargingDuration.rawValue, comment: .empty)
        self.comparatorTotalCost = try container.decodeIfPresent(String.self, forKey: .comparatorTotalCost) ?? NSLocalizedString(CodingKeys.comparatorTotalCost.rawValue, comment: .empty)
        self.comparatorAverageCost = try container.decodeIfPresent(String.self, forKey: .comparatorAverageCost) ?? NSLocalizedString(CodingKeys.comparatorAverageCost.rawValue, comment: .empty)
        self.comparatorMyChargers = try container.decodeIfPresent(String.self, forKey: .comparatorMyChargers) ?? NSLocalizedString(CodingKeys.comparatorMyChargers.rawValue, comment: .empty)
        self.comparatorOtherChargers = try container.decodeIfPresent(String.self, forKey: .comparatorOtherChargers) ?? NSLocalizedString(CodingKeys.comparatorOtherChargers.rawValue, comment: .empty)
        self.comparatorFavourites = try container.decodeIfPresent(String.self, forKey: .comparatorFavourites) ?? NSLocalizedString(CodingKeys.comparatorFavourites.rawValue, comment: .empty)
        self.comparatorChooseChargingPoint = try container.decodeIfPresent(String.self, forKey: .comparatorChooseChargingPoint) ?? NSLocalizedString(CodingKeys.comparatorChooseChargingPoint.rawValue, comment: .empty)
        self.comparatorCompareButton = try container.decodeIfPresent(String.self, forKey: .comparatorCompareButton) ?? NSLocalizedString(CodingKeys.comparatorCompareButton.rawValue, comment: .empty)
        self.comparatorChoosePlugToCompare = try container.decodeIfPresent(String.self, forKey: .comparatorChoosePlugToCompare) ?? NSLocalizedString(CodingKeys.comparatorChoosePlugToCompare.rawValue, comment: .empty)
        self.comparatorPlugAlreadyBeingCompared = try container.decodeIfPresent(String.self, forKey: .comparatorPlugAlreadyBeingCompared) ?? NSLocalizedString(CodingKeys.comparatorPlugAlreadyBeingCompared.rawValue, comment: .empty)
        self.comparatorEnergy = try container.decodeIfPresent(String.self, forKey: .comparatorEnergy) ?? NSLocalizedString(CodingKeys.comparatorEnergy.rawValue, comment: .empty)
        self.comparatorCheckTariff = try container.decodeIfPresent(String.self, forKey: .comparatorCheckTariff) ?? NSLocalizedString(CodingKeys.comparatorCheckTariff.rawValue, comment: .empty)
        self.comparatorPickFromMap = try container.decodeIfPresent(String.self, forKey: .comparatorPickFromMap) ?? NSLocalizedString(CodingKeys.comparatorPickFromMap.rawValue, comment: .empty)
        self.comparatorPickChargingPoint = try container.decodeIfPresent(String.self, forKey: .comparatorPickChargingPoint) ?? NSLocalizedString(CodingKeys.comparatorPickChargingPoint.rawValue, comment: .empty)
        self.comparatorAddToCompare = try container.decodeIfPresent(String.self, forKey: .comparatorAddToCompare) ?? NSLocalizedString(CodingKeys.comparatorAddToCompare.rawValue, comment: .empty)
        // MARK: - HISTORY VIEW KEYS
        self.historyPaymentBillingInfoPaid = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoPaid) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaid.rawValue, comment: .empty)
        self.historyPaymentBillingInfoPaidAndBilled = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoPaidAndBilled) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaidAndBilled.rawValue, comment: .empty)
        self.historyPaymentBillingInfoToProcess = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoToProcess) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoToProcess.rawValue, comment: .empty)
        self.historyPaymentBillingInfoNotApplicable = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoNotApplicable) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoNotApplicable.rawValue, comment: .empty)
        self.historyPaymentBillingInfoFailedBilling = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoFailedBilling) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedBilling.rawValue, comment: .empty)
        self.historyPaymentBillingInfoFailedPayment = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoFailedPayment) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedPayment.rawValue, comment: .empty)
        self.historyPaymentBillingInfoBilledAndNotPaid = try container.decodeIfPresent(String.self, forKey: .historyPaymentBillingInfoBilledAndNotPaid) ?? NSLocalizedString(CodingKeys.historyPaymentBillingInfoBilledAndNotPaid.rawValue, comment: .empty)
        self.historyDownloadMessage = try container.decodeIfPresent(String.self, forKey: .historyDownloadMessage) ?? NSLocalizedString(CodingKeys.historyDownloadMessage.rawValue, comment: .empty)
        self.historyPaymentStatus = try container.decodeIfPresent(String.self, forKey: .historyPaymentStatus) ?? NSLocalizedString(CodingKeys.historyPaymentStatus.rawValue, comment: .empty)
        self.historyStartDate = try container.decodeIfPresent(String.self, forKey: .historyStartDate) ?? NSLocalizedString(CodingKeys.historyStartDate.rawValue, comment: .empty)
        self.historyStopDate = try container.decodeIfPresent(String.self, forKey: .historyStopDate) ?? NSLocalizedString(CodingKeys.historyStopDate.rawValue, comment: .empty)
        self.historyDonwloadSuccess = try container.decodeIfPresent(String.self, forKey: .historyDonwloadSuccess) ?? NSLocalizedString(CodingKeys.historyDonwloadSuccess.rawValue, comment: .empty)
        // MARK: - INFO TARIFF MOBIE KEYS
        self.infoTariffMobiePerMinuteMinMaxDuration = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerMinuteMinMaxDuration) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxDuration.rawValue, comment: .empty)
        self.infoTariffMobiePerMinuteMinMaxKwh = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerMinuteMinMaxKwh) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxKwh.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhStartEndTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhStartEndTime) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndTime.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhStartEndDate = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhStartEndDate) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndDate.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhMaxMinKwh = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhMaxMinKwh) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMaxMinKwh.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhMinMaxDuration = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhMinMaxDuration) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMinMaxDuration.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhDayOfWeek = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePerKwhDayOfWeek) ?? NSLocalizedString(CodingKeys.infoTariffMobiePerKwhDayOfWeek.rawValue, comment: .empty)
        self.infoTariffMobieSimulatePercent = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulatePercent) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulatePercent.rawValue, comment: .empty)
        self.infoTariffMobieSimulateTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulateTime) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulateTime.rawValue, comment: .empty)
        self.infoTariffMobieStart = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieStart) ?? NSLocalizedString(CodingKeys.infoTariffMobieStart.rawValue, comment: .empty)
        self.infoTariffMobieReturn = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieReturn) ?? NSLocalizedString(CodingKeys.infoTariffMobieReturn.rawValue, comment: .empty)
        self.infoTariffMobieSimulationByTime = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationByTime) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationByTime.rawValue, comment: .empty)
        self.infoTariffMobieDay = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDay) ?? NSLocalizedString(CodingKeys.infoTariffMobieDay.rawValue, comment: .empty)
        self.infoTariffMobieHour = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieHour) ?? NSLocalizedString(CodingKeys.infoTariffMobieHour.rawValue, comment: .empty)
        self.infoTariffMobieSimulationByPercentage = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationByPercentage) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationByPercentage.rawValue, comment: .empty)
        self.infoTariffMobieSimulationPrice = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieSimulationPrice) ?? NSLocalizedString(CodingKeys.infoTariffMobieSimulationPrice.rawValue, comment: .empty)
        self.infoTariffMobieDurationRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDurationRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDurationRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDayRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDayRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDayRestriction.rawValue, comment: .empty)
        self.infoTariffMobieTimeRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieTimeRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieTimeRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDateRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDateRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDateRestriction.rawValue, comment: .empty)
        self.infoTariffMobieEnergyRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieEnergyRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieEnergyRestriction.rawValue, comment: .empty)
        self.infoTariffMobieCurrentRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieCurrentRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieCurrentRestriction.rawValue, comment: .empty)
        self.infoTariffMobiePowerRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobiePowerRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobiePowerRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDefaultRestriction = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieDefaultRestriction) ?? NSLocalizedString(CodingKeys.infoTariffMobieDefaultRestriction.rawValue, comment: .empty)
        self.infoTariffMobieBetween = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieBetween) ?? NSLocalizedString(CodingKeys.infoTariffMobieBetween.rawValue, comment: .empty)
        self.infoTariffMobieAfter = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieAfter) ?? NSLocalizedString(CodingKeys.infoTariffMobieAfter.rawValue, comment: .empty)
        self.infoTariffMobieBefore = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieBefore) ?? NSLocalizedString(CodingKeys.infoTariffMobieBefore.rawValue, comment: .empty)
        self.infoTariffMobieAnd = try container.decodeIfPresent(String.self, forKey: .infoTariffMobieAnd) ?? NSLocalizedString(CodingKeys.infoTariffMobieAnd.rawValue, comment: .empty)
        // MARK: - CANCEL CARD VIEW KEYS
        self.cancelCardCancelCard = try container.decodeIfPresent(String.self, forKey: .cancelCardCancelCard) ?? NSLocalizedString(CodingKeys.cancelCardCancelCard.rawValue, comment: .empty)
        self.cancelCardDescription = try container.decodeIfPresent(String.self, forKey: .cancelCardDescription) ?? NSLocalizedString(CodingKeys.cancelCardDescription.rawValue, comment: .empty)
        self.cancelCardDescriptionHint = try container.decodeIfPresent(String.self, forKey: .cancelCardDescriptionHint) ?? NSLocalizedString(CodingKeys.cancelCardDescriptionHint.rawValue, comment: .empty)
        self.cancelCardReason = try container.decodeIfPresent(String.self, forKey: .cancelCardReason) ?? NSLocalizedString(CodingKeys.cancelCardReason.rawValue, comment: .empty)
        self.cancelCardLost = try container.decodeIfPresent(String.self, forKey: .cancelCardLost) ?? NSLocalizedString(CodingKeys.cancelCardLost.rawValue, comment: .empty)
        self.cancelCardTheft = try container.decodeIfPresent(String.self, forKey: .cancelCardTheft) ?? NSLocalizedString(CodingKeys.cancelCardTheft.rawValue, comment: .empty)
        self.cancelCardOther = try container.decodeIfPresent(String.self, forKey: .cancelCardOther) ?? NSLocalizedString(CodingKeys.cancelCardOther.rawValue, comment: .empty)
        self.cancelCardWantReplacement = try container.decodeIfPresent(String.self, forKey: .cancelCardWantReplacement) ?? NSLocalizedString(CodingKeys.cancelCardWantReplacement.rawValue, comment: .empty)
        self.cancelCardSuccessCanceledMessage = try container.decodeIfPresent(String.self, forKey: .cancelCardSuccessCanceledMessage) ?? NSLocalizedString(CodingKeys.cancelCardSuccessCanceledMessage.rawValue, comment: .empty)
        // MARK: - ACTIVATE NETWORK VIEW KEYS PROPERTIES
        self.activateNetworkGireve = try container.decodeIfPresent(String.self, forKey: .activateNetworkGireve) ?? NSLocalizedString(CodingKeys.activateNetworkGireve.rawValue, comment: .empty)
        self.activateNetworkMobie = try container.decodeIfPresent(String.self, forKey: .activateNetworkMobie) ?? NSLocalizedString(CodingKeys.activateNetworkMobie.rawValue, comment: .empty)
        // MARK: - MAP LIST VIEW KEYS PROPERTIES
        self.mapListTitle = try container.decodeIfPresent(String.self, forKey: .mapListTitle) ?? NSLocalizedString(CodingKeys.mapListTitle.rawValue, comment: .empty)
        self.mapListRelevance = try container.decodeIfPresent(String.self, forKey: .mapListRelevance) ?? NSLocalizedString(CodingKeys.mapListRelevance.rawValue, comment: .empty)
        self.mapListPrice = try container.decodeIfPresent(String.self, forKey: .mapListPrice) ?? NSLocalizedString(CodingKeys.mapListPrice.rawValue, comment: .empty)
        self.mapListDistance = try container.decodeIfPresent(String.self, forKey: .mapListDistance) ?? NSLocalizedString(CodingKeys.mapListDistance.rawValue, comment: .empty)
        // MARK: - ACP ASSISTENCE VIEW PROPERTIES
        self.acpAssistanceTitle = try container.decodeIfPresent(String.self, forKey: .acpAssistanceTitle) ?? NSLocalizedString(CodingKeys.acpAssistanceTitle.rawValue, comment: .empty)
        self.acpAssistancePhoneNumber = try container.decodeIfPresent(String.self, forKey: .acpAssistancePhoneNumber) ?? NSLocalizedString(CodingKeys.acpAssistancePhoneNumber.rawValue, comment: .empty)
        self.acpCardNumberNotFilled = try container.decodeIfPresent(String.self, forKey: .acpCardNumberNotFilled) ?? NSLocalizedString(CodingKeys.acpCardNumberNotFilled.rawValue, comment: .empty)
        self.acpNoChargersFoundForList = try container.decodeIfPresent(String.self, forKey: .acpNoChargersFoundForList) ?? NSLocalizedString(CodingKeys.acpNoChargersFoundForList.rawValue, comment: .empty)
    }
    
    public init() {
        // MARK: - GENERAL DEFAULT KEYS
        self.generalNoInternetConnection = NSLocalizedString(CodingKeys.generalNoInternetConnection.rawValue, comment: .empty)
        self.generalNoInternetConnectionMessage = NSLocalizedString(CodingKeys.generalNoInternetConnectionMessage.rawValue, comment: .empty)
        self.generalOk = NSLocalizedString(CodingKeys.generalOk.rawValue, comment: .empty)
        self.generalLess = NSLocalizedString(CodingKeys.generalLess.rawValue, comment: .empty)
        self.generalMore = NSLocalizedString(CodingKeys.generalMore.rawValue, comment: .empty)
        self.generalAvailableSoon = NSLocalizedString(CodingKeys.generalAvailableSoon.rawValue, comment: .empty)
        self.generalPlusVat = NSLocalizedString(CodingKeys.generalPlusVat.rawValue, comment: .empty)
        self.generalUnidentifiedEv = NSLocalizedString(CodingKeys.generalUnidentifiedEv.rawValue, comment: .empty)
        self.generalInfoNotAvailable = NSLocalizedString(CodingKeys.generalInfoNotAvailable.rawValue, comment: .empty)
        self.generalCameraOrLibraryTitle = NSLocalizedString(CodingKeys.generalCameraOrLibraryTitle.rawValue, comment: .empty)
        self.generalCameraBtn = NSLocalizedString(CodingKeys.generalCameraBtn.rawValue, comment: .empty)
        self.generalLibraryBtn = NSLocalizedString(CodingKeys.generalLibraryBtn.rawValue, comment: .empty)
        self.generalEmail = NSLocalizedString(CodingKeys.generalEmail.rawValue, comment: .empty)
        self.generalPhoneNumber = NSLocalizedString(CodingKeys.generalPhoneNumber.rawValue, comment: .empty)
        self.generalTypeHere = NSLocalizedString(CodingKeys.generalTypeHere.rawValue, comment: .empty)
        self.generalName = NSLocalizedString(CodingKeys.generalName.rawValue, comment: .empty)
        self.generalPassword = NSLocalizedString(CodingKeys.generalPassword.rawValue, comment: .empty)
        self.generalOldPassword = NSLocalizedString(CodingKeys.generalOldPassword.rawValue, comment: .empty)
        self.generalRepeatPassword = NSLocalizedString(CodingKeys.generalRepeatPassword.rawValue, comment: .empty)
        self.generalNext = NSLocalizedString(CodingKeys.generalNext.rawValue, comment: .empty)
        self.generalInvalidEmail = NSLocalizedString(CodingKeys.generalInvalidEmail.rawValue, comment: .empty)
        self.generalInvalidPhoneNumber = NSLocalizedString(CodingKeys.generalInvalidPhoneNumber.rawValue, comment: .empty)
        self.generalPasswordRequired = NSLocalizedString(CodingKeys.generalPasswordRequired.rawValue, comment: .empty)
        self.generalCode = NSLocalizedString(CodingKeys.generalCode.rawValue, comment: .empty)
        self.generalPasswordNotValid = NSLocalizedString(CodingKeys.generalPasswordNotValid.rawValue, comment: .empty)
        self.generalPasswordsDoNotMatch = NSLocalizedString(CodingKeys.generalPasswordsDoNotMatch.rawValue, comment: .empty)
        self.generalCancel = NSLocalizedString(CodingKeys.generalCancel.rawValue, comment: .empty)
        self.generalSearch = NSLocalizedString(CodingKeys.generalSearch.rawValue, comment: .empty)
        self.generalGenericErrorMessage = NSLocalizedString(CodingKeys.generalGenericErrorMessage.rawValue, comment: .empty)
        self.generalErrorSharingQrCode = NSLocalizedString(CodingKeys.generalErrorSharingQrCode.rawValue, comment: .empty)
        self.generalQrCodeSavedSuccessfully = NSLocalizedString(CodingKeys.generalQrCodeSavedSuccessfully.rawValue, comment: .empty)
        self.generalQrCodeSaveFailed = NSLocalizedString(CodingKeys.generalQrCodeSaveFailed.rawValue, comment: .empty)
        self.generalSave = NSLocalizedString(CodingKeys.generalSave.rawValue, comment: .empty)
        self.generalYes = NSLocalizedString(CodingKeys.generalYes.rawValue, comment: .empty)
        self.generalNo = NSLocalizedString(CodingKeys.generalNo.rawValue, comment: .empty)
        self.generalType = NSLocalizedString(CodingKeys.generalType.rawValue, comment: .empty)
        self.generalStreet = NSLocalizedString(CodingKeys.generalStreet.rawValue, comment: .empty)
        self.generalCity = NSLocalizedString(CodingKeys.generalCity.rawValue, comment: .empty)
        self.generalCountry = NSLocalizedString(CodingKeys.generalCountry.rawValue, comment: .empty)
        self.generalNumber = NSLocalizedString(CodingKeys.generalNumber.rawValue, comment: .empty)
        self.generalZipCode = NSLocalizedString(CodingKeys.generalZipCode.rawValue, comment: .empty)
        self.generalOther = NSLocalizedString(CodingKeys.generalOther.rawValue, comment: .empty)
        self.generalNameRequired = NSLocalizedString(CodingKeys.generalNameRequired.rawValue, comment: .empty)
        self.generalStreetRequired = NSLocalizedString(CodingKeys.generalStreetRequired.rawValue, comment: .empty)
        self.generalCityRequired = NSLocalizedString(CodingKeys.generalCityRequired.rawValue, comment: .empty)
        self.generalDoorNumberRequired = NSLocalizedString(CodingKeys.generalDoorNumberRequired.rawValue, comment: .empty)
        self.generalZipCodeRequired = NSLocalizedString(CodingKeys.generalZipCodeRequired.rawValue, comment: .empty)
        self.generalZipCodeNotValid = NSLocalizedString(CodingKeys.generalZipCodeNotValid.rawValue, comment: .empty)
        self.generalContractTypeFleet = NSLocalizedString(CodingKeys.generalContractTypeFleet.rawValue, comment: .empty)
        self.generalContractTypeUser = NSLocalizedString(CodingKeys.generalContractTypeUser.rawValue, comment: .empty)
        self.generalTariff = NSLocalizedString(CodingKeys.generalTariff.rawValue, comment: .empty)
        self.generalTin = NSLocalizedString(CodingKeys.generalTin.rawValue, comment: .empty)
        self.generalActivate = NSLocalizedString(CodingKeys.generalActivate.rawValue, comment: .empty)
        self.generalCardNumber = NSLocalizedString(CodingKeys.generalCardNumber.rawValue, comment: .empty)
        self.generalAddress = NSLocalizedString(CodingKeys.generalAddress.rawValue, comment: .empty)
        self.generalFieldRequired = NSLocalizedString(CodingKeys.generalFieldRequired.rawValue, comment: .empty)
        self.generalTinNumberInvalid = NSLocalizedString(CodingKeys.generalTinNumberInvalid.rawValue, comment: .empty)
        self.generalEdit = NSLocalizedString(CodingKeys.generalEdit.rawValue, comment: .empty)
        self.generalRemove = NSLocalizedString(CodingKeys.generalRemove.rawValue, comment: .empty)
        self.generalDelete = NSLocalizedString(CodingKeys.generalDelete.rawValue, comment: .empty)
        self.generalNotes = NSLocalizedString(CodingKeys.generalNotes.rawValue, comment: .empty)
        self.generalLicensePlate = NSLocalizedString(CodingKeys.generalLicensePlate.rawValue, comment: .empty)
        self.generalPrimary = NSLocalizedString(CodingKeys.generalPrimary.rawValue, comment: .empty)
        self.generalNetworks = NSLocalizedString(CodingKeys.generalNetworks.rawValue, comment: .empty)
        self.generalPayment = NSLocalizedString(CodingKeys.generalPayment.rawValue, comment: .empty)
        self.generalDriver = NSLocalizedString(CodingKeys.generalDriver.rawValue, comment: .empty)
        self.generalEvOwner = NSLocalizedString(CodingKeys.generalEvOwner.rawValue, comment: .empty)
        self.generalCompany = NSLocalizedString(CodingKeys.generalCompany.rawValue, comment: .empty)
        self.generalMyself = NSLocalizedString(CodingKeys.generalMyself.rawValue, comment: .empty)
        self.generalDuration = NSLocalizedString(CodingKeys.generalDuration.rawValue, comment: .empty)
        self.generalEnergySupplied = NSLocalizedString(CodingKeys.generalEnergySupplied.rawValue, comment: .empty)
        self.generalInstantPower = NSLocalizedString(CodingKeys.generalInstantPower.rawValue, comment: .empty)
        self.generalCost = NSLocalizedString(CodingKeys.generalCost.rawValue, comment: .empty)
        self.generalDurationPlaceholder = NSLocalizedString(CodingKeys.generalDurationPlaceholder.rawValue, comment: .empty)
        self.generalEnergySuppliedPlaceholder = NSLocalizedString(CodingKeys.generalEnergySuppliedPlaceholder.rawValue, comment: .empty)
        self.generalInstantPowerPlaceholder = NSLocalizedString(CodingKeys.generalInstantPowerPlaceholder.rawValue, comment: .empty)
        self.generalCostPlaceholder = NSLocalizedString(CodingKeys.generalCostPlaceholder.rawValue, comment: .empty)
        self.generalTimeLeft = NSLocalizedString(CodingKeys.generalTimeLeft.rawValue, comment: .empty)
        self.generalBattery = NSLocalizedString(CodingKeys.generalBattery.rawValue, comment: .empty)
        self.generalUnlockPlug = NSLocalizedString(CodingKeys.generalUnlockPlug.rawValue, comment: .empty)
        self.generalEstimatedPriceInfo = NSLocalizedString(CodingKeys.generalEstimatedPriceInfo.rawValue, comment: .empty)
        self.generalVatNotIncluded = NSLocalizedString(CodingKeys.generalVatNotIncluded.rawValue, comment: .empty)
        self.generalPriceOnEmptyHours = NSLocalizedString(CodingKeys.generalPriceOnEmptyHours.rawValue, comment: .empty)
        self.generalPriceOnFullHours = NSLocalizedString(CodingKeys.generalPriceOnFullHours.rawValue, comment: .empty)
        self.generalPriceOn = NSLocalizedString(CodingKeys.generalPriceOn.rawValue, comment: .empty)
        self.generalEnergyBased = NSLocalizedString(CodingKeys.generalEnergyBased.rawValue, comment: .empty)
        self.generalTimeBased = NSLocalizedString(CodingKeys.generalTimeBased.rawValue, comment: .empty)
        self.generalBooking = NSLocalizedString(CodingKeys.generalBooking.rawValue, comment: .empty)
        self.generalCharging = NSLocalizedString(CodingKeys.generalCharging.rawValue, comment: .empty)
        self.generalParking = NSLocalizedString(CodingKeys.generalParking.rawValue, comment: .empty)
        self.generalActivation = NSLocalizedString(CodingKeys.generalActivation.rawValue, comment: .empty)
        self.generalOhNoTitle = NSLocalizedString(CodingKeys.generalOhNoTitle.rawValue, comment: .empty)
        self.generalSomethingWentWrong = NSLocalizedString(CodingKeys.generalSomethingWentWrong.rawValue, comment: .empty)
        self.generalSend = NSLocalizedString(CodingKeys.generalSend.rawValue, comment: .empty)
        self.generalUnlockCableSuccessMessage = NSLocalizedString(CodingKeys.generalUnlockCableSuccessMessage.rawValue, comment: .empty)
        self.generalAdd = NSLocalizedString(CodingKeys.generalAdd.rawValue, comment: .empty)
        self.generalOccupied = NSLocalizedString(CodingKeys.generalOccupied.rawValue, comment: .empty)
        self.generalFree = NSLocalizedString(CodingKeys.generalFree.rawValue, comment: .empty)
        self.generalOffline = NSLocalizedString(CodingKeys.generalOffline.rawValue, comment: .empty)
        self.generalPublic = NSLocalizedString(CodingKeys.generalPublic.rawValue, comment: .empty)
        self.generalRestrict = NSLocalizedString(CodingKeys.generalRestrict.rawValue, comment: .empty)
        self.generalPrivate = NSLocalizedString(CodingKeys.generalPrivate.rawValue, comment: .empty)
        self.generalAvailableImagesToTake = NSLocalizedString(CodingKeys.generalAvailableImagesToTake.rawValue, comment: .empty)
        self.generalLocation = NSLocalizedString(CodingKeys.generalLocation.rawValue, comment: .empty)
        self.generalDefault = NSLocalizedString(CodingKeys.generalDefault.rawValue, comment: .empty)
        self.generalAddImages = NSLocalizedString(CodingKeys.generalAddImages.rawValue, comment: .empty)
        self.generalConfirm = NSLocalizedString(CodingKeys.generalConfirm.rawValue, comment: .empty)
        self.generalCopied = NSLocalizedString(CodingKeys.generalCopied.rawValue, comment: .empty)
        self.generalSent = NSLocalizedString(CodingKeys.generalSent.rawValue, comment: .empty)
        self.generalPlug = NSLocalizedString(CodingKeys.generalPlug.rawValue, comment: .empty)
        self.generalPlugs = NSLocalizedString(CodingKeys.generalPlugs.rawValue, comment: .empty)
        self.generalOf = NSLocalizedString(CodingKeys.generalOf.rawValue, comment: .empty)
        self.generalPage = NSLocalizedString(CodingKeys.generalPage.rawValue, comment: .empty)
        self.generalNoEvs = NSLocalizedString(CodingKeys.generalNoEvs.rawValue, comment: .empty)
        self.generalGoToMyEvs = NSLocalizedString(CodingKeys.generalGoToMyEvs.rawValue, comment: .empty)
        self.generalDownload = NSLocalizedString(CodingKeys.generalDownload.rawValue, comment: .empty)
        // MARK: - OTHER DEFAULT KEYS
        self.appNeedsToBeUpdated = NSLocalizedString(CodingKeys.appNeedsToBeUpdated.rawValue, comment: .empty)
        self.chargerCannotBeUsed = NSLocalizedString(CodingKeys.chargerCannotBeUsed.rawValue, comment: .empty)
        self.locationServicesAlertTitle = NSLocalizedString(CodingKeys.locationServicesAlertTitle.rawValue, comment: .empty)
        self.locationServicesAlertMessage = NSLocalizedString(CodingKeys.locationServicesAlertMessage.rawValue, comment: .empty)
        self.locationsServicesAlertEnableButton = NSLocalizedString(CodingKeys.locationsServicesAlertEnableButton.rawValue, comment: .empty)
        self.libraryPermissionAlertTitle = NSLocalizedString(CodingKeys.libraryPermissionAlertTitle.rawValue, comment: .empty)
        self.libraryPermissionAlertMessage = NSLocalizedString(CodingKeys.libraryPermissionAlertMessage.rawValue, comment: .empty)
        self.libraryPermissionAlertEnableButton = NSLocalizedString(CodingKeys.libraryPermissionAlertEnableButton.rawValue, comment: .empty)
        self.cameraPermissionAlertTitle = NSLocalizedString(CodingKeys.cameraPermissionAlertTitle.rawValue, comment: .empty)
        self.cameraPermissionAlertMesage = NSLocalizedString(CodingKeys.cameraPermissionAlertMesage.rawValue, comment: .empty)
        self.cameraPermissionAlertEnableButton = NSLocalizedString(CodingKeys.cameraPermissionAlertEnableButton.rawValue, comment: .empty)
        self.contactsPermissionAlertTitle = NSLocalizedString(CodingKeys.contactsPermissionAlertTitle.rawValue, comment: .empty)
        self.contactsPermissionAlertMessage = NSLocalizedString(CodingKeys.contactsPermissionAlertMessage.rawValue, comment: .empty)
        self.contactsPermissionAlertEnableButton = NSLocalizedString(CodingKeys.contactsPermissionAlertEnableButton.rawValue, comment: .empty)
        self.messageLimitAddObjects = NSLocalizedString(CodingKeys.messageLimitAddObjects.rawValue, comment: .empty)
        self.networkRoaming = NSLocalizedString(CodingKeys.networkRoaming.rawValue, comment: .empty)
        self.networkOthers = NSLocalizedString(CodingKeys.networkOthers.rawValue, comment: .empty)
        self.notificationsPermissionAlertTitle = NSLocalizedString(CodingKeys.notificationsPermissionAlertTitle.rawValue, comment: .empty)
        self.notificationsPermissionAlertMessage = NSLocalizedString(CodingKeys.notificationsPermissionAlertMessage.rawValue, comment: .empty)
        self.notificationsPermissionAlertEnableButton = NSLocalizedString(CodingKeys.notificationsPermissionAlertEnableButton.rawValue, comment: .empty)
        // MARK: - SEARCH PAGE DEFAULT KEYS
        self.searchLocations = NSLocalizedString(CodingKeys.searchLocations.rawValue, comment: .empty)
        self.searchChargingStations = NSLocalizedString(CodingKeys.searchChargingStations.rawValue, comment: .empty)
        self.searchRecent = NSLocalizedString(CodingKeys.searchRecent.rawValue, comment: .empty)
        self.searchNoResultsFound = NSLocalizedString(CodingKeys.searchNoResultsFound.rawValue, comment: .empty)
        self.searchAnUnexpectedErrorOccurred = NSLocalizedString(CodingKeys.searchAnUnexpectedErrorOccurred.rawValue, comment: .empty)
        self.searchNoRecents = NSLocalizedString(CodingKeys.searchNoRecents.rawValue, comment: .empty)
        // MARK: - FILTERS PAGE DEFAULT KEYS
        self.filtersTitle = NSLocalizedString(CodingKeys.filtersTitle.rawValue, comment: .empty)
        self.filtersClearFiltersButton = NSLocalizedString(CodingKeys.filtersClearFiltersButton.rawValue, comment: .empty)
        self.filtersAvailableStations = NSLocalizedString(CodingKeys.filtersAvailableStations.rawValue, comment: .empty)
        self.filtersPrice = NSLocalizedString(CodingKeys.filtersPrice.rawValue, comment: .empty)
        self.filtersMin = NSLocalizedString(CodingKeys.filtersMin.rawValue, comment: .empty)
        self.filtersPower = NSLocalizedString(CodingKeys.filtersPower.rawValue, comment: .empty)
        self.filtersKwh = NSLocalizedString(CodingKeys.filtersKwh.rawValue, comment: .empty)
        self.filtersRating = NSLocalizedString(CodingKeys.filtersRating.rawValue, comment: .empty)
        self.filtersMinimum = NSLocalizedString(CodingKeys.filtersMinimum.rawValue, comment: .empty)
        self.filtersNetworks = NSLocalizedString(CodingKeys.filtersNetworks.rawValue, comment: .empty)
        self.filtersOtherNetworks = NSLocalizedString(CodingKeys.filtersOtherNetworks.rawValue, comment: .empty)
        self.filtersEvioNetwork = NSLocalizedString(CodingKeys.filtersEvioNetwork.rawValue, comment: .empty)
        self.filtersTeslaNetwork = NSLocalizedString(CodingKeys.filtersTeslaNetwork.rawValue, comment: .empty)
        self.filtersMyChargers = NSLocalizedString(CodingKeys.filtersMyChargers.rawValue, comment: .empty)
        self.filtersTypeOfConnector = NSLocalizedString(CodingKeys.filtersTypeOfConnector.rawValue, comment: .empty)
        self.filtersVehicles = NSLocalizedString(CodingKeys.filtersVehicles.rawValue, comment: .empty)
        self.filtersParkingType = NSLocalizedString(CodingKeys.filtersParkingType.rawValue, comment: .empty)
        self.filtersApplyButton = NSLocalizedString(CodingKeys.filtersApplyButton.rawValue, comment: .empty)
        self.filtersInformationPrice = NSLocalizedString(CodingKeys.filtersInformationPrice.rawValue, comment: .empty)
        self.filtersMaxPowerEvInfo = NSLocalizedString(CodingKeys.filtersMaxPowerEvInfo.rawValue, comment: .empty)
        self.filtersOnlyAvailable = NSLocalizedString(CodingKeys.filtersOnlyAvailable.rawValue, comment: .empty)
        self.filtersOnlyOnline = NSLocalizedString(CodingKeys.filtersOnlyOnline.rawValue, comment: .empty)
        self.filtersOnlyPerKwh = NSLocalizedString(CodingKeys.filtersOnlyPerKwh.rawValue, comment: .empty)
        self.filtersOnlyPerMin = NSLocalizedString(CodingKeys.filtersOnlyPerMin.rawValue, comment: .empty)
        self.filtersTariff = NSLocalizedString(CodingKeys.filtersTariff.rawValue, comment: .empty)
        self.filtersAvailability = NSLocalizedString(CodingKeys.filtersAvailability.rawValue, comment: .empty)
        // MARK: - FAVOURITES PAGE DEFAULT KEYS
        self.favouritesEmptyViewWithoutLoginSubTitleUnderline = NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitleUnderline.rawValue, comment: .empty)
        self.favouritesEmptyViewTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewTitle.rawValue, comment: .empty)
        self.favouritesEmptyViewSubTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewSubTitle.rawValue, comment: .empty)
        self.favouritesEmptyViewWithoutLoginSubTitle = NSLocalizedString(CodingKeys.favouritesEmptyViewWithoutLoginSubTitle.rawValue, comment: .empty)
        self.favouritesTitle = NSLocalizedString(CodingKeys.favouritesTitle.rawValue, comment: .empty)
        // MARK: - CHARGING POINT PAGE DEFAULT KEYS
        self.chargerDetailsStop = NSLocalizedString(CodingKeys.chargerDetailsStop.rawValue, comment: .empty)
        self.chargerDetailsNetworkPhone = NSLocalizedString(CodingKeys.chargerDetailsNetworkPhone.rawValue, comment: .empty)
        self.chargerDetailsNetworkEmail = NSLocalizedString(CodingKeys.chargerDetailsNetworkEmail.rawValue, comment: .empty)
        self.chargerDetailsPriceEstimative = NSLocalizedString(CodingKeys.chargerDetailsPriceEstimative.rawValue, comment: .empty)
        self.chargerDetailsPower = NSLocalizedString(CodingKeys.chargerDetailsPower.rawValue, comment: .empty)
        self.chargerDetailsBookButton = NSLocalizedString(CodingKeys.chargerDetailsBookButton.rawValue, comment: .empty)
        self.chargerDetailsCharge = NSLocalizedString(CodingKeys.chargerDetailsCharge.rawValue, comment: .empty)
        self.chargerDetailsDistance = NSLocalizedString(CodingKeys.chargerDetailsDistance.rawValue, comment: .empty)
        self.chargerDetailsNotificationCreated = NSLocalizedString(CodingKeys.chargerDetailsNotificationCreated.rawValue, comment: .empty)
        self.chargerDetailsTooFarFromTheCharger = NSLocalizedString(CodingKeys.chargerDetailsTooFarFromTheCharger.rawValue, comment: .empty)
        self.chargerDetailsContract = NSLocalizedString(CodingKeys.chargerDetailsContract.rawValue, comment: .empty)
        self.chargerDetailsNoRFID = NSLocalizedString(CodingKeys.chargerDetailsNoRFID.rawValue, comment: .empty)
        self.chargerDetailsMyEv = NSLocalizedString(CodingKeys.chargerDetailsMyEv.rawValue, comment: .empty)
        self.chargerDetailsAvailability = NSLocalizedString(CodingKeys.chargerDetailsAvailability.rawValue, comment: .empty)
        self.chargerDetailsChargingPointInfo = NSLocalizedString(CodingKeys.chargerDetailsChargingPointInfo.rawValue, comment: .empty)
        self.chargerDetailsChoosePlug = NSLocalizedString(CodingKeys.chargerDetailsChoosePlug.rawValue, comment: .empty)
        self.chargerDetailsEstimateCost = NSLocalizedString(CodingKeys.chargerDetailsEstimateCost.rawValue, comment: .empty)
        self.chargerDetailsKWh = NSLocalizedString(CodingKeys.chargerDetailsKWh.rawValue, comment: .empty)
        self.chargerDetailsParkingType = NSLocalizedString(CodingKeys.chargerDetailsParkingType.rawValue, comment: .empty)
        self.chargerDetailsPointsInterestNearby = NSLocalizedString(CodingKeys.chargerDetailsPointsInterestNearby.rawValue, comment: .empty)
        self.chargerDetailsPrice = NSLocalizedString(CodingKeys.chargerDetailsPrice.rawValue, comment: .empty)
        self.chargerDetailsReportIssue = NSLocalizedString(CodingKeys.chargerDetailsReportIssue.rawValue, comment: .empty)
        self.chargerDetailsTime = NSLocalizedString(CodingKeys.chargerDetailsTime.rawValue, comment: .empty)
        self.chargerDetailsVehicles = NSLocalizedString(CodingKeys.chargerDetailsVehicles.rawValue, comment: .empty)
        self.chargerDetailsChargingPointNoInfo = NSLocalizedString(CodingKeys.chargerDetailsChargingPointNoInfo.rawValue, comment: .empty)
        self.chargerDetailsNoDistance = NSLocalizedString(CodingKeys.chargerDetailsNoDistance.rawValue, comment: .empty)
        self.chargerDetailsNoPlugTariff = NSLocalizedString(CodingKeys.chargerDetailsNoPlugTariff.rawValue, comment: .empty)
        self.chargerDetailsCustomCharge = NSLocalizedString(CodingKeys.chargerDetailsCustomCharge.rawValue, comment: .empty)
        self.chargerDetailsNotifyMeLabel = NSLocalizedString(CodingKeys.chargerDetailsNotifyMeLabel.rawValue, comment: .empty)
        self.chargerDetailsChargeXMin = NSLocalizedString(CodingKeys.chargerDetailsChargeXMin.rawValue, comment: .empty)
        self.chargerDetailsChargeXkWh = NSLocalizedString(CodingKeys.chargerDetailsChargeXkWh.rawValue, comment: .empty)
        self.chargerDetailsSpendOnlyXEuros = NSLocalizedString(CodingKeys.chargerDetailsSpendOnlyXEuros.rawValue, comment: .empty)
        self.chargerDetailsYouAlreadyHaveANotification = NSLocalizedString(CodingKeys.chargerDetailsYouAlreadyHaveANotification.rawValue, comment: .empty)
        self.chargerDetailsChargingScheduling = NSLocalizedString(CodingKeys.chargerDetailsChargingScheduling.rawValue, comment: .empty)
        self.chargerDetailsDatesCannotBeEqual = NSLocalizedString(CodingKeys.chargerDetailsDatesCannotBeEqual.rawValue, comment: .empty)
        self.chargerDetailsChargingTimeCannotBeLongerThan = NSLocalizedString(CodingKeys.chargerDetailsChargingTimeCannotBeLongerThan.rawValue, comment: .empty)
        self.chargerDetailsStart = NSLocalizedString(CodingKeys.chargerDetailsStart.rawValue, comment: .empty)
        self.chargerDetailsSchedule = NSLocalizedString(CodingKeys.chargerDetailsSchedule.rawValue, comment: .empty)
        self.chargerDetailsLowerTariffPeriod = NSLocalizedString(CodingKeys.chargerDetailsLowerTariffPeriod.rawValue, comment: .empty)
        self.chargerDetailsGreenCharging = NSLocalizedString(CodingKeys.chargerDetailsGreenCharging.rawValue, comment: .empty)
        self.chargerDetailsNetwork = NSLocalizedString(CodingKeys.chargerDetailsNetwork.rawValue, comment: .empty)
        self.chargerDetailsOperator = NSLocalizedString(CodingKeys.chargerDetailsOperator.rawValue, comment: .empty)
        self.chargerDetailsChargerIdentifier = NSLocalizedString(CodingKeys.chargerDetailsChargerIdentifier.rawValue, comment: .empty)
        self.chargerDetailsChargerManufacturer = NSLocalizedString(CodingKeys.chargerDetailsChargerManufacturer.rawValue, comment: .empty)
        self.chargerDetailsChargersModel = NSLocalizedString(CodingKeys.chargerDetailsChargersModel.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart1Alt = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1Alt.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart1 = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart1.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSPart2 = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSPart2.rawValue, comment: .empty)
        self.chargerDetailsChargerOccupiediOSBoldPart = NSLocalizedString(CodingKeys.chargerDetailsChargerOccupiediOSBoldPart.rawValue, comment: .empty)
        self.chargerDetailsCemeTariff = NSLocalizedString(CodingKeys.chargerDetailsCemeTariff.rawValue, comment: .empty)
        self.chargerDetailsAlways = NSLocalizedString(CodingKeys.chargerDetailsAlways.rawValue, comment: .empty)
        self.chargerDetailsLimited = NSLocalizedString(CodingKeys.chargerDetailsLimited.rawValue, comment: .empty)
        self.chargerPointFullDetailsThanksForTheImageMessage = NSLocalizedString(CodingKeys.chargerPointFullDetailsThanksForTheImageMessage.rawValue, comment: .empty)
        self.chargerDetailsWrongBehaviorStation = NSLocalizedString(CodingKeys.chargerDetailsWrongBehaviorStation.rawValue, comment: .empty)
        self.chargerDetailsTariff = NSLocalizedString(CodingKeys.chargerDetailsTariff.rawValue, comment: .empty)
        self.chargerDetailsChargerPlugInfoFree = NSLocalizedString(CodingKeys.chargerDetailsChargerPlugInfoFree.rawValue, comment: .empty)
        self.chargerDetailsChargerPlugInfoOccupied = NSLocalizedString(CodingKeys.chargerDetailsChargerPlugInfoOccupied.rawValue, comment: .empty)
        self.chargerPointFullDetailsStopDateShouldBeAfterStartDate = NSLocalizedString(CodingKeys.chargerPointFullDetailsStopDateShouldBeAfterStartDate.rawValue, comment: .empty)
        self.chargerDetailsChargerInfoOffline = NSLocalizedString(CodingKeys.chargerDetailsChargerInfoOffline.rawValue, comment: .empty)
        self.chargerPointFullDetailsChargingTimeMinimumDuration = NSLocalizedString(CodingKeys.chargerPointFullDetailsChargingTimeMinimumDuration.rawValue, comment: .empty)
        self.chargerDetailsGoToPaymentMethods = NSLocalizedString(CodingKeys.chargerDetailsGoToPaymentMethods.rawValue, comment: .empty)
        self.chargerDetailsGoToBillingProfile = NSLocalizedString(CodingKeys.chargerDetailsGoToBillingProfile.rawValue, comment: .empty)
        self.chargerDetailsInfoEstimatedPrice30min = NSLocalizedString(CodingKeys.chargerDetailsInfoEstimatedPrice30min.rawValue, comment: .empty)
        // MARK: - PLUG STATUS DEFAULT KEYS
        self.plugStatusAvailable = NSLocalizedString(CodingKeys.plugStatusAvailable.rawValue, comment: .empty)
        self.plugStatusBlocked = NSLocalizedString(CodingKeys.plugStatusBlocked.rawValue, comment: .empty)
        self.plugStatusCharging = NSLocalizedString(CodingKeys.plugStatusCharging.rawValue, comment: .empty)
        self.plugStatusInoperative = NSLocalizedString(CodingKeys.plugStatusInoperative.rawValue, comment: .empty)
        self.plugStatusOutOfOrder = NSLocalizedString(CodingKeys.plugStatusOutOfOrder.rawValue, comment: .empty)
        self.plugStatusPlanned = NSLocalizedString(CodingKeys.plugStatusPlanned.rawValue, comment: .empty)
        self.plugStatusRemoved = NSLocalizedString(CodingKeys.plugStatusRemoved.rawValue, comment: .empty)
        self.plugStatusBooked = NSLocalizedString(CodingKeys.plugStatusBooked.rawValue, comment: .empty)
        self.plugStatusUnknown = NSLocalizedString(CodingKeys.plugStatusUnknown.rawValue, comment: .empty)
        self.plugStatusMobieOutOfOrderMessage = NSLocalizedString(CodingKeys.plugStatusMobieOutOfOrderMessage.rawValue, comment: .empty)
        // MARK: - ESTIMATED COST PAGE DEFAULT KEYS
        self.estimatedCostInfoTeslaEViOS = NSLocalizedString(CodingKeys.estimatedCostInfoTeslaEViOS.rawValue, comment: .empty)
        self.estimatedCostInfoEVIOEviOS = NSLocalizedString(CodingKeys.estimatedCostInfoEVIOEviOS.rawValue, comment: .empty)
        self.estimatedCostMobieNoEviOS = NSLocalizedString(CodingKeys.estimatedCostMobieNoEviOS.rawValue, comment: .empty)
        self.estimatedCostInfoMobiePart1iOs = NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart1iOs.rawValue, comment: .empty)
        self.estimatedCostInfoMobiePart2iOs = NSLocalizedString(CodingKeys.estimatedCostInfoMobiePart2iOs.rawValue, comment: .empty)
        self.estimatedCostTextInfoTeslaiOS = NSLocalizedString(CodingKeys.estimatedCostTextInfoTeslaiOS.rawValue, comment: .empty)
        self.estimatedCostInfoTeslaWithEViOS = NSLocalizedString(CodingKeys.estimatedCostInfoTeslaWithEViOS.rawValue, comment: .empty)
        self.estimatedCostEVIOHours = NSLocalizedString(CodingKeys.estimatedCostEVIOHours.rawValue, comment: .empty)
        self.estimatedCostEVIOMinutes = NSLocalizedString(CodingKeys.estimatedCostEVIOMinutes.rawValue, comment: .empty)
        self.estimatedCostSelectedPlug = NSLocalizedString(CodingKeys.estimatedCostSelectedPlug.rawValue, comment: .empty)
        self.estimatedCostInfoWalletPrice = NSLocalizedString(CodingKeys.estimatedCostInfoWalletPrice.rawValue, comment: .empty)
        self.estimatedCostEvioActivation = NSLocalizedString(CodingKeys.estimatedCostEvioActivation.rawValue, comment: .empty)
        self.estimatedCostEvioActivationValue = NSLocalizedString(CodingKeys.estimatedCostEvioActivationValue.rawValue, comment: .empty)
        self.estimatedCostTextInfoEvio = NSLocalizedString(CodingKeys.estimatedCostTextInfoEvio.rawValue, comment: .empty)
        self.estimatedCostOpcTariff = NSLocalizedString(CodingKeys.estimatedCostOpcTariff.rawValue, comment: .empty)
        self.estimatedCostCemeTariff = NSLocalizedString(CodingKeys.estimatedCostCemeTariff.rawValue, comment: .empty)
        self.estimatedCostActivation = NSLocalizedString(CodingKeys.estimatedCostActivation.rawValue, comment: .empty)
        self.estimatedCostPerMinute = NSLocalizedString(CodingKeys.estimatedCostPerMinute.rawValue, comment: .empty)
        self.estimatedCostPerKwH = NSLocalizedString(CodingKeys.estimatedCostPerKwH.rawValue, comment: .empty)
        self.estimatedCostFees = NSLocalizedString(CodingKeys.estimatedCostFees.rawValue, comment: .empty)
        self.estimatedCostIec = NSLocalizedString(CodingKeys.estimatedCostIec.rawValue, comment: .empty)
        self.estimatedCostTar = NSLocalizedString(CodingKeys.estimatedCostTar.rawValue, comment: .empty)
        self.estimatedCostVat = NSLocalizedString(CodingKeys.estimatedCostVat.rawValue, comment: .empty)
        self.estimatedCostCeme = NSLocalizedString(CodingKeys.estimatedCostCeme.rawValue, comment: .empty)
        self.estimatedCostOpc = NSLocalizedString(CodingKeys.estimatedCostOpc.rawValue, comment: .empty)
        self.estimatedCostTotal = NSLocalizedString(CodingKeys.estimatedCostTotal.rawValue, comment: .empty)
        self.estimatedCostChargingTime = NSLocalizedString(CodingKeys.estimatedCostChargingTime.rawValue, comment: .empty)
        self.estimatedCostTotalPower = NSLocalizedString(CodingKeys.estimatedCostTotalPower.rawValue, comment: .empty)
        self.estimatedCostParking = NSLocalizedString(CodingKeys.estimatedCostParking.rawValue, comment: .empty)
        self.estimatedCostCharging = NSLocalizedString(CodingKeys.estimatedCostCharging.rawValue, comment: .empty)
        self.estimatedCostBooking = NSLocalizedString(CodingKeys.estimatedCostBooking.rawValue, comment: .empty)
        self.estimatedCostParkingDuringCharging = NSLocalizedString(CodingKeys.estimatedCostParkingDuringCharging.rawValue, comment: .empty)
        self.estimatedCostParkingAfterCharging = NSLocalizedString(CodingKeys.estimatedCostParkingAfterCharging.rawValue, comment: .empty)
        // MARK: - AVALILABILITY DEFAULT KEYS
        self.availabilityTo = NSLocalizedString(CodingKeys.availabilityTo.rawValue, comment: .empty)
        // MARK: - CONTRACTS PAGE DEFAULT KEYS
        self.contractsTitle = NSLocalizedString(CodingKeys.contractsTitle.rawValue, comment: .empty)
        self.contractsRoamingNotActive = NSLocalizedString(CodingKeys.contractsRoamingNotActive.rawValue, comment: .empty)
        self.contractsMyContracts = NSLocalizedString(CodingKeys.contractsMyContracts.rawValue, comment: .empty)
        self.contractsOtherContracts = NSLocalizedString(CodingKeys.contractsOtherContracts.rawValue, comment: .empty)
        self.contractsSelectContract = NSLocalizedString(CodingKeys.contractsSelectContract.rawValue, comment: .empty)
        self.contractsContractNoValidForRoaming = NSLocalizedString(CodingKeys.contractsContractNoValidForRoaming.rawValue, comment: .empty)
        self.contractsContractNotValidForMobie = NSLocalizedString(CodingKeys.contractsContractNotValidForMobie.rawValue, comment: .empty)
        self.contractsContractNoValidForMobieButCanBeUsedForAdHoc = NSLocalizedString(CodingKeys.contractsContractNoValidForMobieButCanBeUsedForAdHoc.rawValue, comment: .empty)
        self.contractsContractNoActiveForEv = NSLocalizedString(CodingKeys.contractsContractNoActiveForEv.rawValue, comment: .empty)
        self.contractsNoOtherContracts = NSLocalizedString(CodingKeys.contractsNoOtherContracts.rawValue, comment: .empty)
        self.contractsNoContracts = NSLocalizedString(CodingKeys.contractsNoContracts.rawValue, comment: .empty)
        self.contractsNoAccessForEvioNetwork = NSLocalizedString(CodingKeys.contractsNoAccessForEvioNetwork.rawValue, comment: .empty)
        self.contractsVirtualCard = NSLocalizedString(CodingKeys.contractsVirtualCard.rawValue, comment: .empty)
        self.contractsVirtualAndPhysicalCard = NSLocalizedString(CodingKeys.contractsVirtualAndPhysicalCard.rawValue, comment: .empty)
        self.contractsChargeVehicleOnNetwork = NSLocalizedString(CodingKeys.contractsChargeVehicleOnNetwork.rawValue, comment: .empty)
        self.contractsAccessToNetwork = NSLocalizedString(CodingKeys.contractsAccessToNetwork.rawValue, comment: .empty)
        self.contractsTariffInfo = NSLocalizedString(CodingKeys.contractsTariffInfo.rawValue, comment: .empty)
        self.contractsTariffInfoEvio = NSLocalizedString(CodingKeys.contractsTariffInfoEvio.rawValue, comment: .empty)
        self.contractsActivateCardButton = NSLocalizedString(CodingKeys.contractsActivateCardButton.rawValue, comment: .empty)
        self.contractsJoinButton = NSLocalizedString(CodingKeys.contractsJoinButton.rawValue, comment: .empty)
        self.contractsNoAccessToNetwork = NSLocalizedString(CodingKeys.contractsNoAccessToNetwork.rawValue, comment: .empty)
        self.contractsAlreadyRequestedAccessToNetwork = NSLocalizedString(CodingKeys.contractsAlreadyRequestedAccessToNetwork.rawValue, comment: .empty)
        self.contractsAdHocAlertPart1 = NSLocalizedString(CodingKeys.contractsAdHocAlertPart1.rawValue, comment: .empty)
        self.contractsAdHocAlertPart2 = NSLocalizedString(CodingKeys.contractsAdHocAlertPart2.rawValue, comment: .empty)
        self.contractsAdHocAlertBoldPart = NSLocalizedString(CodingKeys.contractsAdHocAlertBoldPart.rawValue, comment: .empty)
        self.contractsAdHocAlertNextButton = NSLocalizedString(CodingKeys.contractsAdHocAlertNextButton.rawValue, comment: .empty)
        self.contractsMessageInfoActivationOkGv = NSLocalizedString(CodingKeys.contractsMessageInfoActivationOkGv.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditions = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditionsConditions1 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions1.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditionsConditions2 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditionsConditions2.rawValue, comment: .empty)
        self.contractsMobieTermAndCondGeneralConditions2 = NSLocalizedString(CodingKeys.contractsMobieTermAndCondGeneralConditions2.rawValue, comment: .empty)
        self.contractsMobieGeneralConditionsRequired = NSLocalizedString(CodingKeys.contractsMobieGeneralConditionsRequired.rawValue, comment: .empty)
        self.contractsClientIdentification = NSLocalizedString(CodingKeys.contractsClientIdentification.rawValue, comment: .empty)
        self.contractsCardActivatedSuccessfully = NSLocalizedString(CodingKeys.contractsCardActivatedSuccessfully.rawValue, comment: .empty)
        self.contractsPaymentMethod = NSLocalizedString(CodingKeys.contractsPaymentMethod.rawValue, comment: .empty)
        self.contractsMessageInfoActivationMobie = NSLocalizedString(CodingKeys.contractsMessageInfoActivationMobie.rawValue, comment: .empty)
        // MARK: - EVS PAGE DEFAULT KEYS
        self.evsSelectEvTitle = NSLocalizedString(CodingKeys.evsSelectEvTitle.rawValue, comment: .empty)
        self.evsMyEvs = NSLocalizedString(CodingKeys.evsMyEvs.rawValue, comment: .empty)
        self.evsOtherEvs = NSLocalizedString(CodingKeys.evsOtherEvs.rawValue, comment: .empty)
        self.evsAddVehicle = NSLocalizedString(CodingKeys.evsAddVehicle.rawValue, comment: .empty)
        self.evsNoOtherEvsTitle = NSLocalizedString(CodingKeys.evsNoOtherEvsTitle.rawValue, comment: .empty)
        self.evsNoOtherEvsSubTitle = NSLocalizedString(CodingKeys.evsNoOtherEvsSubTitle.rawValue, comment: .empty)
        self.evsNoOtherEvsSubtitleNoLogin = NSLocalizedString(CodingKeys.evsNoOtherEvsSubtitleNoLogin.rawValue, comment: .empty)
        self.evsNewEv = NSLocalizedString(CodingKeys.evsNewEv.rawValue, comment: .empty)
        self.evsNewEvInfo = NSLocalizedString(CodingKeys.evsNewEvInfo.rawValue, comment: .empty)
        self.evsBrand = NSLocalizedString(CodingKeys.evsBrand.rawValue, comment: .empty)
        self.evsModel = NSLocalizedString(CodingKeys.evsModel.rawValue, comment: .empty)
        self.evsVersion = NSLocalizedString(CodingKeys.evsVersion.rawValue, comment: .empty)
        self.evsChargerPower = NSLocalizedString(CodingKeys.evsChargerPower.rawValue, comment: .empty)
        self.evsRange = NSLocalizedString(CodingKeys.evsRange.rawValue, comment: .empty)
        self.evsBatteryCapacity = NSLocalizedString(CodingKeys.evsBatteryCapacity.rawValue, comment: .empty)
        self.evsChargingTime = NSLocalizedString(CodingKeys.evsChargingTime.rawValue, comment: .empty)
        self.evsInternalChargingPower = NSLocalizedString(CodingKeys.evsInternalChargingPower.rawValue, comment: .empty)
        self.evsFastChargingPower = NSLocalizedString(CodingKeys.evsFastChargingPower.rawValue, comment: .empty)
        self.evsFastChargingTime = NSLocalizedString(CodingKeys.evsFastChargingTime.rawValue, comment: .empty)
        self.evsVehiclePlugs = NSLocalizedString(CodingKeys.evsVehiclePlugs.rawValue, comment: .empty)
        self.evsCharging = NSLocalizedString(CodingKeys.evsCharging.rawValue, comment: .empty)
        self.evsNotCharging = NSLocalizedString(CodingKeys.evsNotCharging.rawValue, comment: .empty)
        self.evsLeaveGroupTitle = NSLocalizedString(CodingKeys.evsLeaveGroupTitle.rawValue, comment: .empty)
        self.evsLeaveGroupMessage = NSLocalizedString(CodingKeys.evsLeaveGroupMessage.rawValue, comment: .empty)
        self.evsDrivers = NSLocalizedString(CodingKeys.evsDrivers.rawValue, comment: .empty)
        self.evsPlafond = NSLocalizedString(CodingKeys.evsPlafond.rawValue, comment: .empty)
        self.evsCompany = NSLocalizedString(CodingKeys.evsCompany.rawValue, comment: .empty)
        self.evsPlafondMovements = NSLocalizedString(CodingKeys.evsPlafondMovements.rawValue, comment: .empty)
        self.evsNoPlafondMovements = NSLocalizedString(CodingKeys.evsNoPlafondMovements.rawValue, comment: .empty)
        self.evsDuration = NSLocalizedString(CodingKeys.evsDuration.rawValue, comment: .empty)
        self.evsMovement = NSLocalizedString(CodingKeys.evsMovement.rawValue, comment: .empty)
        self.evsNetwork = NSLocalizedString(CodingKeys.evsNetwork.rawValue, comment: .empty)
        self.evsCurrentPlafond = NSLocalizedString(CodingKeys.evsCurrentPlafond.rawValue, comment: .empty)
        self.evsMonthlyPlafond = NSLocalizedString(CodingKeys.evsMonthlyPlafond.rawValue, comment: .empty)
        self.evsUsedPlafond = NSLocalizedString(CodingKeys.evsUsedPlafond.rawValue, comment: .empty)
        // MARK: - VALIDATION MESSAGE DEFAULT KEYS
        self.validationMessageProceedNowBt = NSLocalizedString(CodingKeys.validationMessageProceedNowBt.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2iOS = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2iOS.rawValue, comment: .empty)
        self.validationMessageMessageInfoActivationOkGv = NSLocalizedString(CodingKeys.validationMessageMessageInfoActivationOkGv.rawValue, comment: .empty)
        self.validationMessageNotHaveContractRoamingNote = NSLocalizedString(CodingKeys.validationMessageNotHaveContractRoamingNote.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNew = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNew.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNote = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNote.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteUnderline = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteUnderline.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocFooterNoteGenericUnderline = NSLocalizedString(CodingKeys.validationMessageAdhocFooterNoteGenericUnderline.rawValue, comment: .empty)
        self.validationMessageAdhocInfoGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocInfoGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2GenericAndroid = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericAndroid.rawValue, comment: .empty)
        self.validationMessageAdhocInfo2GenericBoldAndroid = NSLocalizedString(CodingKeys.validationMessageAdhocInfo2GenericBoldAndroid.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNewGeneric = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewGeneric.rawValue, comment: .empty)
        self.validationMessageAdhocInfoNewV2Generic = NSLocalizedString(CodingKeys.validationMessageAdhocInfoNewV2Generic.rawValue, comment: .empty)
        // MARK: - REPORT ISSUE PAGE DEFAULT KEYS
        self.reportIssueTitle = NSLocalizedString(CodingKeys.reportIssueTitle.rawValue, comment: .empty)
        self.reportIssueBtSend = NSLocalizedString(CodingKeys.reportIssueBtSend.rawValue, comment: .empty)
        self.reportIssueSubtitle = NSLocalizedString(CodingKeys.reportIssueSubtitle.rawValue, comment: .empty)
        // MARK: - CREATE ACCOUNT PAGE DEFAULT KEYS
        self.createAccountSignIn = NSLocalizedString(CodingKeys.createAccountSignIn.rawValue, comment: .empty)
        self.createAccountHaveAccount = NSLocalizedString(CodingKeys.createAccountHaveAccount.rawValue, comment: .empty)
        self.createAccountCreateAccount = NSLocalizedString(CodingKeys.createAccountCreateAccount.rawValue, comment: .empty)
        // MARK: - SIGNUP PAGE DEFAULT KEYS
        self.signupTitle = NSLocalizedString(CodingKeys.signupTitle.rawValue, comment: .empty)
        self.signUpPasswordDoesNotMeetRequirements = NSLocalizedString(CodingKeys.signUpPasswordDoesNotMeetRequirements.rawValue, comment: .empty)
        self.signUpAtLeastNumberOfCharacters = NSLocalizedString(CodingKeys.signUpAtLeastNumberOfCharacters.rawValue, comment: .empty)
        self.signUpAtLeastLowerCase = NSLocalizedString(CodingKeys.signUpAtLeastLowerCase.rawValue, comment: .empty)
        self.signUpAtLeastUpperCase = NSLocalizedString(CodingKeys.signUpAtLeastUpperCase.rawValue, comment: .empty)
        self.signUpAtLeastNumber = NSLocalizedString(CodingKeys.signUpAtLeastNumber.rawValue, comment: .empty)
        self.signUpAtLeastSpecialCharacter = NSLocalizedString(CodingKeys.signUpAtLeastSpecialCharacter.rawValue, comment: .empty)
        self.signUpTermsAndConditionsMustBeAccepted = NSLocalizedString(CodingKeys.signUpTermsAndConditionsMustBeAccepted.rawValue, comment: .empty)
        self.signUpPasswordDoesNotContainInvalidSpecialCharacters = NSLocalizedString(CodingKeys.signUpPasswordDoesNotContainInvalidSpecialCharacters.rawValue, comment: .empty)
        self.signUpCreateApassword = NSLocalizedString(CodingKeys.signUpCreateApassword.rawValue, comment: .empty)
        self.signUpEnterAPassword = NSLocalizedString(CodingKeys.signUpEnterAPassword.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTerms = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTerms.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTermsTermCond = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsTermCond.rawValue, comment: .empty)
        self.signUpTermAndCondIAgreeTermsPriPol = NSLocalizedString(CodingKeys.signUpTermAndCondIAgreeTermsPriPol.rawValue, comment: .empty)
        self.signUpTermAndCondDetailsPassword = NSLocalizedString(CodingKeys.signUpTermAndCondDetailsPassword.rawValue, comment: .empty)
        self.signUpTermAndCondLicenseMarketing = NSLocalizedString(CodingKeys.signUpTermAndCondLicenseMarketing.rawValue, comment: .empty)
        self.signUpLicenseServices = NSLocalizedString(CodingKeys.signUpLicenseServices.rawValue, comment: .empty)
        self.signUpLicenseProducts = NSLocalizedString(CodingKeys.signUpLicenseProducts.rawValue, comment: .empty)
        self.signUpGoChargeSuccess = NSLocalizedString(CodingKeys.signUpGoChargeSuccess.rawValue, comment: .empty)
        self.signUpAcpCardNumber = NSLocalizedString(CodingKeys.signUpAcpCardNumber.rawValue, comment: .empty)
        self.signUpAcpMemberNumber = NSLocalizedString(CodingKeys.signUpAcpMemberNumber.rawValue, comment: .empty)
        // MARK: - LOGIN PAGE DEFAULT KEYS
        self.loginButtonTitle = NSLocalizedString(CodingKeys.loginButtonTitle.rawValue, comment: .empty)
        self.loginForgotPassword = NSLocalizedString(CodingKeys.loginForgotPassword.rawValue, comment: .empty)
        self.loginForgotPasswordBoldPart = NSLocalizedString(CodingKeys.loginForgotPasswordBoldPart.rawValue, comment: .empty)
        self.loginPhoneNumberRequired = NSLocalizedString(CodingKeys.loginPhoneNumberRequired.rawValue, comment: .empty)
        self.loginOpenEmailApp = NSLocalizedString(CodingKeys.loginOpenEmailApp.rawValue, comment: .empty)
        // MARK: - ACTIVATION PAGE DEFAULT KEYS
        self.activationTitle = NSLocalizedString(CodingKeys.activationTitle.rawValue, comment: .empty)
        self.activationSubTitle = NSLocalizedString(CodingKeys.activationSubTitle.rawValue, comment: .empty)
        self.activationSubTitleEmail = NSLocalizedString(CodingKeys.activationSubTitleEmail.rawValue, comment: .empty)
        self.activationVerify = NSLocalizedString(CodingKeys.activationVerify.rawValue, comment: .empty)
        self.activationResendCode = NSLocalizedString(CodingKeys.activationResendCode.rawValue, comment: .empty)
        self.activationResendCodeBoldPart = NSLocalizedString(CodingKeys.activationResendCodeBoldPart.rawValue, comment: .empty)
        // MARK: - RECOVER PASSWORD PAGE DEFAULT KEYS
        self.recoverPasswordTitle = NSLocalizedString(CodingKeys.recoverPasswordTitle.rawValue, comment: .empty)
        self.recoverPasswordSubTitleEmail = NSLocalizedString(CodingKeys.recoverPasswordSubTitleEmail.rawValue, comment: .empty)
        self.recoverPasswordSubTitlePhone = NSLocalizedString(CodingKeys.recoverPasswordSubTitlePhone.rawValue, comment: .empty)
        // MARK: - MY ACCOUNT PAGE DEFAULT KEYS
        self.myAccountTitle = NSLocalizedString(CodingKeys.myAccountTitle.rawValue, comment: .empty)
        self.myAccountHome = NSLocalizedString(CodingKeys.myAccountHome.rawValue, comment: .empty)
        self.myAccountWork = NSLocalizedString(CodingKeys.myAccountWork.rawValue, comment: .empty)
        self.myAccountNoHome = NSLocalizedString(CodingKeys.myAccountNoHome.rawValue, comment: .empty)
        self.myAccountNoWork = NSLocalizedString(CodingKeys.myAccountNoWork.rawValue, comment: .empty)
        self.myAccountQrCodeTitle = NSLocalizedString(CodingKeys.myAccountQrCodeTitle.rawValue, comment: .empty)
        self.myAccountQrCodeSubtitle = NSLocalizedString(CodingKeys.myAccountQrCodeSubtitle.rawValue, comment: .empty)
        self.myAccountContracts = NSLocalizedString(CodingKeys.myAccountContracts.rawValue, comment: .empty)
        self.myAccountCemeTarifs = NSLocalizedString(CodingKeys.myAccountCemeTarifs.rawValue, comment: .empty)
        self.myAccountNotifications = NSLocalizedString(CodingKeys.myAccountNotifications.rawValue, comment: .empty)
        self.myAccountPrivacy = NSLocalizedString(CodingKeys.myAccountPrivacy.rawValue, comment: .empty)
        self.myAccountTermsAndConditions = NSLocalizedString(CodingKeys.myAccountTermsAndConditions.rawValue, comment: .empty)
        self.myAccountLogout = NSLocalizedString(CodingKeys.myAccountLogout.rawValue, comment: .empty)
        self.myAccountLogin = NSLocalizedString(CodingKeys.myAccountLogin.rawValue, comment: .empty)
        // MARK: - EDIT ACCOUNT PAGE DEFAULT KEYS
        self.editAccountTitle = NSLocalizedString(CodingKeys.editAccountTitle.rawValue, comment: .empty)
        self.editAccountChangeEmail = NSLocalizedString(CodingKeys.editAccountChangeEmail.rawValue, comment: .empty)
        self.editAccountDeleteAccount = NSLocalizedString(CodingKeys.editAccountDeleteAccount.rawValue, comment: .empty)
        self.editAccountAddNewAddress = NSLocalizedString(CodingKeys.editAccountAddNewAddress.rawValue, comment: .empty)
        self.editAccountChangePhoneNumber = NSLocalizedString(CodingKeys.editAccountChangePhoneNumber.rawValue, comment: .empty)
        self.editAccountDeleteAccountMessage = NSLocalizedString(CodingKeys.editAccountDeleteAccountMessage.rawValue, comment: .empty)
        self.editAccountProfileUpdatedSuccessfully = NSLocalizedString(CodingKeys.editAccountProfileUpdatedSuccessfully.rawValue, comment: .empty)
        // MARK: - CHANGE EMAIL / PHONE NUMBER PAGE DEFAULT KEYS
        self.changeEmailTitle = NSLocalizedString(CodingKeys.changeEmailTitle.rawValue, comment: .empty)
        self.changeEmailPhoneNumberTitle = NSLocalizedString(CodingKeys.changeEmailPhoneNumberTitle.rawValue, comment: .empty)
        self.changeEmailEmailIsTheSame = NSLocalizedString(CodingKeys.changeEmailEmailIsTheSame.rawValue, comment: .empty)
        self.changeEmailMobilePhoneIsTheSame = NSLocalizedString(CodingKeys.changeEmailMobilePhoneIsTheSame.rawValue, comment: .empty)
        // MARK: - CHANGE PASSWORD DEFAULT PAGE KEYS
        self.changePasswordTitle = NSLocalizedString(CodingKeys.changePasswordTitle.rawValue, comment: .empty)
        // MARK: - ADD / EDIT REFERENCE PLACE PAGE KEYS
        self.addReferencePlaceTitle = NSLocalizedString(CodingKeys.addReferencePlaceTitle.rawValue, comment: .empty)
        self.addReferencePlaceEditTitle = NSLocalizedString(CodingKeys.addReferencePlaceEditTitle.rawValue, comment: .empty)
        self.addReferencePlaceTapToSelectLocation = NSLocalizedString(CodingKeys.addReferencePlaceTapToSelectLocation.rawValue, comment: .empty)
        // MARK: - SEARCH LOCATION DEFAULT PAGE KEYS
        self.searchLocationTitle = NSLocalizedString(CodingKeys.searchLocationTitle.rawValue, comment: .empty)
        self.searchLocationSuggestions = NSLocalizedString(CodingKeys.searchLocationSuggestions.rawValue, comment: .empty)
        // MARK: - GLOSSARY DEFAULT PAGE KEYS
        self.glossaryTitle = NSLocalizedString(CodingKeys.glossaryTitle.rawValue, comment: .empty)
        self.glossaryEvioNetwork = NSLocalizedString(CodingKeys.glossaryEvioNetwork.rawValue, comment: .empty)
        self.glossaryOtherNetwork = NSLocalizedString(CodingKeys.glossaryOtherNetwork.rawValue, comment: .empty)
        self.glossaryMyChargers = NSLocalizedString(CodingKeys.glossaryMyChargers.rawValue, comment: .empty)
        self.glossaryMobieNetwork = NSLocalizedString(CodingKeys.glossaryMobieNetwork.rawValue, comment: .empty)
        self.glossaryTeslaNetwork = NSLocalizedString(CodingKeys.glossaryTeslaNetwork.rawValue, comment: .empty)
        self.glossaryChargersGroup = NSLocalizedString(CodingKeys.glossaryChargersGroup.rawValue, comment: .empty)
        self.glossaryChargerFree = NSLocalizedString(CodingKeys.glossaryChargerFree.rawValue, comment: .empty)
        self.glossaryChargerOccupied = NSLocalizedString(CodingKeys.glossaryChargerOccupied.rawValue, comment: .empty)
        self.glossaryChargerOffline = NSLocalizedString(CodingKeys.glossaryChargerOffline.rawValue, comment: .empty)
        self.glossaryGoCharge = NSLocalizedString(CodingKeys.glossaryGoCharge.rawValue, comment: .empty)
        self.glossaryHyundai = NSLocalizedString(CodingKeys.glossaryHyundai.rawValue, comment: .empty)
        // MARK: - NOTIFICATIONS DEFAULT PAGE KEYS
        self.notificationsTitle = NSLocalizedString(CodingKeys.notificationsTitle.rawValue, comment: .empty)
        self.notificationsChargingPoint = NSLocalizedString(CodingKeys.notificationsChargingPoint.rawValue, comment: .empty)
        self.notificationsGeneral = NSLocalizedString(CodingKeys.notificationsGeneral.rawValue, comment: .empty)
        self.notificationsAccount = NSLocalizedString(CodingKeys.notificationsAccount.rawValue, comment: .empty)
        self.notificationsPushNotifications = NSLocalizedString(CodingKeys.notificationsPushNotifications.rawValue, comment: .empty)
        // MARK: - SESSIONS DEFAULT PAGE KEYS
        self.sessionsMySessionsTitle = NSLocalizedString(CodingKeys.sessionsMySessionsTitle.rawValue, comment: .empty)
        self.sessionsMyChargersSessionsTitle = NSLocalizedString(CodingKeys.sessionsMyChargersSessionsTitle.rawValue, comment: .empty)
        self.sessionsNoSessionsTitle = NSLocalizedString(CodingKeys.sessionsNoSessionsTitle.rawValue, comment: .empty)
        self.sessionsNoSessionsMySessionsSubtitle = NSLocalizedString(CodingKeys.sessionsNoSessionsMySessionsSubtitle.rawValue, comment: .empty)
        self.sessionsNoSessionsSubtitleNoLogin = NSLocalizedString(CodingKeys.sessionsNoSessionsSubtitleNoLogin.rawValue, comment: .empty)
        self.sessionsNoSessionsMyChargerSessionsSubtitle = NSLocalizedString(CodingKeys.sessionsNoSessionsMyChargerSessionsSubtitle.rawValue, comment: .empty)
        self.sessionsNoBatteryInfo = NSLocalizedString(CodingKeys.sessionsNoBatteryInfo.rawValue, comment: .empty)
        self.sessionsAreYouSureYouWantToStop = NSLocalizedString(CodingKeys.sessionsAreYouSureYouWantToStop.rawValue, comment: .empty)
        self.sessionsTxtInfoMobieUpdates = NSLocalizedString(CodingKeys.sessionsTxtInfoMobieUpdates.rawValue, comment: .empty)
        self.sessionsChargingPoint = NSLocalizedString(CodingKeys.sessionsChargingPoint.rawValue, comment: .empty)
        self.sessionsChargingPoints = NSLocalizedString(CodingKeys.sessionsChargingPoints.rawValue, comment: .empty)
        // MARK: - START AND STOP ANIMATION DEFGAULT PAGE KEYS
        self.loadingChargingStartTitle = NSLocalizedString(CodingKeys.loadingChargingStartTitle.rawValue, comment: .empty)
        self.loadingChargingStartSubtitle = NSLocalizedString(CodingKeys.loadingChargingStartSubtitle.rawValue, comment: .empty)
        self.loadingChargingStopTitle = NSLocalizedString(CodingKeys.loadingChargingStopTitle.rawValue, comment: .empty)
        self.loadingChargingStoptSubtitle = NSLocalizedString(CodingKeys.loadingChargingStoptSubtitle.rawValue, comment: .empty)
        // MARK: - RATE SESSION VIEW DEFAULT PAGE KEYS
        self.rateSessionTitle = NSLocalizedString(CodingKeys.rateSessionTitle.rawValue, comment: .empty)
        self.rateSessionSubtitle = NSLocalizedString(CodingKeys.rateSessionSubtitle.rawValue, comment: .empty)
        self.rateSessionComment = NSLocalizedString(CodingKeys.rateSessionComment.rawValue, comment: .empty)
        self.rateSessionCommentPlaceholder = NSLocalizedString(CodingKeys.rateSessionCommentPlaceholder.rawValue, comment: .empty)
        // MARK: - SESSION SUMMARY VIEW DEFAULT PAGE KEYS
        self.sessionSummaryTotalChargingTime = NSLocalizedString(CodingKeys.sessionSummaryTotalChargingTime.rawValue, comment: .empty)
        self.sessionSummaryDate = NSLocalizedString(CodingKeys.sessionSummaryDate.rawValue, comment: .empty)
        self.sessionSummaryStartTime = NSLocalizedString(CodingKeys.sessionSummaryStartTime.rawValue, comment: .empty)
        self.sessionSummaryEndTime = NSLocalizedString(CodingKeys.sessionSummaryEndTime.rawValue, comment: .empty)
        self.sessionSummaryInstantAveragePower = NSLocalizedString(CodingKeys.sessionSummaryInstantAveragePower.rawValue, comment: .empty)
        self.sessionSummaryIec = NSLocalizedString(CodingKeys.sessionSummaryIec.rawValue, comment: .empty)
        self.sessionSummaryTar = NSLocalizedString(CodingKeys.sessionSummaryTar.rawValue, comment: .empty)
        self.sessionSummaryVat = NSLocalizedString(CodingKeys.sessionSummaryVat.rawValue, comment: .empty)
        self.sessionSummaryTotal = NSLocalizedString(CodingKeys.sessionSummaryTotal.rawValue, comment: .empty)
        self.sessionSummaryMobieTitle = NSLocalizedString(CodingKeys.sessionSummaryMobieTitle.rawValue, comment: .empty)
        self.sessionSummaryTime = NSLocalizedString(CodingKeys.sessionSummaryTime.rawValue, comment: .empty)
        self.sessionSummaryEnergy = NSLocalizedString(CodingKeys.sessionSummaryEnergy.rawValue, comment: .empty)
        self.sessionSummaryPlug = NSLocalizedString(CodingKeys.sessionSummaryPlug.rawValue, comment: .empty)
        self.sessionSummaryContract = NSLocalizedString(CodingKeys.sessionSummaryContract.rawValue, comment: .empty)
        self.sessionSummaryCo2Emitted = NSLocalizedString(CodingKeys.sessionSummaryCo2Emitted.rawValue, comment: .empty)
        self.sessionSummaryCharging = NSLocalizedString(CodingKeys.sessionSummaryCharging.rawValue, comment: .empty)
        self.sessionSummaryOpc = NSLocalizedString(CodingKeys.sessionSummaryOpc.rawValue, comment: .empty)
        self.sessionSummaryCeme = NSLocalizedString(CodingKeys.sessionSummaryCeme.rawValue, comment: .empty)
        self.sessionSummaryFees = NSLocalizedString(CodingKeys.sessionSummaryFees.rawValue, comment: .empty)
        self.sessionSummaryDownloadInvoice = NSLocalizedString(CodingKeys.sessionSummaryDownloadInvoice.rawValue, comment: .empty)
        self.sessionSummaryEstimatedPrice = NSLocalizedString(CodingKeys.sessionSummaryEstimatedPrice.rawValue, comment: .empty)
        self.sessionSummaryRateThisSession = NSLocalizedString(CodingKeys.sessionSummaryRateThisSession.rawValue, comment: .empty)
        self.sessionSummaryParking = NSLocalizedString(CodingKeys.sessionSummaryParking.rawValue, comment: .empty)
        self.sessionSummaryRoamingTitle = NSLocalizedString(CodingKeys.sessionSummaryRoamingTitle.rawValue, comment: .empty)
        self.sessionSummaryEmsp = NSLocalizedString(CodingKeys.sessionSummaryEmsp.rawValue, comment: .empty)
        self.sessionSummaryCdrInfoText = NSLocalizedString(CodingKeys.sessionSummaryCdrInfoText.rawValue, comment: .empty)
        self.sessionSummaryPowerKw = NSLocalizedString(CodingKeys.sessionSummaryPowerKw.rawValue, comment: .empty)
        self.sessionSummaryBattery = NSLocalizedString(CodingKeys.sessionSummaryBattery.rawValue, comment: .empty)
        self.sessionSummaryEnergyKwh = NSLocalizedString(CodingKeys.sessionSummaryEnergyKwh.rawValue, comment: .empty)
        self.sessionSummaryChargingTime = NSLocalizedString(CodingKeys.sessionSummaryChargingTime.rawValue, comment: .empty)
        self.sessionSummaryChargingPrice = NSLocalizedString(CodingKeys.sessionSummaryChargingPrice.rawValue, comment: .empty)
        self.sessionSummaryActivationFee = NSLocalizedString(CodingKeys.sessionSummaryActivationFee.rawValue, comment: .empty)
        self.sessionSummaryCostDuringCharge = NSLocalizedString(CodingKeys.sessionSummaryCostDuringCharge.rawValue, comment: .empty)
        self.sessionSummaryDuration = NSLocalizedString(CodingKeys.sessionSummaryDuration.rawValue, comment: .empty)
        self.sessionSummaryParkingPrice = NSLocalizedString(CodingKeys.sessionSummaryParkingPrice.rawValue, comment: .empty)
        self.sessionSummaryParkingDuringCharging = NSLocalizedString(CodingKeys.sessionSummaryParkingDuringCharging.rawValue, comment: .empty)
        self.sessionSummaryBookingPrice = NSLocalizedString(CodingKeys.sessionSummaryBookingPrice.rawValue, comment: .empty)
        // MARK: - START CHARGING BY QR CODE VIEW DEFAULT PAGE KEYS
        self.chargerQrCodeContract = NSLocalizedString(CodingKeys.chargerQrCodeContract.rawValue, comment: .empty)
        self.chargerQrCodeEv = NSLocalizedString(CodingKeys.chargerQrCodeEv.rawValue, comment: .empty)
        self.chargerQrCodeTitle = NSLocalizedString(CodingKeys.chargerQrCodeTitle.rawValue, comment: .empty)
        self.chargerQrCodeStart = NSLocalizedString(CodingKeys.chargerQrCodeStart.rawValue, comment: .empty)
        self.chargerQrCodeSelectContract = NSLocalizedString(CodingKeys.chargerQrCodeSelectContract.rawValue, comment: .empty)
        self.chargerQrCodeSelectEv = NSLocalizedString(CodingKeys.chargerQrCodeSelectEv.rawValue, comment: .empty)
        self.chargerQrCodeSelectContractFirst = NSLocalizedString(CodingKeys.chargerQrCodeSelectContractFirst.rawValue, comment: .empty)
        self.chargerQrCodeMainTitle = NSLocalizedString(CodingKeys.chargerQrCodeMainTitle.rawValue, comment: .empty)
        self.chargerQrCodeMainSubtitle = NSLocalizedString(CodingKeys.chargerQrCodeMainSubtitle.rawValue, comment: .empty)
        self.chargerQrCodeNoCamera = NSLocalizedString(CodingKeys.chargerQrCodeNoCamera.rawValue, comment: .empty)
        self.chargerQrCodeOrInsert = NSLocalizedString(CodingKeys.chargerQrCodeOrInsert.rawValue, comment: .empty)
        self.chargerQrCodeIdNumber = NSLocalizedString(CodingKeys.chargerQrCodeIdNumber.rawValue, comment: .empty)
        self.chargerQrCodeInvalidQrCode = NSLocalizedString(CodingKeys.chargerQrCodeInvalidQrCode.rawValue, comment: .empty)
        self.chargerQrCodeIdNumberTitle = NSLocalizedString(CodingKeys.chargerQrCodeIdNumberTitle.rawValue, comment: .empty)
        self.chargerQrCodeIdNumberPlaceholder = NSLocalizedString(CodingKeys.chargerQrCodeIdNumberPlaceholder.rawValue, comment: .empty)
        // MARK: - STOPPED SESSION BY REASON VIEW DEFAULT PAGE KEYS
        self.stoppedSessionByReasonTitle = NSLocalizedString(CodingKeys.stoppedSessionByReasonTitle.rawValue, comment: .empty)
        self.stoppedSessionByReasonSubtitle = NSLocalizedString(CodingKeys.stoppedSessionByReasonSubtitle.rawValue, comment: .empty)
        // MARK: - MY CHARGERS VIEW DEFAULT PAGE KEYS
        self.myChargersTabTitle = NSLocalizedString(CodingKeys.myChargersTabTitle.rawValue, comment: .empty)
        self.myChargersChargersTabTitle = NSLocalizedString(CodingKeys.myChargersChargersTabTitle.rawValue, comment: .empty)
        self.myChargersAddChargingPlaceTitle = NSLocalizedString(CodingKeys.myChargersAddChargingPlaceTitle.rawValue, comment: .empty)
        self.myChargersChargingPlaceName = NSLocalizedString(CodingKeys.myChargersChargingPlaceName.rawValue, comment: .empty)
        self.myChargersChargingPlaceNamePlaceholder = NSLocalizedString(CodingKeys.myChargersChargingPlaceNamePlaceholder.rawValue, comment: .empty)
        self.myChargersNoChargersTitle = NSLocalizedString(CodingKeys.myChargersNoChargersTitle.rawValue, comment: .empty)
        self.myChargersNoChargersSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersNoLoginSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersNoLoginSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersMyChargersSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersSubtitle.rawValue, comment: .empty)
        self.myChargersNoChargersMyChargersNoLoginSubtitle = NSLocalizedString(CodingKeys.myChargersNoChargersMyChargersNoLoginSubtitle.rawValue, comment: .empty)
        self.myChargersDeleteChargerTitle = NSLocalizedString(CodingKeys.myChargersDeleteChargerTitle.rawValue, comment: .empty)
        self.myChargersDeleteChargerSubtitle = NSLocalizedString(CodingKeys.myChargersDeleteChargerSubtitle.rawValue, comment: .empty)
        self.myChargersAddChargerAlertTitle = NSLocalizedString(CodingKeys.myChargersAddChargerAlertTitle.rawValue, comment: .empty)
        self.myChargersAddChargerAlertSubtitle = NSLocalizedString(CodingKeys.myChargersAddChargerAlertSubtitle.rawValue, comment: .empty)
        self.myChargersAddNewCharger = NSLocalizedString(CodingKeys.myChargersAddNewCharger.rawValue, comment: .empty)
        // MARK: - PLUG DETAILS VIEW DEFAULT PAGE KEYS
        self.plugDetailsConnectorType = NSLocalizedString(CodingKeys.plugDetailsConnectorType.rawValue, comment: .empty)
        self.plugDetailsStatus = NSLocalizedString(CodingKeys.plugDetailsStatus.rawValue, comment: .empty)
        self.plugDetailsCurrent = NSLocalizedString(CodingKeys.plugDetailsCurrent.rawValue, comment: .empty)
        self.plugDetailsVoltage = NSLocalizedString(CodingKeys.plugDetailsVoltage.rawValue, comment: .empty)
        self.plugDetailsPower = NSLocalizedString(CodingKeys.plugDetailsPower.rawValue, comment: .empty)
        self.plugDetailsAccess = NSLocalizedString(CodingKeys.plugDetailsAccess.rawValue, comment: .empty)
        self.plugDetailsEditPlugTitle = NSLocalizedString(CodingKeys.plugDetailsEditPlugTitle.rawValue, comment: .empty)
        self.plugDetailsChargingInformation = NSLocalizedString(CodingKeys.plugDetailsChargingInformation.rawValue, comment: .empty)
        self.plugDetailsCurrentType = NSLocalizedString(CodingKeys.plugDetailsCurrentType.rawValue, comment: .empty)
        self.plugDetailsActivate = NSLocalizedString(CodingKeys.plugDetailsActivate.rawValue, comment: .empty)
        self.plugDetailsAc1Phase = NSLocalizedString(CodingKeys.plugDetailsAc1Phase.rawValue, comment: .empty)
        self.plugDetailsAc3Phase = NSLocalizedString(CodingKeys.plugDetailsAc3Phase.rawValue, comment: .empty)
        // MARK: - WALLET VIEW DEFAULT PAGE KEYS
        self.walletTitle = NSLocalizedString(CodingKeys.walletTitle.rawValue, comment: .empty)
        self.walletBalance = NSLocalizedString(CodingKeys.walletBalance.rawValue, comment: .empty)
        self.walletInfoAboutWallet = NSLocalizedString(CodingKeys.walletInfoAboutWallet.rawValue, comment: .empty)
        self.walletPaymentMethods = NSLocalizedString(CodingKeys.walletPaymentMethods.rawValue, comment: .empty)
        self.walletWalletHistory = NSLocalizedString(CodingKeys.walletWalletHistory.rawValue, comment: .empty)
        self.walletFinacialTransactions = NSLocalizedString(CodingKeys.walletFinacialTransactions.rawValue, comment: .empty)
        self.walletBillingProfile = NSLocalizedString(CodingKeys.walletBillingProfile.rawValue, comment: .empty)
        self.walletAutoRechargeWallet = NSLocalizedString(CodingKeys.walletAutoRechargeWallet.rawValue, comment: .empty)
        self.walletAutoRechargeWalletInfoText = NSLocalizedString(CodingKeys.walletAutoRechargeWalletInfoText.rawValue, comment: .empty)
        self.walletAutoRechargeSuccessMessage = NSLocalizedString(CodingKeys.walletAutoRechargeSuccessMessage.rawValue, comment: .empty)
        // MARK: - WALLET TOP UP DEFAULT VIEW PAGE KEYS
        self.walletTopUpTitle = NSLocalizedString(CodingKeys.walletTopUpTitle.rawValue, comment: .empty)
        self.walletTopUpOtherAmount = NSLocalizedString(CodingKeys.walletTopUpOtherAmount.rawValue, comment: .empty)
        self.walletTopUpMinimumAmount = NSLocalizedString(CodingKeys.walletTopUpMinimumAmount.rawValue, comment: .empty)
        self.walletTopUpMbWay = NSLocalizedString(CodingKeys.walletTopUpMbWay.rawValue, comment: .empty)
        self.walletTopUpMultibancoReference = NSLocalizedString(CodingKeys.walletTopUpMultibancoReference.rawValue, comment: .empty)
        self.walletTopUpCreditCardDeposit = NSLocalizedString(CodingKeys.walletTopUpCreditCardDeposit.rawValue, comment: .empty)
        self.walletTopUpCreditCard = NSLocalizedString(CodingKeys.walletTopUpCreditCard.rawValue, comment: .empty)
        self.walletTopUpNewCreditCard = NSLocalizedString(CodingKeys.walletTopUpNewCreditCard.rawValue, comment: .empty)
        self.walletTopUpExistingCreditCard = NSLocalizedString(CodingKeys.walletTopUpExistingCreditCard.rawValue, comment: .empty)
        self.walletTopUpAddBalanceSuccess = NSLocalizedString(CodingKeys.walletTopUpAddBalanceSuccess.rawValue, comment: .empty)
        // MARK: - MB REFERENCE VIEW DEFAULT PAGE KEYS
        self.mbReferenceEntity = NSLocalizedString(CodingKeys.mbReferenceEntity.rawValue, comment: .empty)
        self.mbReferenceReference = NSLocalizedString(CodingKeys.mbReferenceReference.rawValue, comment: .empty)
        self.mbReferenceAmount = NSLocalizedString(CodingKeys.mbReferenceAmount.rawValue, comment: .empty)
        self.mbReferenceSendReferenceBySms = NSLocalizedString(CodingKeys.mbReferenceSendReferenceBySms.rawValue, comment: .empty)
        self.mbReferenceInfoAboutReference = NSLocalizedString(CodingKeys.mbReferenceInfoAboutReference.rawValue, comment: .empty)
        self.mbReferenceDidNotReceive = NSLocalizedString(CodingKeys.mbReferenceDidNotReceive.rawValue, comment: .empty)
        self.mbReferenceTryAgain = NSLocalizedString(CodingKeys.mbReferenceTryAgain.rawValue, comment: .empty)
        // MARK: - TRANSACTIONS VIEW DEFAULT PAGE KEYS
        self.transactionsTitle = NSLocalizedString(CodingKeys.transactionsTitle.rawValue, comment: .empty)
        self.transactionsNoTransactions = NSLocalizedString(CodingKeys.transactionsNoTransactions.rawValue, comment: .empty)
        self.transactionsDeposit = NSLocalizedString(CodingKeys.transactionsDeposit.rawValue, comment: .empty)
        self.transactionsPayment = NSLocalizedString(CodingKeys.transactionsPayment.rawValue, comment: .empty)
        self.transactionsCard = NSLocalizedString(CodingKeys.transactionsCard.rawValue, comment: .empty)
        self.transactionsMBRef = NSLocalizedString(CodingKeys.transactionsMBRef.rawValue, comment: .empty)
        self.transactionsMBRefPSNet = NSLocalizedString(CodingKeys.transactionsMBRefPSNet.rawValue, comment: .empty)
        self.transactionsPSNet = NSLocalizedString(CodingKeys.transactionsPSNet.rawValue, comment: .empty)
        self.transactionsMBWay = NSLocalizedString(CodingKeys.transactionsMBWay.rawValue, comment: .empty)
        self.transactionsWallet = NSLocalizedString(CodingKeys.transactionsWallet.rawValue, comment: .empty)
        self.transactionsOther = NSLocalizedString(CodingKeys.transactionsOther.rawValue, comment: .empty)
        self.transactionsFinancialTitle = NSLocalizedString(CodingKeys.transactionsFinancialTitle.rawValue, comment: .empty)
        // MARK: - BILLING PROFILE VIEW DEFAULT PAGE KEYS
        self.billingProfileTitle = NSLocalizedString(CodingKeys.billingProfileTitle.rawValue, comment: .empty)
        self.billingProfileBillingPeriod = NSLocalizedString(CodingKeys.billingProfileBillingPeriod.rawValue, comment: .empty)
        // MARK: - EDIT BILLING PROFILE VIEW DEFAULT PAGE KEYS
        self.editBillingProfileFinalConsumer = NSLocalizedString(CodingKeys.editBillingProfileFinalConsumer.rawValue, comment: .empty)
        self.editBillingProfilePeriod = NSLocalizedString(CodingKeys.editBillingProfilePeriod.rawValue, comment: .empty)
        // MARK: - PAYMENT METHODS VIEW DEFAULT KEYS
        self.paymentMethodsTitle = NSLocalizedString(CodingKeys.paymentMethodsTitle.rawValue, comment: .empty)
        self.paymentMethodsCreditCardInfoText = NSLocalizedString(CodingKeys.paymentMethodsCreditCardInfoText.rawValue, comment: .empty)
        self.paymentMethodsAddNew = NSLocalizedString(CodingKeys.paymentMethodsAddNew.rawValue, comment: .empty)
        self.paymentMethodsAddNewPaymentMethod = NSLocalizedString(CodingKeys.paymentMethodsAddNewPaymentMethod.rawValue, comment: .empty)
        self.paymentMethodsAskUserToDelete = NSLocalizedString(CodingKeys.paymentMethodsAskUserToDelete.rawValue, comment: .empty)
        self.paymentMethodsNoPaymentMethods = NSLocalizedString(CodingKeys.paymentMethodsNoPaymentMethods.rawValue, comment: .empty)
        self.paymentMethodsCantDeleteCardiOS = NSLocalizedString(CodingKeys.paymentMethodsCantDeleteCardiOS.rawValue, comment: .empty)
        self.paymentMethodsExpiryDate = NSLocalizedString(CodingKeys.paymentMethodsExpiryDate.rawValue, comment: .empty)
        self.paymentMethodsCvc = NSLocalizedString(CodingKeys.paymentMethodsCvc.rawValue, comment: .empty)
        self.paymentMethodsAddCard = NSLocalizedString(CodingKeys.paymentMethodsAddCard.rawValue, comment: .empty)
        self.paymentMethodsCardNumberNoValid = NSLocalizedString(CodingKeys.paymentMethodsCardNumberNoValid.rawValue, comment: .empty)
        self.paymentMethodsExpireDateNotValid = NSLocalizedString(CodingKeys.paymentMethodsExpireDateNotValid.rawValue, comment: .empty)
        self.paymentMethodsSecurityCodeNotValid = NSLocalizedString(CodingKeys.paymentMethodsSecurityCodeNotValid.rawValue, comment: .empty)
        // MARK: - SUPPORT VIEW DEFAULT KEYS
        self.supportTitle = NSLocalizedString(CodingKeys.supportTitle.rawValue, comment: .empty)
        self.supportMessage = NSLocalizedString(CodingKeys.supportMessage.rawValue, comment: .empty)
        self.supportSearchTopics = NSLocalizedString(CodingKeys.supportSearchTopics.rawValue, comment: .empty)
        self.supportDriver = NSLocalizedString(CodingKeys.supportDriver.rawValue, comment: .empty)
        self.supportOwner = NSLocalizedString(CodingKeys.supportOwner.rawValue, comment: .empty)
        self.supportFaqs = NSLocalizedString(CodingKeys.supportFaqs.rawValue, comment: .empty)
        self.supportTalkWithUs = NSLocalizedString(CodingKeys.supportTalkWithUs.rawValue, comment: .empty)
        self.supportSendUsAnEmail = NSLocalizedString(CodingKeys.supportSendUsAnEmail.rawValue, comment: .empty)
        self.supportKnowTheApp = NSLocalizedString(CodingKeys.supportKnowTheApp.rawValue, comment: .empty)
        self.supportReviewWalkthroughs = NSLocalizedString(CodingKeys.supportReviewWalkthroughs.rawValue, comment: .empty)
        self.supportRunOnboarding = NSLocalizedString(CodingKeys.supportRunOnboarding.rawValue, comment: .empty)
        self.supportSubject = NSLocalizedString(CodingKeys.supportSubject.rawValue, comment: .empty)
        self.supportDriverSupport = NSLocalizedString(CodingKeys.supportDriverSupport.rawValue, comment: .empty)
        self.supportOwnerSupport = NSLocalizedString(CodingKeys.supportOwnerSupport.rawValue, comment: .empty)
        self.supportSearchNotSearchedYet = NSLocalizedString(CodingKeys.supportSearchNotSearchedYet.rawValue, comment: .empty)
        self.supportSearchNoResultsFoundFor = NSLocalizedString(CodingKeys.supportSearchNoResultsFoundFor.rawValue, comment: .empty)
        self.supportSearchTypeSomethingToSearch = NSLocalizedString(CodingKeys.supportSearchTypeSomethingToSearch.rawValue, comment: .empty)
        self.supportAddPictures = NSLocalizedString(CodingKeys.supportAddPictures.rawValue, comment: .empty)
        // MARK: - INSIGHTS VIEW KEYS
        self.insightsInsightsTabTitle = NSLocalizedString(CodingKeys.insightsInsightsTabTitle.rawValue, comment: .empty)
        self.insightsHistoryTabTitle = NSLocalizedString(CodingKeys.insightsHistoryTabTitle.rawValue, comment: .empty)
        self.insightsLastMonth = NSLocalizedString(CodingKeys.insightsLastMonth.rawValue, comment: .empty)
        self.insightsLastYear = NSLocalizedString(CodingKeys.insightsLastYear.rawValue, comment: .empty)
        self.insightsLastSemester = NSLocalizedString(CodingKeys.insightsLastSemester.rawValue, comment: .empty)
        self.insightsNoHistory = NSLocalizedString(CodingKeys.insightsNoHistory.rawValue, comment: .empty)
        self.insightsNoInsights = NSLocalizedString(CodingKeys.insightsNoInsights.rawValue, comment: .empty)
        self.insightsNoInsightsNoLogin = NSLocalizedString(CodingKeys.insightsNoInsightsNoLogin.rawValue, comment: .empty)
        self.insightsNoHistoryNoLogin = NSLocalizedString(CodingKeys.insightsNoHistoryNoLogin.rawValue, comment: .empty)
        self.insightsMyVehicles = NSLocalizedString(CodingKeys.insightsMyVehicles.rawValue, comment: .empty)
        self.insightsTotalChargingTime = NSLocalizedString(CodingKeys.insightsTotalChargingTime.rawValue, comment: .empty)
        self.insightsTotalSessions = NSLocalizedString(CodingKeys.insightsTotalSessions.rawValue, comment: .empty)
        self.insightsTotalCost = NSLocalizedString(CodingKeys.insightsTotalCost.rawValue, comment: .empty)
        self.insightsTotalEnergy = NSLocalizedString(CodingKeys.insightsTotalEnergy.rawValue, comment: .empty)
        self.insightsCo2Emitted = NSLocalizedString(CodingKeys.insightsCo2Emitted.rawValue, comment: .empty)
        self.insightsMyChargingStations = NSLocalizedString(CodingKeys.insightsMyChargingStations.rawValue, comment: .empty)
        self.insightsIncome = NSLocalizedString(CodingKeys.insightsIncome.rawValue, comment: .empty)
        self.insightsMyRating = NSLocalizedString(CodingKeys.insightsMyRating.rawValue, comment: .empty)
        self.insightsChargingTimePerSession = NSLocalizedString(CodingKeys.insightsChargingTimePerSession.rawValue, comment: .empty)
        self.insightsEnergyConsumptionPerSession = NSLocalizedString(CodingKeys.insightsEnergyConsumptionPerSession.rawValue, comment: .empty)
        self.insightsFavoriteCharger = NSLocalizedString(CodingKeys.insightsFavoriteCharger.rawValue, comment: .empty)
        self.insightsMostUsedPlug = NSLocalizedString(CodingKeys.insightsMostUsedPlug.rawValue, comment: .empty)
        // MARK: - BLOCKED VIEW KEYS
        self.blockedViewUpdateBt = NSLocalizedString(CodingKeys.blockedViewUpdateBt.rawValue, comment: .empty)
        self.blockedViewTextInfo = NSLocalizedString(CodingKeys.blockedViewTextInfo.rawValue, comment: .empty)
        self.blockedViewPaymentError = NSLocalizedString(CodingKeys.blockedViewPaymentError.rawValue, comment: .empty)
        // MARK: - COMPARATOR VIEW KEYS
        self.comparatorTitle = NSLocalizedString(CodingKeys.comparatorTitle.rawValue, comment: .empty)
        self.comparatorChargingPoint = NSLocalizedString(CodingKeys.comparatorChargingPoint.rawValue, comment: .empty)
        self.comparatorPlugPower = NSLocalizedString(CodingKeys.comparatorPlugPower.rawValue, comment: .empty)
        self.comparatorChargingDuration = NSLocalizedString(CodingKeys.comparatorChargingDuration.rawValue, comment: .empty)
        self.comparatorTotalCost = NSLocalizedString(CodingKeys.comparatorTotalCost.rawValue, comment: .empty)
        self.comparatorAverageCost = NSLocalizedString(CodingKeys.comparatorAverageCost.rawValue, comment: .empty)
        self.comparatorMyChargers = NSLocalizedString(CodingKeys.comparatorMyChargers.rawValue, comment: .empty)
        self.comparatorOtherChargers = NSLocalizedString(CodingKeys.comparatorOtherChargers.rawValue, comment: .empty)
        self.comparatorFavourites = NSLocalizedString(CodingKeys.comparatorFavourites.rawValue, comment: .empty)
        self.comparatorChooseChargingPoint = NSLocalizedString(CodingKeys.comparatorChooseChargingPoint.rawValue, comment: .empty)
        self.comparatorCompareButton = NSLocalizedString(CodingKeys.comparatorCompareButton.rawValue, comment: .empty)
        self.comparatorChoosePlugToCompare = NSLocalizedString(CodingKeys.comparatorChoosePlugToCompare.rawValue, comment: .empty)
        self.comparatorPlugAlreadyBeingCompared = NSLocalizedString(CodingKeys.comparatorPlugAlreadyBeingCompared.rawValue, comment: .empty)
        self.comparatorCheckTariff = NSLocalizedString(CodingKeys.comparatorCheckTariff.rawValue, comment: .empty)
        self.comparatorPickFromMap = NSLocalizedString(CodingKeys.comparatorPickFromMap.rawValue, comment: .empty)
        self.comparatorPickChargingPoint = NSLocalizedString(CodingKeys.comparatorPickChargingPoint.rawValue, comment: .empty)
        self.comparatorAddToCompare = NSLocalizedString(CodingKeys.comparatorAddToCompare.rawValue, comment: .empty)
        // MARK: - HISTORY VIEW DEFAULT KEYS
        self.historyPaymentBillingInfoPaid = NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaid.rawValue, comment: .empty)
        self.historyPaymentBillingInfoPaidAndBilled = NSLocalizedString(CodingKeys.historyPaymentBillingInfoPaidAndBilled.rawValue, comment: .empty)
        self.historyPaymentBillingInfoToProcess = NSLocalizedString(CodingKeys.historyPaymentBillingInfoToProcess.rawValue, comment: .empty)
        self.historyPaymentBillingInfoNotApplicable = NSLocalizedString(CodingKeys.historyPaymentBillingInfoNotApplicable.rawValue, comment: .empty)
        self.historyPaymentBillingInfoFailedBilling = NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedBilling.rawValue, comment: .empty)
        self.historyPaymentBillingInfoFailedPayment = NSLocalizedString(CodingKeys.historyPaymentBillingInfoFailedPayment.rawValue, comment: .empty)
        self.historyPaymentBillingInfoBilledAndNotPaid = NSLocalizedString(CodingKeys.historyPaymentBillingInfoBilledAndNotPaid.rawValue, comment: .empty)
        self.historyDownloadMessage = NSLocalizedString(CodingKeys.historyDownloadMessage.rawValue, comment: .empty)
        self.historyPaymentStatus = NSLocalizedString(CodingKeys.historyPaymentStatus.rawValue, comment: .empty)
        self.historyStartDate = NSLocalizedString(CodingKeys.historyStartDate.rawValue, comment: .empty)
        self.historyStopDate = NSLocalizedString(CodingKeys.historyStopDate.rawValue, comment: .empty)
        self.historyDonwloadSuccess = NSLocalizedString(CodingKeys.historyDonwloadSuccess.rawValue, comment: .empty)
        // MARK: - INFO TARIFF MOBIE DEFAULT KEYS
        self.infoTariffMobiePerMinuteMinMaxDuration = NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxDuration.rawValue, comment: .empty)
        self.infoTariffMobiePerMinuteMinMaxKwh = NSLocalizedString(CodingKeys.infoTariffMobiePerMinuteMinMaxKwh.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhStartEndTime = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndTime.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhStartEndDate = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhStartEndDate.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhMaxMinKwh = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMaxMinKwh.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhMinMaxDuration = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhMinMaxDuration.rawValue, comment: .empty)
        self.infoTariffMobiePerKwhDayOfWeek = NSLocalizedString(CodingKeys.infoTariffMobiePerKwhDayOfWeek.rawValue, comment: .empty)
        self.infoTariffMobieSimulatePercent = NSLocalizedString(CodingKeys.infoTariffMobieSimulatePercent.rawValue, comment: .empty)
        self.infoTariffMobieSimulateTime = NSLocalizedString(CodingKeys.infoTariffMobieSimulateTime.rawValue, comment: .empty)
        self.infoTariffMobieStart = NSLocalizedString(CodingKeys.infoTariffMobieStart.rawValue, comment: .empty)
        self.infoTariffMobieReturn = NSLocalizedString(CodingKeys.infoTariffMobieReturn.rawValue, comment: .empty)
        self.infoTariffMobieSimulationByTime = NSLocalizedString(CodingKeys.infoTariffMobieSimulationByTime.rawValue, comment: .empty)
        self.infoTariffMobieDay = NSLocalizedString(CodingKeys.infoTariffMobieDay.rawValue, comment: .empty)
        self.infoTariffMobieHour = NSLocalizedString(CodingKeys.infoTariffMobieHour.rawValue, comment: .empty)
        self.infoTariffMobieSimulationByPercentage = NSLocalizedString(CodingKeys.infoTariffMobieSimulationByPercentage.rawValue, comment: .empty)
        self.infoTariffMobieSimulationPrice = NSLocalizedString(CodingKeys.infoTariffMobieSimulationPrice.rawValue, comment: .empty)
        self.infoTariffMobieDurationRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDurationRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDayRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDayRestriction.rawValue, comment: .empty)
        self.infoTariffMobieTimeRestriction = NSLocalizedString(CodingKeys.infoTariffMobieTimeRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDateRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDateRestriction.rawValue, comment: .empty)
        self.infoTariffMobieEnergyRestriction = NSLocalizedString(CodingKeys.infoTariffMobieEnergyRestriction.rawValue, comment: .empty)
        self.infoTariffMobieCurrentRestriction = NSLocalizedString(CodingKeys.infoTariffMobieCurrentRestriction.rawValue, comment: .empty)
        self.infoTariffMobiePowerRestriction = NSLocalizedString(CodingKeys.infoTariffMobiePowerRestriction.rawValue, comment: .empty)
        self.infoTariffMobieDefaultRestriction = NSLocalizedString(CodingKeys.infoTariffMobieDefaultRestriction.rawValue, comment: .empty)
        self.infoTariffMobieBetween = NSLocalizedString(CodingKeys.infoTariffMobieBetween.rawValue, comment: .empty)
        self.infoTariffMobieAfter = NSLocalizedString(CodingKeys.infoTariffMobieAfter.rawValue, comment: .empty)
        self.infoTariffMobieBefore = NSLocalizedString(CodingKeys.infoTariffMobieBefore.rawValue, comment: .empty)
        self.infoTariffMobieAnd = NSLocalizedString(CodingKeys.infoTariffMobieAnd.rawValue, comment: .empty)
        // MARK: - CANCEL CARD VIEW DEFAULT KEYS
        self.cancelCardCancelCard = NSLocalizedString(CodingKeys.cancelCardCancelCard.rawValue, comment: .empty)
        self.cancelCardDescription = NSLocalizedString(CodingKeys.cancelCardDescription.rawValue, comment: .empty)
        self.cancelCardDescriptionHint = NSLocalizedString(CodingKeys.cancelCardDescriptionHint.rawValue, comment: .empty)
        self.cancelCardReason = NSLocalizedString(CodingKeys.cancelCardReason.rawValue, comment: .empty)
        self.cancelCardLost = NSLocalizedString(CodingKeys.cancelCardLost.rawValue, comment: .empty)
        self.cancelCardTheft = NSLocalizedString(CodingKeys.cancelCardTheft.rawValue, comment: .empty)
        self.cancelCardOther = NSLocalizedString(CodingKeys.cancelCardOther.rawValue, comment: .empty)
        self.cancelCardWantReplacement = NSLocalizedString(CodingKeys.cancelCardWantReplacement.rawValue, comment: .empty)
        self.cancelCardSuccessCanceledMessage = NSLocalizedString(CodingKeys.cancelCardSuccessCanceledMessage.rawValue, comment: .empty)
        // MARK: - ACTIVATE NETWORK VIEW KEYS PROPERTIES
        self.activateNetworkGireve = NSLocalizedString(CodingKeys.activateNetworkGireve.rawValue, comment: .empty)
        self.activateNetworkMobie = NSLocalizedString(CodingKeys.activateNetworkMobie.rawValue, comment: .empty)
        // MARK: - MAP LIST VIEW KEYS PROPERTIES
        self.mapListTitle = NSLocalizedString(CodingKeys.mapListTitle.rawValue, comment: .empty)
        self.mapListRelevance = NSLocalizedString(CodingKeys.mapListRelevance.rawValue, comment: .empty)
        self.mapListPrice = NSLocalizedString(CodingKeys.mapListPrice.rawValue, comment: .empty)
        self.mapListDistance = NSLocalizedString(CodingKeys.mapListDistance.rawValue, comment: .empty)
        // MARK: - ACP ASSISTENCE VIEW PROPERTIES
        self.acpAssistanceTitle = NSLocalizedString(CodingKeys.acpAssistanceTitle.rawValue, comment: .empty)
        self.acpAssistancePhoneNumber = NSLocalizedString(CodingKeys.acpAssistancePhoneNumber.rawValue, comment: .empty)
        self.acpCardNumberNotFilled = NSLocalizedString(CodingKeys.acpCardNumberNotFilled.rawValue, comment: .empty)
        self.acpNoChargersFoundForList = NSLocalizedString(CodingKeys.acpNoChargersFoundForList.rawValue, comment: .empty)
        self.comparatorEnergy = NSLocalizedString(CodingKeys.comparatorEnergy.rawValue, comment: .empty)
    }
    
}
