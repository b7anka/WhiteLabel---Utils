//
//  EVIOFiltersNetworksHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/01/2022.
//

import Foundation
import WLModels

public struct EVIOFiltersNetworksHelper {
    
    public static var shared: EVIOFiltersNetworksHelper = EVIOFiltersNetworksHelper()
    
    public var networks: [EVIOFilterNetworkData]
    
    public init() {
        self.networks = []
        self.parseFiltersNetworksJSON()
    }
    
    mutating private func parseFiltersNetworksJSON() {
        guard let path: URL = Bundle.main.url(forResource: "filters_networks", withExtension: .json), let data: Data = try? Data(contentsOf: path), let networks: [EVIOFilterNetworkData] = try? JSONDecoder().decode([EVIOFilterNetworkData].self, from: data) else { return }
        self.networks = networks.filter({EVIOAppProperties.shared.appConfig.allowedFilterNetworks.contains($0.network)})
    }
    
}
