//
//  EVIOScheduleTime.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/05/2022.
//

import Foundation

public struct EVIOScheduleTime: Codable {
    
    public var value: Double?
    public var id, startTime, stopTime: String?

    enum CodingKeys: String, CodingKey {
        case value
        case id = "_id"
        case startTime, stopTime
    }
    
}
