// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let readingPoint = try? newJSONDecoder().decode(EVIOReadingPoint.self, from: jsonData)

import Foundation

// MARK: - EVIOReadingPoint
public struct EVIOReadingPoint: Codable {
    
    public var id: String?
    public var totalPower, instantPower, batteryCharged: Double?
    public var readDate: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case totalPower, instantPower, readDate, batteryCharged
    }
    
}
