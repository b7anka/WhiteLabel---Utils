// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let landingPage = try? newJSONDecoder().decode(EVIOLandingPage.self, from: jsonData)

import Foundation

// MARK: - EVIOLandingPage
public struct EVIOLandingPage: Codable {
    
    public var needUpdate: Bool?
    public var language: EVIOCheckTranslation?
    public var userAccount: EVIOUser?
    public var evs: [EVIOEv]?
    public var contracts: [EVIOContract]?
    public var cemeTariff: [EVIOCemeTariff]?
    public var myActiveSessions: [EVIOSession]?
    public var wallet: EVIOWallet?
    public var messages: EVIOMessages?
    public var ceme: EVIOCeme?
    public var tariffTesla: EVIOTariffTesla?
    public var needChangePassword: Bool?
    public var landindPage: String?

    enum CodingKeys: String, CodingKey {
        case needUpdate, language, userAccount, evs, contracts, cemeTariff, myActiveSessions, wallet, messages
        case ceme = "CEME"
        case tariffTesla, needChangePassword, landindPage
    }
    
}
