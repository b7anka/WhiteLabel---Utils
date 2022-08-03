//
//  EVIOPointOfInterest.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOPointOfInterest: Codable {
    
    public var plusCode: EVIOPlusCode?
    public var types: [String]?
    public var id: String?
    public var googleId: String?
    public var businessStatus: String?
    public var geometry: EVIOPlaceGeometry?
    public var icon: String?
    public var name: String?
    public var photos: String?
    public var placeId: String?
    public var rating: Double?
    public var reference: String?
    public var scope: String?
    public var userRatingsTotal: Int64?
    public var vicinity: String?
    public var distanceAndTime: String?
    
    private enum CodingKeys: String, CodingKey {
        case businessStatus = "business_status", geometry, icon, id = "_id", googleId = "id", name, photos, placeId = "place_id", plusCode = "plus_code", rating, reference, scope, types, userRatingsTotal = "user_ratings_total", vicinity
    }
    
}

extension EVIOPointOfInterest: Equatable {
    
    public static func == (lhs: EVIOPointOfInterest, rhs: EVIOPointOfInterest) -> Bool {
        return lhs.id == rhs.id
    }
    
}
