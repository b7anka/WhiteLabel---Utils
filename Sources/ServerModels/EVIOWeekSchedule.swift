//
//  EVIOWeekSchedule.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/05/2022.
//

import Foundation

public struct EVIOWeekSchedule: Codable {
    
    public var id, weekDay: String?
    public var scheduleTime: [EVIOScheduleTime]?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case weekDay, scheduleTime
    }
    
}
