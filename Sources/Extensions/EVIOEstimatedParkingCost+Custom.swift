//
//  EVIOEstimatedParkingCost+Custom.swift
//  
//
//  Created by Tiago Moreira on 29/07/2022.
//

import Foundation
import WLModels

public extension EVIOEstimatedParkingCost {
    
    var parkDuringCharging: String {
        return self.parkingDuringCharging > 0 ? String(format: "%.\(self.parkingDuringCharging.numberOfDecimalPlaces())f", locale: Locale.current, self.parkingDuringCharging) : "-"
    }
    
    var parkAfterCharging: String {
        return self.parkingAfterCharging > 0 ? String(format: "%.\(self.parkingAfterCharging.numberOfDecimalPlaces())f", locale: Locale.current, parkingAfterCharging) : "-"
    }
    
}
