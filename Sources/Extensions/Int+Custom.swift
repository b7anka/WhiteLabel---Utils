//
//  Int+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import Foundation

// this makes an alias for the Int struct
public typealias HTTPStatusCode = Int
// this makes an alias for the Int struct
public typealias EVIODataSize = Int
// this makes an alias for the Int struct
public typealias EVIOChargingAnimationInterval = Int
// this makes an alias for the Int struct
public typealias EVIOChargingAnimationTimeout = Int
/// # ENUM CONTAINING CUSTOM VALUES FOR THE SWIFT'S INT STRUCT
public extension Int {
    
    // success response
    static let ok: Int = 200
    // something happened normally it's a bad request from the client
    static let badRequest: Int = 400
    // user is unauthorized to access the service
    static let unauthorized: Int = 401
    // server error
    static let internalServerError: Int = 500
    // 1 kilobyte
    static let oneKB: Int = 1024
    // max json size in kilobytes to be parsed by the codable protocol
    static let maxJsonSize: Int = 512
    // the total stars of the filters page rating bar
    static let filtersRatingBarTotalStars: Int = 5
    // free charging sttions
    static let freeChargingStations: Int = 10
    // the value to be multiplied to give the impression of an infinite scroll
    static let infiniteScrollValue: Int = 1000
    // the duration for the animation of a siemens charger
    static let siemensAnimationDuration: EVIOChargingAnimationInterval = 15
    // the duration for the animation of an evio charger
    static let evioAnimationDuration: EVIOChargingAnimationInterval = 11
    // the timeout duration for a siemens charger
    static let siemensTimoutDuration: EVIOChargingAnimationTimeout = 100
    // the timeout for an ocpp 1.6 version charger
    static let ocpp16TimoutDuration: EVIOChargingAnimationTimeout = 100
    // the timout for an ocps charger
    static let ocpsTimoutDuration: EVIOChargingAnimationTimeout = 70
    // the timeout for other types of charger
    static let otherChargerTimoutDuration: EVIOChargingAnimationTimeout = 300
    // the timout for the zero zero six charger
    static let zeroZeroSixTimoutDuration: EVIOChargingAnimationTimeout = 70
    // the timeout for an evio charger
    static let evioTimoutDuration: EVIOChargingAnimationTimeout = 40
    static let currentBaseYear: Int = 2000
    static let lastMonth: Int = 1
    static let lastSemester: Int = 6
    static let lastYear: Int = 12
    static let defaultQueryLimit: Int = 40
    
}
