//
//  DateFormater+Custom.swift
//  evio
//
//  Created by Tiago Moreira on 23/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public enum EVIODateFormatterOptions {
    
    case uppercased
    case lowercased
    case capitalized
    
}

public extension DateFormatter {
    
    static func getDayOfTheWeek(_ index: Int, options: EVIODateFormatterOptions = .capitalized, shortNames: Bool = false) -> String? {
        let formatter: DateFormatter = DateFormatter()
        formatter.locale = Locale.current
        guard index > -1 && index < 7 else { return nil }
        switch options {
        case .uppercased:
            return shortNames ? formatter.shortWeekdaySymbols[index].uppercased() : formatter.weekdaySymbols[index].uppercased()
        case .lowercased:
            return shortNames ? formatter.shortWeekdaySymbols[index].lowercased() : formatter.weekdaySymbols[index].lowercased()
        case .capitalized:
            return shortNames ? formatter.shortWeekdaySymbols[index].capitalized : formatter.weekdaySymbols[index].capitalized
        }
    }
    
}
