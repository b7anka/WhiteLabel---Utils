// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let planTariff = try? newJSONDecoder().decode(EVIOPlanTariff.self, from: jsonData)

import Foundation

// MARK: - EVIOPlanTariff
public struct EVIOPlanTariff: Codable {
    
    public var id, power: String?
    public var uom: String?
    public var tariffType: EVIOTariffType?
    public var voltageLevel: EVIOVoltageLevel?
    public var price: Double?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case power, uom, tariffType, voltageLevel, price
    }
    
    public init(id: String?, power: String?, uom: String?, tariffType: EVIOTariffType?, voltageLevel: EVIOVoltageLevel?, price: Double?) {
        self.id = id
        self.power = power
        self.uom = uom
        self.tariffType = tariffType
        self.voltageLevel = voltageLevel
        self.price = price
    }
    
}
