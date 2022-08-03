//
//  EVIOOCPIResponsePrice+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation

public extension EVIOOCPIResponsePrice {
    
    var activation: String {
        guard let price = self.flat?.price, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@", locale: Locale.current, price, symbol)
    }
    
    var activationDescription: String {
        guard let price = self.flat?.label?.value, let uom = self.flat?.label?.uom, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return ""}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@/%@", locale: Locale.current, price, symbol, uom)
    }
    
    var chargingByEnergy: String {
        guard let price = self.energy?.price, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@", locale: Locale.current, price, symbol)
    }
    
    var chargingByEnergyDescription: String {
        guard let price = self.energy?.label?.value, let uom = self.energy?.label?.uom, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return ""}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@/%@", locale: Locale.current, price, symbol, uom)
    }
    
    var chargingByTime: String {
        guard let price = self.time?.price, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@", locale: Locale.current, price, symbol)
    }
    
    var chargingByTimeDescription: String {
        guard let price = self.time?.label?.value, let uom = self.time?.label?.uom, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return ""}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@/%@", locale: Locale.current, price, symbol, uom)
    }
    
    var parkingPrice: String {
        guard let price = self.parking?.price, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@", locale: Locale.current, price, symbol)
    }
    
    var parkingPriceDescription: String {
        guard let price = self.parking?.label?.value, let uom = self.parking?.label?.uom, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return ""}
        return String(format: "%.\(price.numberOfDecimalPlaces())f %@/%@", locale: Locale.current, price, symbol, uom)
    }
    
    var totalCharging: String {
        guard let totalPrice = self.totalCost?.exclVat, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(totalPrice.numberOfDecimalPlaces(maxPlaces: 2))f %@", locale: Locale.current, totalPrice, symbol)
    }
    
    var totalPrice: String {
        guard let totalPrice = self.totalCost?.inclVat, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(totalPrice.numberOfDecimalPlaces(maxPlaces: 2))f %@", locale: Locale.current, totalPrice, symbol)
    }
    
    var vatValue: String {
        guard let vat = self.vat?.value, let currency = self.currency, let symbol = EVIOAppUtils.shared.getSymbol(forCurrencyCode: currency) else {return "-"}
        return String(format: "%.\(vat.numberOfDecimalPlaces())f %@", locale: Locale.current, vat, symbol)
    }
    
    var vatDescription: String {
        guard let percentage = self.vat?.percentage else {return ""}
        return String(format: "%.\(percentage.numberOfDecimalPlaces(maxPlaces: 1))f%@", locale: Locale.current, percentage, "%")
    }
    
}
