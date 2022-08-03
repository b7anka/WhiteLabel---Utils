//
//  EVIOFilterNetworkData.swift
//  WLModels
//
//  Created by Tiago Moreira on 04/01/2022.
//

import Foundation

public struct EVIOFilterNetworkData: Codable {
    
    public let image: String
    public let imageSelected: String
    public let translationKey: String
    public let network: EVIOFilterNetworks
    public let order: Int
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.image = try container.decodeIfPresent(String.self, forKey: .image) ?? ""
        self.imageSelected = try container.decodeIfPresent(String.self, forKey: .imageSelected) ?? ""
        self.translationKey = try container.decodeIfPresent(String.self, forKey: .translationKey) ?? ""
        self.network = try container.decodeIfPresent(EVIOFilterNetworks.self, forKey: .network) ?? .evio
        self.order = try container.decodeIfPresent(Int.self, forKey: .order) ?? 0
    }
    
}
