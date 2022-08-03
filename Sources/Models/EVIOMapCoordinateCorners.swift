//
//  EVIOMapCoordinateCorners.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/12/2021.
//

import Foundation
import CoreLocation

public struct EVIOMapCoordinateCorners {
    
    public let topLeft: CLLocationCoordinate2D
    public let topRight: CLLocationCoordinate2D
    public let bottomRight: CLLocationCoordinate2D
    public let bottomLeft: CLLocationCoordinate2D
    public var asList: [CLLocationCoordinate2D] {
        return [self.topLeft, self.bottomLeft, self.bottomRight, self.topRight]
    }
    
    public init(topLeft: CLLocationCoordinate2D, topRight: CLLocationCoordinate2D, bottomRight: CLLocationCoordinate2D, bottomLeft: CLLocationCoordinate2D) {
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomRight = bottomRight
        self.bottomLeft = bottomLeft
    }
    
}
