//
//  EVIOCycleType.swift
//  WLModels
//
//  Created by Tiago Moreira on 03/12/2021.
//

import Foundation

public enum EVIOCycleType: String, Codable {
    
    case serverWeekly = "server_weekly"
    case serverDaily = "server_daily"
    case all
    
}
