import Foundation

public enum EVIOVoltageLevel: String, Codable {
    
    case bte = "BTE"
    case btn = "BTN"
    case mt = "MT"
    
    public init?(rawValue: String) {
        switch rawValue {
        case Self.bte.rawValue:
            self = .bte
        case Self.mt.rawValue:
            self = .mt
        default:
            self = .btn
        }
    }
    
    
    
}
