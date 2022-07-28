//
//  EVIOVehicleTypeHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation
import WLModels

public struct EVIOVehicleTypeHelper {
    
    public static var shared: EVIOVehicleTypeHelper = EVIOVehicleTypeHelper()
    
    public var vehicleTypes: [EVIOVehicleTypeData]
    
    public init() {
        self.vehicleTypes = []
        self.parseVehiclesTypeJSON()
    }
    
    mutating private func parseVehiclesTypeJSON() {
        guard let path = Bundle.main.url(forResource: .vehicleTypes, withExtension: .json), let data: Data = try? Data(contentsOf: path), let vehicleTypes: [EVIOVehicleTypeData] = try? JSONDecoder().decode([EVIOVehicleTypeData].self, from: data) else { return }
        self.vehicleTypes = vehicleTypes
    }
    
    public func imageForVehicle(_ type: EVIOVehicleType?) -> String {
        let vehicleData: EVIOVehicleTypeData? = self.vehicleTypes.first(where: {$0.vehicleType == type})
        return vehicleData?.imageForChargerDetails ?? .empty
    }
    
}
