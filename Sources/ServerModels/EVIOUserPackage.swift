// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userPackage = try? newJSONDecoder().decode(EVIOUserPackage.self, from: jsonData)

import Foundation

// MARK: - EVIOUserPackage
public struct EVIOUserPackage: Codable {
    
    public var packageName, packageType: String?
    public var rfidCardsLimit, fleetsLimit, evsLimit, driversLimit: Int?
    public var groupOfDriversLimit, driversInGroupDriversLimit, chargingAreasLimit, evioBoxLimit: Int?
    public var chargersLimit, tariffsLimit, chargersGroupsLimit, userInChargerGroupsLimit: Int?
    public var searchLocationsLimit, searchChargersLimit, comparatorLimit, routerLimit: String?
    public var cardAssociationEnabled, billingTariffEnabled: Bool?
    public var id: String?

    enum CodingKeys: String, CodingKey {
        case packageName, packageType, rfidCardsLimit, fleetsLimit, evsLimit, driversLimit, groupOfDriversLimit, driversInGroupDriversLimit, chargingAreasLimit, evioBoxLimit, chargersLimit, tariffsLimit, chargersGroupsLimit, userInChargerGroupsLimit, searchLocationsLimit, searchChargersLimit, comparatorLimit, routerLimit, cardAssociationEnabled, billingTariffEnabled
        case id = "_id"
    }
    
}
