// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let landingPageCEME = try? newJSONDecoder().decode(EVIOCeme.self, from: jsonData)

import Foundation

// MARK: - EVIOCeme
public struct EVIOCeme: Codable {
    
    public var ceme: EVIOCemeCeme?
    public var plan: EVIOPlan?
    public var schedule: EVIOSchedule?
    public var tar: EVIOTar?
    public var tariffRoamingInfo: [EVIOTariffRoamingInfo]?

    enum CodingKeys: String, CodingKey {
        case ceme = "CEME"
        case plan, schedule, tar, tariffRoamingInfo
    }
}
