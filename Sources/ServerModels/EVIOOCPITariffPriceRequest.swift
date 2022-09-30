//
//  EVIOOCPITariffPriceRequest.swift
//  WLModels
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOOCPITariffPriceRequest: Codable {
    
    public var elements: [EVIOOCPIPriceElement]
    public var sessionStartDate: String?
    public var sessionStopDate: String?
    public var offset: Double?
    public var power: Double?
    public var totalEnergy: Double?
    public var totalChargingTime: Double?
    public var totalParkingTime: Double?
    public var timeZone: String?
    public var countryCode: String?
    public var latitude: Double?
    public var longitude: Double?
    public var source: String?
    public var partyId: String?
    public var evseGroup: String?
    public var roamingPlanId: String?
    public var voltageLevel: EVIOVoltageLevel?
    
    private enum CodingKeys: String, CodingKey {
        case elements, sessionStartDate, sessionStopDate, offset, power, totalEnergy = "total_energy", totalChargingTime = "total_charging_time", totalParkingTime = "total_parking_time", timeZone, countryCode, latitude, longitude, source, partyId, evseGroup, voltageLevel
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.elements = try container.decodeIfPresent([EVIOOCPIPriceElement].self, forKey: .elements) ?? []
        self.sessionStartDate = try container.decodeIfPresent(String.self, forKey: .sessionStartDate)
        self.sessionStopDate = try container.decodeIfPresent(String.self, forKey: .sessionStopDate)
        self.offset = try container.decodeIfPresent(Double.self, forKey: .offset)
        self.power = try container.decodeIfPresent(Double.self, forKey: .power)
        self.totalEnergy = try container.decodeIfPresent(Double.self, forKey: .totalEnergy)
        self.totalChargingTime = try container.decodeIfPresent(Double.self, forKey: .totalChargingTime)
        self.totalParkingTime = try container.decodeIfPresent(Double.self, forKey: .totalParkingTime)
        self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.source = try container.decodeIfPresent(String.self, forKey: .source)
        self.partyId = try container.decodeIfPresent(String.self, forKey: .partyId)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.evseGroup = try container.decodeIfPresent(String.self, forKey: .evseGroup)
        self.voltageLevel = try container.decodeIfPresent(EVIOVoltageLevel.self, forKey: .voltageLevel)
    }
    
    public init(power: Double?, elements: [EVIOOCPIPriceElement]?, startDate: String?, stopDate: String?, offset: Double?, totalEnergy: Double?, totalChargingTime: Double?, totalParkingTime: Double? = 0.0, timeZone: String?, partyId: String?, source: String?, countryCode: String?, latitude: Double?, longitude: Double?, evseGroup: String?, roamingPlanId: String?, voltageLevel: EVIOVoltageLevel?) {
        self.power = power
        self.elements = elements ?? []
        self.sessionStartDate = startDate
        self.sessionStopDate = stopDate
        self.offset = offset
        self.totalEnergy = totalEnergy
        self.totalChargingTime = totalChargingTime
        self.totalParkingTime = totalParkingTime
        self.timeZone = timeZone
        self.partyId = partyId
        self.source = source
        self.countryCode = countryCode
        self.latitude = latitude
        self.longitude = longitude
        self.evseGroup = evseGroup
        self.roamingPlanId = roamingPlanId
        self.voltageLevel = voltageLevel
    }
    
    public func toDictionary() -> [String: Any] {
        do {
            let data: Data = try JSONEncoder().encode(self)
            if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
            return [:]
        } catch {
            return [:]
        }
    }
    
}
