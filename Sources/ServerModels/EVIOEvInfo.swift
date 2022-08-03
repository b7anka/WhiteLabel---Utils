// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let evInfo = try? newJSONDecoder().decode(EVIOEvInfo.self, from: jsonData)

import Foundation

// MARK: - EVIOEvInfo
public struct EVIOEvInfo: Codable {
    
    public var id: String?
    public var plugsChargingTable: [EVIOPlugsChargingTable]?
    public var plugsFastChargingTable: [EVIOPlugsFastChargingTable]?
    public var plugs: [EVIOEvPlug]?
    public var databaseVehicleID: String?
    public var yearFrom, yearTo: String?
    public var range: Double?
    public var useableBatteryCapacity: Double?
    public var maxBatteryCapacity: Double?
    public var eletricMotorPower: Double?
    public var internalChargerPower: Double?
    public var internalChargerChargeTime, internalChargerChargeSpeed: Double?
    public var maxFastChargingPower, avgFastChargingPower, fastchargeChargeTime, fastchargeChargeSpeed: Double?
    public var evType: String?
    public var evEfficiency: Double?
    public var consumptionCity, consumptionHighway: Double?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case plugsChargingTable, plugsFastChargingTable, plugs
        case databaseVehicleID = "databaseVehicleId"
        case yearFrom, yearTo, range, useableBatteryCapacity, maxBatteryCapacity, eletricMotorPower, internalChargerPower, internalChargerChargeTime, internalChargerChargeSpeed, maxFastChargingPower, avgFastChargingPower, fastchargeChargeTime, fastchargeChargeSpeed, evType, evEfficiency, consumptionCity, consumptionHighway
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.plugsChargingTable = try container.decodeIfPresent([EVIOPlugsChargingTable].self, forKey: .plugsChargingTable)
        self.plugsFastChargingTable = try container.decodeIfPresent([EVIOPlugsFastChargingTable].self, forKey: .plugsFastChargingTable)
        self.plugs = try container.decodeIfPresent([EVIOEvPlug].self, forKey: .plugs)
        if let databaseVehicleId: Int = try? container.decodeIfPresent(Int.self, forKey: .databaseVehicleID) {
            self.databaseVehicleID = String(databaseVehicleId)
        } else {
            self.databaseVehicleID = try container.decodeIfPresent(String.self, forKey: .databaseVehicleID)
        }
        self.yearFrom = try container.decodeIfPresent(String.self, forKey: .yearFrom)
        self.yearTo = try container.decodeIfPresent(String.self, forKey: .yearTo)
        self.range = try container.decodeIfPresent(Double.self, forKey: .range)
        self.useableBatteryCapacity = try container.decodeIfPresent(Double.self, forKey: .useableBatteryCapacity)
        self.maxBatteryCapacity = try container.decodeIfPresent(Double.self, forKey: .maxBatteryCapacity)
        self.eletricMotorPower = try container.decodeIfPresent(Double.self, forKey: .eletricMotorPower)
        self.internalChargerPower = try container.decodeIfPresent(Double.self, forKey: .internalChargerPower)
        self.internalChargerChargeTime = try container.decodeIfPresent(Double.self, forKey: .internalChargerChargeTime)
        self.internalChargerChargeSpeed = try container.decodeIfPresent(Double.self, forKey: .internalChargerChargeSpeed)
        self.maxFastChargingPower = try container.decodeIfPresent(Double.self, forKey: .maxFastChargingPower)
        self.avgFastChargingPower = try container.decodeIfPresent(Double.self, forKey: .avgFastChargingPower)
        self.fastchargeChargeTime = try container.decodeIfPresent(Double.self, forKey: .fastchargeChargeTime)
        self.fastchargeChargeSpeed = try container.decodeIfPresent(Double.self, forKey: .fastchargeChargeSpeed)
        self.evType = try container.decodeIfPresent(String.self, forKey: .evType)
        self.evEfficiency = try container.decodeIfPresent(Double.self, forKey: .evEfficiency)
        self.consumptionCity = try container.decodeIfPresent(Double.self, forKey: .consumptionCity)
        self.consumptionHighway = try container.decodeIfPresent(Double.self, forKey: .consumptionHighway)
    }
    
    public init(id: String?, plugsChargingTable: [EVIOPlugsChargingTable]?, plugsFastChargingTable: [EVIOPlugsFastChargingTable]?, plugs: [EVIOEvPlug]?, databaseVehicleID: String?, yearFrom: String?, yearTo: String?, range: Double?, useableBatteryCapacity: Double?, maxBatteryCapacity: Double?, eletricMotorPower: Double?, internalChargerPower: Double?, internalChargerChargeTime: Double?, internalChargerChargeSpeed: Double?, maxFastChargingPower: Double?, avgFastChargingPower: Double?, fastchargeChargeTime: Double?, fastchargeChargeSpeed: Double?, evType: String?, evEfficiency: Double?, consumptionCity: Double?, consumptionHighway: Double?) {
        self.id = id
        self.internalChargerPower = internalChargerPower
        self.maxBatteryCapacity = maxBatteryCapacity
        self.plugsChargingTable = plugsChargingTable
        self.plugsFastChargingTable = plugsFastChargingTable
        self.plugs = plugs
        self.databaseVehicleID = databaseVehicleID
        self.yearFrom = yearFrom
        self.internalChargerChargeTime = internalChargerChargeTime
        self.internalChargerChargeSpeed = internalChargerChargeSpeed
        self.maxFastChargingPower = maxFastChargingPower
        self.avgFastChargingPower = avgFastChargingPower
        self.fastchargeChargeTime = fastchargeChargeTime
        self.fastchargeChargeSpeed = fastchargeChargeSpeed
        self.evType = evType
        self.evEfficiency = evEfficiency
        self.consumptionCity = consumptionCity
        self.consumptionHighway = consumptionHighway
    }
    
}
