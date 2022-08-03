//
//  EVIOBillingAddress.swift
//  WLModels
//
//  Created by Tiago Moreira on 19/05/2022.
//

import Foundation

public struct EVIOBillingAddress: Codable {
    
    public var address: String?
    public var postalCode: String?
    public var city: String?
    public var country: String?
    public var countryCode: String?
    
    private enum CodingKeys: String, CodingKey {
        case address, postalCode = "postCode", city, country, countryCode
    }
    
    public init(address: String?, postalCode: String?, city: String?, country: String?, countryCode: String?) {
        self.address = address
        self.postalCode = postalCode
        self.city = city
        self.country = country
        self.countryCode = countryCode
    }
    
    public func toString(separatedBy: String = ",") -> String {
        var addresses: [String] = []
        if let address = self.address, !address.isEmpty {
            if !addresses.contains(address) {
                addresses.append(address)
            }
        }
        if let postalCode = self.postalCode, !postalCode.isEmpty {
            if !addresses.contains(postalCode) {
                addresses.append(postalCode)
            }
        }
        if let city = self.city, !city.isEmpty {
            if !addresses.contains(city) {
                addresses.append(city)
            }
        }
        if let country = self.country, !country.isEmpty {
            if !addresses.contains(country) {
                addresses.append(country)
            }
        }
        var stringToReturn = ""
        for (index, a) in addresses.enumerated() {
            if index == addresses.count-1 {
                stringToReturn += a
            }else {
                stringToReturn += "\(a)\(separatedBy) "
            }
        }
        return stringToReturn
    }
    
}
