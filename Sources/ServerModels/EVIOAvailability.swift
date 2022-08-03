//
//  EVIOAvailability.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOAvailability: Codable {
    
    public var id: String?
    public var availabilityType: EVIOChargerAvailabilityType?
    public var monday: EVIODay?
    public var tuesday: EVIODay?
    public var wednesday: EVIODay?
    public var thursday: EVIODay?
    public var friday: EVIODay?
    public var saturday: EVIODay?
    public var sunday: EVIODay?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id", availabilityType, monday, tuesday, wednesday, thursday, friday, saturday, sunday
    }
    
}
