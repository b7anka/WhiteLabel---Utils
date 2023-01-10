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
    public var isVisible: Bool
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, tokens, network, networkName, paymentMethod, paymentMethodInfo, networkStatus = "status", isVisible
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.tokens = try container.decodeIfPresent([EVIONetworkToken].self, forKey: .tokens)
        self.network = try container.decodeIfPresent(EVIONetworkType.self, forKey: .network)
        self.networkName = try container.decodeIfPresent(String.self, forKey: .networkName)
        self.paymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethod)
        self.paymentMethodInfo = try container.decodeIfPresent(EVIOPaymentMethodInfo.self, forKey: .paymentMethodInfo)
        self.networkStatus = try container.decodeIfPresent(EVIOContractStatus.self, forKey: .networkStatus)
        self.isVisible = try container.decodeIfPresent(Bool.self, forKey: .isVisible) ?? true
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
