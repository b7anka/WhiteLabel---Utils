// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let ev = try? newJSONDecoder().decode(EVIOEv.self, from: jsonData)

import Foundation

// MARK: - EVIOEv
public final class EVIOEv: Codable, Hashable {
    
    public var primaryEV: Bool?
    public var status: EVIOStatus?
    public var hasFleet: Bool?
    public var usageNumber: Int?
    public var id, evId: String?
    public var otherInfo: String?
    public var version, model: String?
    public var imageContent: String?
    public var licensePlate, country, brand, fleet: String?
    public var sessions: [EVIOEVSession]?
    public var contract: EVIOContract?
    public var listOfGroupDrivers, listOfDrivers: Set<EVIOListOfDrivers>?
    public var userID: String?
    public var evType: EVIOEVType?
    public var evInfo: EVIOEvInfo?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var contractID: String?
    public var dateFrom: String?
    public var dateTo: String?
    public var plafondInfo: EVIOPlafondInfo?
    public var networks: [EVIONetwork]?

    enum CodingKeys: String, CodingKey {
        case primaryEV, status, hasFleet, usageNumber
        case id = "_id"
        case otherInfo, version, model, imageContent, licensePlate, country, brand, fleet, sessions, listOfGroupDrivers, listOfDrivers
        case userID = "userId"
        case evType, evInfo, createdAt, updatedAt
        case v = "__v"
        case contractID = "contractId"
        case contract, evId
        case dateFrom, dateTo, plafondInfo, networks
    }
    
    public init(primaryEV: Bool? = nil, status: EVIOStatus? = nil, hasFleet: Bool? = nil, usageNumber: Int? = nil, id: String?, evId: String?, otherInfo: String? = nil, version: String? = nil, model: String? = nil, imageContent: String? = nil, licensePlate: String? = nil, country: String? = nil, brand: String?, fleet: String? = nil, sessions: [EVIOEVSession]? = nil, listOfGroupDrivers: Set<EVIOListOfDrivers>? = nil, listOfDrivers: Set<EVIOListOfDrivers>? = nil, userID: String? = nil, evType: EVIOEVType? = nil, evInfo: EVIOEvInfo? = nil, createdAt: String? = nil, updatedAt: String? = nil, v: Int? = nil, contractID: String? = nil, networks: [EVIONetwork]? = nil) {
        self.primaryEV = primaryEV
        self.status = status
        self.hasFleet = hasFleet
        self.usageNumber = usageNumber
        self.id = id
        self.evId = evId
        self.otherInfo = otherInfo
        self.version = version
        self.model = model
        self.imageContent = imageContent
        self.licensePlate = licensePlate
        self.country = country
        self.brand = brand
        self.fleet = fleet
        self.sessions = sessions
        self.listOfGroupDrivers = listOfGroupDrivers
        self.listOfDrivers = listOfDrivers
        self.userID = userID
        self.evType = evType
        self.evInfo = evInfo
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.v = v
        self.contractID = contractID
        self.contract = nil
        self.dateFrom = nil
        self.dateTo = nil
        self.plafondInfo = nil
        self.networks = nil
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
    public init() { }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.licensePlate)
    }
    
}

extension EVIOEv: Equatable {
    
    public static func == (lhs: EVIOEv, rhs: EVIOEv) -> Bool {
        return lhs.licensePlate == rhs.licensePlate
    }
    
}
