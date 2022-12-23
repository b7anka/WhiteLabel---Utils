// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userAccount = try? newJSONDecoder().decode(EVIOUser.self, from: jsonData)

import Foundation

// MARK: - EVIOUser
public struct EVIOUser: Codable {
    
    public var active, validated, licenseAgreement, licenseMarketing: Bool?
    public var licenseServices, licenseProducts: Bool?
    public var country, language, internationalPrefix: String?
    public var accessType: EVIOUserAccessType?
    public var devUser, blocked: Bool?
    public var paymentPeriod: String?
    public var needChangePassword, isBankTransferEnabled, isMBRefEnabled, changedEmail: Bool?
    public var id, name, email, username: String?
    public var mobile: String?
    public var imageContent: String?
    public var createDate: String?
    public var favorites: [EVIOFavorite]?
    public var referencePlaces: [EVIOReferencePlace]?
    public var createdAt, updatedAt: String?
    public var v: Int?
    public var userPackage: EVIOUserPackage?
    public var evioCommission: EVIOCommission?
    public var cardNumber: String?
    public var memberNumber: String?

    enum CodingKeys: String, CodingKey {
        case active, validated, licenseAgreement, licenseMarketing, licenseServices, licenseProducts, country, language, internationalPrefix, accessType, devUser, blocked, paymentPeriod, needChangePassword, isBankTransferEnabled, isMBRefEnabled, changedEmail
        case id = "_id"
        case name, email, username, mobile, imageContent, createDate, favorites, referencePlaces, createdAt, updatedAt
        case v = "__v"
        case userPackage, evioCommission, cardNumber, memberNumber
    }
    
}
