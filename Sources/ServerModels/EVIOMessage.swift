// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let message = try? newJSONDecoder().decode(EVIOMessage.self, from: jsonData)

import Foundation

// MARK: - EVIOMessage
public struct EVIOMessage: Codable, Equatable {
 
    public var id: String?
    public var active: Bool?
    public var type: EVIOMessageType?
    public var message: String?
    public var startDateStopMessage: String?
    public var endDateStopMessage: String?
    public var infoMessage: [EVIOInfoMessage]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", active, type, message, startDateStopMessage, endDateStopMessage, infoMessage
    }
    
    public static func == (lhs: EVIOMessage, rhs: EVIOMessage) -> Bool {
        return lhs.id == rhs.id
    }
    
}
