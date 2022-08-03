//
//  EVIOPlug.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public final class EVIOPlug: Codable {
    
    public var status: EVIOStatus?
    public var id: String?
    public var plugId: String?
    public var active: Bool?
    public var amperage: Double?
    public var connectorType: String?
    public var power: Double?
    public var voltage: Double?
    public var tariff: [EVIOTariff]?
    public var canBeAutomaticallyBooked: Bool?
    public var canBeNotified: Bool?
    public var session: EVIOChargerSession?
    public var qrCodeId: String?
    public var mySession: String?
    public var serviceCost: EVIOServiceCost?
    public var subStatus: EVIOPlugSubSatus?
    public var selected: Bool
    public var evseGroup: String?
    
    public enum CodingKeys: String, CodingKey {
        case status, id = "_id", plugId, active, amperage, connectorType, power, voltage, tariff, canBeNotified, canBeAutomaticallyBooked, session, qrCodeId, mySession, serviceCost, subStatus, selected, evseGroup
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decodeIfPresent(EVIOStatus.self, forKey: .status)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.plugId = try container.decodeIfPresent(String.self, forKey: .plugId)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active)
        self.amperage = try container.decodeIfPresent(Double.self, forKey: .amperage)
        self.connectorType = try container.decodeIfPresent(String.self, forKey: .connectorType)
        self.power = try container.decodeIfPresent(Double.self, forKey: .power)
        self.voltage = try container.decodeIfPresent(Double.self, forKey: .voltage)
        self.tariff = try container.decodeIfPresent([EVIOTariff].self, forKey: .tariff)
        self.canBeAutomaticallyBooked = try container.decodeIfPresent(Bool.self, forKey: .canBeAutomaticallyBooked)
        self.canBeNotified = try container.decodeIfPresent(Bool.self, forKey: .canBeNotified)
        self.session = try container.decodeIfPresent(EVIOChargerSession.self, forKey: .session)
        self.qrCodeId = try container.decodeIfPresent(String.self, forKey: .qrCodeId)
        self.mySession = try container.decodeIfPresent(String.self, forKey: .mySession)
        self.serviceCost = try container.decodeIfPresent(EVIOServiceCost.self, forKey: .serviceCost)
        self.subStatus = try container.decodeIfPresent(EVIOPlugSubSatus.self, forKey: .subStatus)
        self.evseGroup = try container.decodeIfPresent(String.self, forKey: .evseGroup)
        self.selected = try container.decodeIfPresent(Bool.self, forKey: .selected) ?? false
    }
    
    public init(id: String?, connectorType: String?, power: Double?) {
        self.connectorType = connectorType
        self.status = nil
        self.id = id
        self.plugId = nil
        self.active = nil
        self.amperage = nil
        self.power = power
        self.voltage = nil
        self.tariff = nil
        self.canBeNotified = nil
        self.canBeAutomaticallyBooked = nil
        self.session = nil
        self.qrCodeId = nil
        self.mySession = nil
        self.serviceCost = nil
        self.subStatus = nil
        self.evseGroup = nil
        self.selected = false
    }
    
}

extension EVIOPlug: Equatable {
    
    public static func == (lhs: EVIOPlug, rhs: EVIOPlug) -> Bool {
        if let lhsId = lhs.id, let rhsId = rhs.id {
            return lhsId == rhsId
        } else if let lhsPlugId = lhs.plugId, let rhsPlugId = rhs.plugId {
            return lhsPlugId == rhsPlugId
        }
        return false
    }

}
