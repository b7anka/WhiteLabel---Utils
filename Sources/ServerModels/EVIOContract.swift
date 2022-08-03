// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let contract = try? newJSONDecoder().decode(EVIOContract.self, from: jsonData)

import Foundation

// MARK: - EVIOContract
public struct EVIOContract: Codable, Identifiable {
    
    public var cardPhysicalState: Bool?
    public var internationalPrefix: String?
    public var fontCardBlack: Bool?
    public var status: EVIOContractStatus?
    public var contractDefault, active: Bool?
    public var id, name, email, mobile: String?
    public var cardName, userID, evId, fleetId: String?
    public var cardType: EVIOContractCardType?
    public var tariff: EVIOContractTariff?
    public var contractType: EVIOContractType?
    public var networks: [EVIONetwork]?
    public var imageCEME, imageCard: String?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var address: EVIOAddress?
    public var nif, statusMessageKey, contractID: String?
    public var tariffRoaming: [EVIOContractTariff]?
    public var chargersAccessPermission: Bool?
    public var scheduledTokenActivationDate: String?
    public var tariffRoamingInfo: [EVIOTariffRoamingInfo]?
    public var tariffInfo: EVIOContractPlan?
    public var cardNumber: String?

    enum CodingKeys: String, CodingKey {
        case cardPhysicalState, internationalPrefix, fontCardBlack, status
        case contractDefault = "default"
        case active
        case id = "_id"
        case name, email, mobile, cardName, cardType, evId, fleetId
        case userID = "userId"
        case tariff, contractType, networks, imageCEME, imageCard, createdAt, updatedAt
        case v = "__v"
        case address, nif, statusMessageKey
        case contractID = "contract_id"
        case tariffRoaming, chargersAccessPermission, scheduledTokenActivationDate, tariffRoamingInfo, tariffInfo, cardNumber
    }
}

extension EVIOContract: Equatable {
    
    public static func == (lhs: EVIOContract, rhs: EVIOContract) -> Bool {
        return lhs.id == rhs.id
    }
    
}
