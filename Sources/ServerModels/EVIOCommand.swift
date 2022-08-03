//
//  EVIOCommand.swift
//  WLModels
//
//  Created by Tiago Moreira on 01/04/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOCommand: Codable {
    
    public var chargerId: String?
    public var evId: String?
    public var tariffId: String?
    public var action: String?
    public var plugId: String?
    public var idTag: String?
    public var sessionId: String?
    public var chargerType: String?
    public var hardwareId: String?
    public var address: EVIOAddress?
    public var fees: EVIOFees?
    public var autoStop: EVIOAutoStop?
    public var stopReason: EVIOStopReason?
    
    private enum CodingKeys: String, CodingKey {
        case chargerId, evId, tariffId, action, plugId, idTag, sessionId, chargerType, address, fees, hardwareId = "hwId", autoStop, stopReason
    }
    
    public init(chargerId: String?, evId: String?, tariffId: String?, action: String?, plugId: String?, idTag: String?, sessionId: String?, chargerType: String?, hardwareId: String?, address: EVIOAddress?, fees: EVIOFees?, autoStop: EVIOAutoStop?, stopReason: EVIOStopReason?) {
        self.chargerId = chargerId
        self.evId = evId
        self.tariffId = tariffId
        self.action = action
        self.plugId = plugId
        self.idTag = idTag
        self.sessionId = sessionId
        self.chargerType = chargerType
        self.hardwareId = hardwareId
        self.address = address
        self.fees = fees
        self.autoStop = autoStop
        self.stopReason = stopReason
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargerId = try container.decodeIfPresent(String.self, forKey: .chargerId)
        self.tariffId = try container.decodeIfPresent(String.self, forKey: .tariffId)
        self.evId = try container.decodeIfPresent(String.self, forKey: .evId)
        self.action = try container.decodeIfPresent(String.self, forKey: .action)
        self.plugId = try container.decodeIfPresent(String.self, forKey: .plugId)
        self.idTag = try container.decodeIfPresent(String.self, forKey: .idTag)
        if let sessionId = try? container.decodeIfPresent(Int64.self, forKey: .sessionId) {
            self.sessionId = String(sessionId)
        } else if let sessionId = try? container.decodeIfPresent(String.self, forKey: .sessionId) {
            self.sessionId = sessionId
        }
        self.chargerType = try container.decodeIfPresent(String.self, forKey: .chargerType)
        self.hardwareId = try container.decodeIfPresent(String.self, forKey: .hardwareId)
        self.address = try container.decodeIfPresent(EVIOAddress.self, forKey: .address)
        self.fees = try container.decodeIfPresent(EVIOFees.self, forKey: .fees)
        self.autoStop = try container.decodeIfPresent(EVIOAutoStop.self, forKey: .autoStop)
        self.stopReason = try container.decodeIfPresent(EVIOStopReason.self, forKey: .stopReason)
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
