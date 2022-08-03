//
//  EVIOMapFilter.swift
//  WLModels
//
//  Created by Tiago Moreira on 24/12/2021.
//

import Foundation

public struct EVIOMapFilter: Codable, Equatable {
    
    public var id: String
    public var availableStations: [Int?]?
    public var priceRange: EVIOMapFilterRange?
    public var powerRange: EVIOMapFilterRange?
    public var connectorType: [String?]?
    public var rating: Double?
    public var parkingType: [String?]?
    public var vehicles: [String?]?
    public var stations: [String?]?
    public var ev: EVIOEv?
    
    public init(cleanFilter: Bool = false, id: String = UUID().uuidString) {
        self.id = id
        self.availableStations = cleanFilter ? [] : [10]
        self.connectorType = []
        self.parkingType = []
        self.vehicles = []
        self.stations = []
        self.priceRange = nil
        self.powerRange = nil
        self.ev = nil
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), var dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        dict.removeValue(forKey: CodingKeys.id.stringValue)
        dict.removeValue(forKey: CodingKeys.ev.stringValue)
        return dict
    }
    
    public static func == (lhs: EVIOMapFilter, rhs: EVIOMapFilter) -> Bool {
        return lhs.id == rhs.id
    }
    
}

public extension EVIOMapFilter {
    
    static var `default`: EVIOMapFilter {
        return EVIOMapFilter()
    }
    
    static var cleanFilter: EVIOMapFilter {
        return EVIOMapFilter(cleanFilter: true, id: "clean")
    }
    
}
