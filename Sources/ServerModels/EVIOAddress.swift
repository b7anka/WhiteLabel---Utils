// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let myActiveSessionAddress = try? newJSONDecoder().decode(EVIOAddress.self, from: jsonData)

import Foundation

// MARK: - EVIOAddress
public struct EVIOAddress: Codable {
    
    public var id, street, number, zipCode: String?
    public var city, country: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case street, number, zipCode, city, country
    }
    
    public init() {}
    
    public init(id: String?, street: String?, number: String?, zipCode: String?, city: String?, country: String?) {
        self.id = id
        self.street = street
        self.number = number
        self.zipCode = zipCode
        self.city = city
        self.country = country
    }
    
    public func toString(separatedBy: String = ",") -> String {
        var addresses: [String] = []
        if let street = self.street, !street.isEmpty {
            if !addresses.contains(street) {
                addresses.append(street)
            }
        }
        if let number = self.number, !number.isEmpty {
            if !addresses.contains(number) {
                addresses.append(number)
            }
        }
        if let zipCode = self.zipCode, !zipCode.isEmpty {
            if !addresses.contains(zipCode) {
                addresses.append(zipCode)
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
        return stringToReturn.isEmpty ? "-" : stringToReturn
    }
    
}
