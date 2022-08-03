//
//  EVIOParkingTypeHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation

public struct EVIOParkingTypeHelper {
    
    public static var shared: EVIOParkingTypeHelper = EVIOParkingTypeHelper()
    
    public var parkingTypes: [EVIOParkingTypeData]
    
    public init() {
        self.parkingTypes = []
        self.parseParkingTypesJSON()
    }
    
    mutating private func parseParkingTypesJSON() {
        guard let path = Bundle.main.url(forResource: .parkingTypes, withExtension: .json), let data: Data = try? Data(contentsOf: path), let parkingTypes: [EVIOParkingTypeData] = try? JSONDecoder().decode([EVIOParkingTypeData].self, from: data) else { return }
        self.parkingTypes = parkingTypes
    }
    
    public func imageForParkingType(id: EVIOParkingType?) -> String? {
        guard let id = id else { return nil }
        let parkingTypeData: EVIOParkingTypeData? = self.parkingTypes.first(where: {$0.parkingType == id})
        return parkingTypeData?.imageForChargerDetails
    }
    
}
