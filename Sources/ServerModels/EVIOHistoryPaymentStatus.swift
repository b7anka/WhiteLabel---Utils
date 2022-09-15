//
//  EVIOHistoryPaymentStatus.swift
//  evio
//
//  Created by Tiago Moreira on 15/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public enum EVIOHistoryPaymentStatus: String, Codable {
    
    case paid = "PAID"
    case paidAndBilled = "PAIDANDBILLED"
    case toProcess = "TOPROCESS"
    case notApplicable = "NOTAPPLICABLE"
    case failedBilling = "FAILEDBILLING"
    case failedPayment = "FAILEDPAYMENT"
    case billedAndNotPaid = "BILLEDANDNOTPAID"
    
}
