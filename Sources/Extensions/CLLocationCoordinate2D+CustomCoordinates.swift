//
//  CLLocationCoordinate2D+CustomCoordinates.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import Foundation
import CoreLocation

/// # EXTENSION THAT ADDS PROPERTIES AND METHODS TO THE SWIFT BUILT-IN CLASS CLLOCATION COORDINATE 2D
extension CLLocationCoordinate2D: Equatable {
    
    // default coordinates for the city of Lisbon in Portugal
    public static let lisbon: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 38.72767, longitude: -9.13755)
    
    // the representation of this coordinate as a string
    public var asString: String {
        return "\(self.latitude);\(self.longitude)"
    }
    
    // init that accepts a coordinate as a string
    public init(coordinateString: String) {
        // tries to split the string by the semi-colon
        let coordinates: [String] = coordinateString.components(separatedBy: ";")
        // if it can get the latitude and longitude as strings from the coordinates array's first and last elements and then convert them both to double
        if let latitudeString: String = coordinates.first, let latitude: Double = Double(latitudeString), let longitudeString: String = coordinates.last, let longitude: Double = Double(longitudeString) {
            // then initializes the coodinate with the latitude and longitude double values
            self.init(latitude: latitude, longitude: longitude)
        } else {
            // else initializes a coordinate with the value of zero which will make the user appear in the middle of the ocean on the map but this is necessary to avoid crashing the app if something is wrong with the string
            self.init(latitude: 0, longitude: 0)
        }
    }
    
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
    
}
