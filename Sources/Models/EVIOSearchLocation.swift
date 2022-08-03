//
//  EVIOSearchLocation.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/12/2021.
//

import Foundation
import MapKit

public struct EVIOSearchLocation: Hashable, Identifiable, Codable, Equatable {
    
    public var id: String
    public var country: String?
    public var district: String?
    public var postalCode: String?
    public var streetName: String?
    public var streetNumber: String?
    public var saved: Bool
    public var location: CLLocationCoordinate2D
    public var charger: EVIOCharger?
    public var mkSearchCompletion: MKLocalSearchCompletion?
    
    private enum CodingKeys: String, CodingKey {
        case id, country, district, postalCode, streetName, streetNumber, saved, location, charger
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id) ?? UUID().uuidString
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.district = try container.decodeIfPresent(String.self, forKey: .district)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.streetName = try container.decodeIfPresent(String.self, forKey: .streetName)
        self.streetNumber = try container.decodeIfPresent(String.self, forKey: .streetNumber)
        self.saved = try container.decodeIfPresent(Bool.self, forKey: .saved) ?? false
        if let location = try? container.decodeIfPresent(String.self, forKey: .location) {
            self.location = CLLocationCoordinate2D(coordinateString: location)
        } else {
            self.location = .lisbon
        }
        self.charger = try container.decodeIfPresent(EVIOCharger.self, forKey: .charger)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.district, forKey: .district)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.streetName, forKey: .streetName)
        try container.encodeIfPresent(self.streetNumber, forKey: .streetNumber)
        try container.encodeIfPresent(self.saved, forKey: .saved)
        try container.encodeIfPresent(self.location.asString, forKey: .location)
        try container.encodeIfPresent(self.charger, forKey: .charger)
    }
    
    public init() {
        self.id = UUID().uuidString
        self.country = nil
        self.district = nil
        self.postalCode = nil
        self.streetName = nil
        self.streetNumber = nil
        self.saved = false
        self.location = .lisbon
        self.charger = nil
    }
    
    public init(with search: MKMapItem) {
        self.id = search.timeZone?.identifier ?? UUID().uuidString
        self.country = search.placemark.country
        self.district = search.placemark.locality
        self.postalCode = search.placemark.postalAddress?.postalCode ?? search.placemark.postalCode
        self.streetName = search.placemark.postalAddress?.street ?? search.placemark.name
        self.streetNumber = nil
        self.location = search.placemark.coordinate
        self.charger = nil
        self.saved = false
        self.mkSearchCompletion = nil
    }
    
    public init(with search: CLPlacemark) {
        self.id = search.timeZone?.identifier ?? UUID().uuidString
        self.country = search.country
        self.district = search.locality
        self.postalCode = search.postalAddress?.postalCode ?? search.postalCode
        self.streetName = search.postalAddress?.street ?? search.name
        self.streetNumber = nil
        self.location = search.location?.coordinate ?? .lisbon
        self.charger = nil
        self.saved = false
        self.mkSearchCompletion = nil
    }
    
    public init(with search: MKLocalSearchCompletion) {
        self.id = search.title
        self.country = search.subtitle
        self.district = nil
        self.postalCode = nil
        self.streetName = search.title
        self.streetNumber = nil
        self.location = .lisbon
        self.charger = nil
        self.saved = false
        self.mkSearchCompletion = search
    }
    
    public init(with charger: EVIOCharger) {
        self.id = charger.chargerId ?? charger.id ?? UUID().uuidString
        self.country = charger.address?.toString()
        self.district = charger.address?.city
        self.postalCode = charger.address?.zipCode
        self.streetName = charger.name
        self.streetNumber = charger.address?.number
        self.location = .lisbon
        self.charger = charger
        self.saved = false
        self.mkSearchCompletion = nil
    }
    
    public init(with referencePlace: EVIOReferencePlace) {
        self.id = referencePlace.id ?? UUID().uuidString
        self.country = referencePlace.address?.country
        self.district = referencePlace.address?.city
        self.postalCode = referencePlace.address?.zipCode
        self.streetName = referencePlace.address?.street
        self.streetNumber = referencePlace.address?.number
        self.location = CLLocationCoordinate2D(latitude: referencePlace.geometry?.coordinates?.last ?? 0, longitude: referencePlace.geometry?.coordinates?.first ?? 0)
        self.charger = nil
        self.saved = false
        self.mkSearchCompletion = nil
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(self.id)
    }
    
    public func toString() -> String {
        var stringToReturn: String = ""
        if let streetName = self.streetName {
            stringToReturn += "\(streetName), "
        }
        if let city = self.district {
            stringToReturn += "\(city), "
        }
        if let postalCode = postalCode {
            stringToReturn += postalCode
        }
        return stringToReturn
    }
    
    public static func == (lhs: EVIOSearchLocation, rhs: EVIOSearchLocation) -> Bool {
        if let lhsCompletion = lhs.mkSearchCompletion, let rhsCompletion = rhs.mkSearchCompletion {
            return lhsCompletion == rhsCompletion
        }
        return lhs.id == rhs.id
    }
    
}
