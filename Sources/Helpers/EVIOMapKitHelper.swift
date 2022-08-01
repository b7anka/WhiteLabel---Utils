//
//  EVIOMapKitHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import Foundation
import MapKit
import WLModels
import CoreMedia

public final class EVIOMapKitHelper: NSObject {
    
    public let geocoder: CLGeocoder
    public var completer: MKLocalSearchCompleter
    public var region: MKCoordinateRegion!
    public var completion: (([EVIOSearchLocation], Error?) -> Void)
    public var array: Set<EVIOSearchLocation>
    
    public init(completion: @escaping ([EVIOSearchLocation], Error?) -> Void) {
        self.geocoder = CLGeocoder()
        self.completion = completion
        self.array = []
        self.completer = MKLocalSearchCompleter()
        self.completer.resultTypes = [.address, .pointOfInterest, .query]
        super.init()
        self.completer.delegate = self
    }
    
    public func searchLocation(query: String, location: CLLocationCoordinate2D) {
        self.region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50))
        self.completer.region = self.region
        self.completer.queryFragment = query.trimmingCharacters(in: .whitespacesAndNewlines)
        self.completer.resultTypes = [.address, .pointOfInterest, .query]
    }
    
}

extension EVIOMapKitHelper: MKLocalSearchCompleterDelegate {
    
    public func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        for r in completer.results {
            let searchLocation: EVIOSearchLocation = EVIOSearchLocation(with: r)
            self.array.insert(searchLocation)
        }
        self.completion(self.array.toArray, nil)
        self.array.removeAll()
    }
    
    public func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        self.completion([], error)
    }
    
}
