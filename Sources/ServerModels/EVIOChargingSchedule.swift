//
//  EVIOChargingSchedule.swift
//  evio
//
//  Created by João Tiago Ferreira Moreira on 13/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOChargingSchedule: Codable {
    
    public var hwId: String?
    public var plugId: String?
    public var evId: String?
    public var userId: String?
    public var scheduleStartDate: String?
    public var scheduleStopDate: String?
    public var idTag: String?
    public var tariffId: String?
    public var fees: EVIOFees?
    public var chargerType: String?
    public var address: EVIOAddress?
    
    private enum CodingKeys: String, CodingKey {
        case hwId, plugId, evId, userId, scheduleStartDate, scheduleStopDate, idTag, tariffId, fees, chargerType, address
    }
    
    public init(hwId: String?, plugId: String?, evId: String?, userId: String?, scheduleStartDate: String?, scheduleStopDate: String?, idTag: String?, tariffId: String?, fees: EVIOFees?, chargerType: String?, address: EVIOAddress?) {
        self.hwId = hwId
        self.plugId = plugId
        self.evId = evId
        self.userId = userId
        self.scheduleStartDate = scheduleStartDate
        self.scheduleStopDate = scheduleStopDate
        self.idTag = idTag
        self.tariffId = tariffId
        self.fees = fees
        self.chargerType = chargerType
        self.address = address
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }

}
