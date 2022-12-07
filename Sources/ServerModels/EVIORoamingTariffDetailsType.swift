import Foundation

public enum EVIORoamingTariffDetailsType: String, Codable {
    
    case energy
    case flat
    case time
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "energy":
            self = .energy
        case "flat":
            self = .flat
        default:
            self = .time
        }
    }
    
}
