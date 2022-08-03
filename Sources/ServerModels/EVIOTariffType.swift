import Foundation

public enum EVIOTariffType: String, Codable {
    
    case serverEmpty = "server_empty"
    case serverOutEmpty = "server_out_empty"
    case serverBiHour = "server_bi_hour"
    case serverTriHour = "server_tri_hour"
    case timeBased = "Time Based"
    case energyBased = "Energy Based"
    case basic = "Basic"
    case advanced = "Advanced"
    case all
    case serverSimple = "server_simple"
    case unknown
    
    public init?(rawValue: String) {
        switch rawValue {
        case "server_empty":
            self = .serverEmpty
        case "server_out_empty":
            self = .serverOutEmpty
        case "server_bi_hour":
            self = .serverBiHour
        case "server_tri_hour":
            self = .serverTriHour
        case "Time Based":
            self = .timeBased
        case "Energy Based":
            self = .energyBased
        case "basic", "Basic":
            self = .basic
        case "advanced", "Advanced":
            self = .advanced
        case "all", "All", "ALL":
            self = .all
        case "server_simple":
            self = .serverSimple
        default:
            self = .unknown
        }
    }
    
}
