// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let networkToken = try? newJSONDecoder().decode(EVIONetworkToken.self, from: jsonData)

import Foundation

// MARK: - EVIONetworkToken
public struct EVIONetworkToken: Codable {
    
    public var wasAssociated: Bool?
    public var id, idTagDEC: String?
    public var tokenType: EVIOTokenType?
    public var refID, idTagHexa: String?
    public var status: EVIOContractStatus?

    enum CodingKeys: String, CodingKey {
        case wasAssociated
        case id = "_id"
        case tokenType, status
        case idTagDEC = "idTagDec"
        case refID = "refId"
    }
    
}

extension EVIONetworkToken: Equatable {
    
    public static func == (lhs: EVIONetworkToken, rhs: EVIONetworkToken) -> Bool {
        return lhs.id == rhs.id
    }
    
}
