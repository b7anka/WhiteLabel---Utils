//
//  File.swift
//  
//
//  Created by Tiago Moreira on 17/10/2022.
//

import Foundation
import SwiftDate

public extension EVIOPlafondMovement {
    
    var date: String {
        guard let beginDate = self.beginDate, let endDate = self.endDate else {return .noValue}
        let startDate = Date.UTCToLocal(date: beginDate)
        let stopDate = Date.UTCToLocal(date: endDate)
        return Date.formatDateForHistory(dateStart: startDate, dateStop: stopDate)
    }
    
    var timeCharged: String {
        guard let timeCharged = self.chargedTime else {return .noValue}
        return TimeInterval(timeCharged * 3600).timeAsString(showDays: true, showSeconds: true)
    }
    
    var movement: String {
        guard let price = self.totalPrice?.inclVat, let formattedPrice = NumberFormatter.formatCurrencyFor(with: price) else {return .noValue}
        return formattedPrice
    }
    
    var address: String {
        guard let charger = self.charger, !(charger.address?.toString().isEmpty ?? false) else { return .noValue}
        return charger.address?.toString() ?? .noValue
    }
    
    var network: String {
        guard let network = self.netWork else {return .noValue}
        return EVIOLanguageManager.shared.getTranslationFor(key: network)
    }
    
    var hardwareId: String {
        guard let hardwareId = self.hwId else {return .noValue}
        return hardwareId
    }
    
}
