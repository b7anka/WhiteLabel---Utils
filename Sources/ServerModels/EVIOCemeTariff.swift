// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cemeTariff = try? newJSONDecoder().decode(EVIOCemeTariff.self, from: jsonData)

import Foundation

// MARK: - EVIOCemeTariff
public struct EVIOCemeTariff: Codable {
    
    public var tariff: EVIOTariffContract?
    public var active, cemeTariffDefault: Bool?
    public var id: String?
    public var imageCEME: String?
    public var ceme: String?
    public var userID, createdAt, updatedAt: String?
    public var v: Int?
    public var tariffInfo: EVIOContractPlan?

    enum CodingKeys: String, CodingKey {
        case tariff, active
        case cemeTariffDefault = "default"
        case id = "_id"
        case imageCEME
        case ceme = "CEME"
        case userID = "userId"
        case createdAt, updatedAt
        case v = "__v"
        case tariffInfo
    }
    
    public init(tariff: EVIOTariffContract?, active: Bool, cemeTariffDefault: Bool?, id: String?, imageCEME: String?, ceme: String?, userID: String?, createdAt: String?, updatedAt: String?, v: Int?, tariffInfo: EVIOContractPlan?) {
        self.tariff = tariff
        self.active = active
        self.cemeTariffDefault = cemeTariffDefault
        self.id = id
        self.imageCEME = imageCEME
        self.ceme = ceme
        self.userID = userID
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.v = v
        self.tariffInfo = tariffInfo
    }
    
}
