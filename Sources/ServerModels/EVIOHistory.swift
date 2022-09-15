//
//  EVIOHistory.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/05/2022.
//

import Foundation
import SwiftUI

public struct EVIOHistory: Codable {
    
    public var totalPower, timeCharged, co2Saved: Double?
    public var id, evID, cdrId, chargerType, startDate: String?
    public var purchaseTariff: EVIOPurchaseTariff?
    public var costDetails: EVIOChargingSessionCostDetails?
    public var totalPrice: EVIOTotalPrice?
    public var stopDate: String?
    public var ev: EVIOEv?
    public var paymentBillingInfo: EVIOHistoryPaymentStatus?

    enum CodingKeys: String, CodingKey {
        case totalPower, timeCharged
        case co2Saved = "CO2Saved"
        case id = "_id"
        case evID = "evId"
        case chargerType, startDate, purchaseTariff, costDetails, totalPrice, stopDate, ev, cdrId, paymentBillingInfo
    }
    
    public var status: String {
        guard let status = self.paymentBillingInfo else { return .empty }
        switch status {
        case .paid:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoPaid
        case .paidAndBilled:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoPaidAndBilled
        case .toProcess:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoToProcess
        case .failedBilling:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoFailedBilling
        case .failedPayment:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoFailedPayment
        case .billedAndNotPaid:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoBilledAndNotPaid
        default:
            return EVIOLanguageManager.shared.language.historyPaymentBillingInfoNotApplicable
        }
    }
    
    public var statusColor: Color {
        guard let status = self.paymentBillingInfo else { return .clear }
        switch status {
        case .paid:
            return Color.historyStatusPaid
        case .paidAndBilled:
            return Color.historyStatusPaidAndBilled
        case .toProcess:
            return Color.historyStatusToProcess
        case .notApplicable:
            return Color.historyStatusNotApplicable
        case .failedBilling:
            return Color.historyStatusFailedBilling
        case .billedAndNotPaid:
            return Color.historyStatusBilledAndNotPaid
        case .failedPayment:
            return Color.historyStatusFailedPayment
        }
    }
    
}
