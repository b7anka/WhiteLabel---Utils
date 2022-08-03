//
//  EVIOFiltersNetworksHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/01/2022.
//

import Foundation

public struct EVIOFiltersNetworksHelper {
    
    public static var shared: EVIOFiltersNetworksHelper = EVIOFiltersNetworksHelper()
    
    public var networks: [EVIOFilterNetworkData]
    
    public init() {
        self.networks = []
    }
    
}
