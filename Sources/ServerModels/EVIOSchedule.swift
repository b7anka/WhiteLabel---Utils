//
//  EVIOSchedule.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public struct EVIOSchedule: Codable {
    
    public var id: String?
    public var country: String?
    public var tariffType: EVIOTariffType?
    public var cycleType: EVIOCycleType?
    public var schedules: [EVIOPlanSchedule]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", country, tariffType, cycleType, schedules
    }
    
    public init(id: String?, country: String?, tariffType: EVIOTariffType?, cycleType: EVIOCycleType?, schedules: [EVIOPlanSchedule] = []) {
        self.id = id
        self.country = country
        self.tariffType = tariffType
        self.cycleType = cycleType
        self.schedules = schedules
    }
    
}
