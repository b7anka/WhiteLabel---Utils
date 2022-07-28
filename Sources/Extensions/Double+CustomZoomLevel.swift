//
//  Double+CustomZoomLevel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import Foundation

/// # EXTENSION THAT ADDS PROPERTIES AND METHODS TO THE SWIFT BUILT IN DOUBLE CLASS
public extension Double {
    
    // default map zoom
    public static let defaultMapZoom: Double = 12.0
    
    public func numberOfDecimalPlaces(maxPlaces: Int = 4) -> Int {
        guard self > 0 else {return 0}
        let components: [String] = "\(self)".components(separatedBy: ".")
        guard components.count == 2, var decimalPlaces: String = components.last else {return 0}
        if decimalPlaces.count == 1, let decimalPlace = decimalPlaces.first {
            return decimalPlace != "0" ? decimalPlaces.count : 0
        } else if let decimalPlace = decimalPlaces.last, decimalPlace == "0" {
            decimalPlaces.removeLast()
        }
        return decimalPlaces.count < (maxPlaces + 1) ? decimalPlaces.count : maxPlaces
    }
    
}
