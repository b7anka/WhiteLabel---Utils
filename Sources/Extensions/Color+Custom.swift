//
//  Color+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 23/11/2021.
//

import SwiftUI

/// # EXTENSION WITH ALL THE COLORS USED IN THE APP
public extension Color {
    /*
        ALL COLORS ARE CREATED FROM THE ASSETS FILE WITH THE NAME COLORS
     */
    static let primaryBackground: Color = Color(.primaryBackground, bundle: nil)
    static let primaryShadow: Color = Color(.primaryShadow, bundle: nil)
    static let primaryTextColor: Color = Color(.primaryTextColor, bundle: nil)
    static let secondaryBackground: Color = Color(.secondaryBackground, bundle: nil)
    static let secondaryTextColor: Color = Color(.secondaryTextColor, bundle: nil)
    static let tertiaryTextColor: Color = Color(.tertiaryTextColor, bundle: nil)
    static let tertiaryBackground: Color = Color(.tertiaryBackground, bundle: nil)
    static let fourthBackground: Color = Color(.fourthBackground, bundle: nil)
    static let secondaryShadowColor: Color = Color(.secondaryShadowColor, bundle: nil)
    static let tertiaryShadowColor: Color = Color(.tertiaryShadowColor, bundle: nil)
    static let errorColor: Color = Color(.errorColor, bundle: nil)
    static let unavailableColor: Color = Color(.unavailableColor, bundle: nil)
    static let fourthShadow: Color = Color(.fourthShadow, bundle: nil)
    static let mainButtonColor: Color = Color(.mainButtonColor, bundle: nil)
    static let mapButtonsColor: Color = Color(.mapButtonsColor, bundle: nil)
    static let mapSearchBarColor: Color = Color(.mapSearchBarColor, bundle: nil)
    static let mapStatusBarColor: Color = Color(.mapStatusBarColor, bundle: nil)
    static let qrCodeMapButtonColor: Color = Color(.qrCodeMapButtonColor, bundle: nil)
    static let sideMenuColor: Color = Color(.sideMenuColor, bundle: nil)
    static let tabsUnderViewColor: Color = Color(.tabsUnderViewColor, bundle: nil)
    static let tabsSelectedColor: Color = Color(.tabsSelectedColor, bundle: nil)
    static let tabsUnselectedColor: Color = Color(.tabsUnselectedColor, bundle: nil)
    static let cleanFiltersButtonEnabledColor: Color = Color(.cleanFiltersButtonEnabledColor, bundle: nil)
    static let cleanFiltersButtonDisabledColor: Color = Color(.cleanFiltersButtonDisabledColor, bundle: nil)
    static let glossaryItemBackgroundColor: Color = Color(.glossaryItemBackgroundColor, bundle: nil)
    static let contractStatusActiveColor: Color = Color(.contractStatusActiveColor, bundle: nil)
    static let contractStatusInactiveColor: Color = Color(.contractStatusInactiveColor, bundle: nil)
    static let contractStatusToRequestColor: Color = Color(.contractStatusToRequestColor, bundle: nil)
    static let batteryFillCircleColor: Color = Color(.batteryFillCircleColor, bundle: nil)
    static let batteryFillCircleColorAlternative: Color = Color(.batteryFillCircleColorAlternative, bundle: nil)
    static let batterySubtractionCircleColor: Color = Color(.batterySubtractionCircleColor, bundle: nil)
    static let sixthBackground: Color = Color(.sixthBackground, bundle: nil)
    static let blockedViewBackgroundColor: Color = Color(.blockedViewBackgroundColor, bundle: nil)
    static let switchSelectedBackgroundColor: Color = Color(.switchSelectedBackgroundColor, bundle: nil)
    static let switchThumbSelectedColor: Color = Color(.switchThumbSelectedColor, bundle: nil)
    static let switchThumbUnselectedColor: Color = Color(.switchThumbUnselectedColor, bundle: nil)
    static let switchUnselectedBackgroundColor: Color = Color(.switchUnselectedBackgroundColor, bundle: nil)
    static let switchUnselectedBorderColor: Color = Color(.switchUnselectedBorderColor, bundle: nil)
    static let switchSelectedBorderColor: Color = Color(.switchSelectedBorderColor, bundle: nil)
    static let loadingBarAlternativeColor: Color = Color(.loadingBarAlternativeColor, bundle: nil)
    static let loadingBarColor: Color = Color(.loadingBarColor, bundle: nil)
    static let loadingBarSubtractionColor: Color = Color(.loadingBarSubtractionColor, bundle: nil)
    static let topUpButtonSelectedColor: Color = Color(.topUpButtonSelectedColor, bundle: nil)
    static let topUpButtonUnselectedColor: Color = Color(.topUpButtonUnselectedColor, bundle: nil)
    static let walletBalanceViewColor: Color = Color(.walletBalanceViewColor, bundle: nil)
    static let sliderDisabledColor: Color = Color(.sliderDisabledColor, bundle: nil)
    static let sliderDisabledThumbColor: Color = Color(.sliderDisabledThumbColor, bundle: nil)
    static let sliderEnabledColor: Color = Color(.sliderEnabledColor, bundle: nil)
    static let primaryButtonUnselectedColor: Color = Color(.primaryButtonUnselectedColor, bundle: nil)
    static let primaryButtonSelectedColor: Color = Color(.primaryButtonSelectedColor, bundle: nil)
    static let networkListItemBackgroundColor: Color = Color(.networkListItemBackgroundColor, bundle: nil)
    static let plugsListItemBackgroundColor: Color = Color(.plugsListItemBackgroundColor, bundle: nil)
    static let plugsListItemBorderColor: Color = Color(.plugsListItemBorderColor, bundle: nil)
    static let energyBarColors: Color = Color(.energyBarColors, bundle: nil)
    static let chargingTimeBarsColor: Color = Color(.chargingTimeBarsColor, bundle: nil)
    static let joinMobiePaymentMethodSelected: Color = Color(.joinMobiePaymentMethodSelected, bundle: nil)
    static let joinMobiePaymentMethodUnSelected: Color = Color(.joinMobiePaymentMethodUnSelected, bundle: nil)
    static let sliderDisabledTextColor: Color = Color(.sliderDisabledTextColor, bundle: nil)
    static let sliderEnabledTextColor: Color = Color(.sliderEnabledTextColor, bundle: nil)
    static let topUpButtonSelectedTextColor: Color = Color(.topUpButtonSelectedTextColor, bundle: nil)
    static let topUpButtonUnselectedTextColor: Color = Color(.topUpButtonUnselectedTextColor, bundle: nil)
    static let primaryButtonTextSelectedColor: Color = Color(.primaryButtonTextSelectedColor, bundle: nil)
    static let historyStatusBilledAndNotPaid: Color = Color(.historyStatusBilledAndNotPaid, bundle: nil)
    static let historyStatusFailedBilling: Color = Color(.historyStatusFailedBilling, bundle: nil)
    static let historyStatusFailedPayment: Color = Color(.historyStatusFailedPayment, bundle: nil)
    static let historyStatusNotApplicable: Color = Color(.historyStatusNotApplicable, bundle: nil)
    static let historyStatusPaid: Color = Color(.historyStatusPaid, bundle: nil)
    static let historyStatusPaidAndBilled: Color = Color(.historyStatusPaidAndBilled, bundle: nil)
    static let historyStatusToProcess: Color = Color(.historyStatusToProcess, bundle: nil)
    static let fifthShadow: Color = Color(.sRGB, red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, opacity: 0.16)
    static let fifthBackground: Color = Color(.sRGB, red: 90.0/255.0, green: 80.0/255.0, blue: 85.0/255.0, opacity: 0.392)
    static let semiTransparent: Color = .black.opacity(0.5)
    static let alternativeSemiTransparent: Color = Color(.sRGB, red: 80.0/255.0, green: 85.0/255.0, blue: 100.0/255.0, opacity: 0.67)
    static let transparent: Color = .black.opacity(0.0001)
    static let alternativeTransparent: Color = Color(.sRGB, red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, opacity: 0.35)
    
    static func colorFor(status: EVIOStatus) -> Color {
        switch status {
        case .free:
            return .tertiaryBackground
        case .charging:
            return .errorColor
        default:
            return .unavailableColor
        }
    }
    
}
