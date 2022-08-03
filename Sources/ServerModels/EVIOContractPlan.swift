// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tariffInfo = try? newJSONDecoder().decode(EVIOContractPlan.self, from: jsonData)

import Foundation

// MARK: - EVIOContractPlan
public struct EVIOContractPlan: Codable {
    
    public var plan: EVIOPlan?
    public var tar: EVIOTar?
    public var schedule: EVIOSchedule?
    
    public init(plan: EVIOPlan?, tar: EVIOTar?, schedule: EVIOSchedule?) {
        self.plan = plan
        self.tar = tar
        self.schedule = schedule
    }
    
}
