// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tariffTesla = try? newJSONDecoder().decode(EVIOTariffTesla.self, from: jsonData)

import Foundation

// MARK: - EVIOTariffTesla
public struct EVIOTariffTesla: Codable {
    
    public var active: Bool?
    public var id, uom: String?
    public var value: Double?
    public var createdAt, updatedAt: String?
    public var v: Int?

    enum CodingKeys: String, CodingKey {
        case active
        case id = "_id"
        case uom, value, createdAt, updatedAt
        case v = "__v"
    }
    
}
