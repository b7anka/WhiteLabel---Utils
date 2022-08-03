//
//  EVIOBillingType.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIOBillingType: String, Codable {
    
    case billingTypeNotApplicable
    case billingTypeForImportingCosts
    case billingTypeForBilling
    
    public init?(rawValue: String) {
        switch rawValue {
        case "billingTypeNotApplicable":
            self = .billingTypeNotApplicable
        case "billingTypeForImportingCosts":
            self = .billingTypeForImportingCosts
        default:
            self = .billingTypeForBilling
        }
    }
    
}
