// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let network = try? newJSONDecoder().decode(EVIONetwork.self, from: jsonData)

import Foundation

// MARK: - EVIONetwork
public struct EVIONetwork: Codable {
    
    public var id, name: String?
    public var tokens: [EVIONetworkToken]?
    public var networkName, paymentMethod: String?
    public var network: EVIONetworkType?
    public var paymentMethodInfo: EVIOPaymentMethodInfo?
    public var networkStatus: EVIOContractStatus?
    public var isVisible: Bool = true

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, tokens, network, networkName, paymentMethod, paymentMethodInfo, networkStatus = "status", isVisible
    }
    
}

extension EVIONetwork: Equatable {
    
    public static func == (lhs: EVIONetwork, rhs: EVIONetwork) -> Bool {
        return lhs.id == rhs.id
    }
    
    public var status: EVIOContractStatus {
        if self.network == .roaming || self.network == .gireve {
            return self.tokens?.first(where: { $0.tokenType == .other })?.status ?? self.networkStatus ?? .inactive
        }
        return self.tokens?.first(where: { $0.tokenType == .appUser })?.status ?? self.networkStatus ?? .inactive
    }
    
}
