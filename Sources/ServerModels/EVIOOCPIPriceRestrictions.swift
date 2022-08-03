//
//  EVIOOCPIPriceRestrictions.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOOCPIPriceRestrictions: Codable {
    
    public var startDate: String?
    public var endDate: String?
    public var startTime: String?
    public var endTime: String?
    public var minKwh: Double?
    public var maxKwh: Double?
    public var minCurrent: Double?
    public var maxCurrent: Double?
    public var minPower: Double?
    public var maxPower: Double?
    public var minDuration: Double?
    public var maxDuration: Double?
    public var dayOfWeek: [String]?
    public var reservation: String?
    
    enum CodingKeys: String, CodingKey {
        case startDate = "start_date", endDate = "end_date", startTime = "start_time", endTime = "end_time", minKwh = "min_kwh", maxKwh = "max_kwh", minCurrent = "min_current", maxCurrent = "max_current", minPower = "min_power", maxPower = "max_power", minDuration = "min_duration", maxDuration = "max_duration", dayOfWeek = "day_of_week", reservation
    }
    
}
