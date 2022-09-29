//
//  NumberFormatter+Custom.swift
//  evio
//
//  Created by Tiago Moreira on 26/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public extension NumberFormatter {
    
    static func formatCurrencyFor(locale: Locale = Locale.current, with value: Double, and currencyCode: String? = nil) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .currency
        if let currencyCode = currencyCode {
            formatter.currencyCode = currencyCode
        }
        return formatter.string(from: NSNumber(floatLiteral: value))
    }
    
}
