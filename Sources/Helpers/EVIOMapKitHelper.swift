//
//  EVIOMapKitHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/03/2022.
//

import Foundation
import MapKit
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
    
    func search(using completion: MKLocalSearchCompletion, completionBlock: @escaping (EVIOSearchLocation?, Error?) -> Void) {
        let searchRequest = MKLocalSearch.Request(completion: completion)
        searchRequest.region = self.region
        
        searchRequest.resultTypes = [.pointOfInterest, .address]
        
        let localSearch = MKLocalSearch(request: searchRequest)
        localSearch.start { (response, error) in
            guard error == nil else {
                completionBlock(nil, error)
                return
            }
            guard let item = response?.mapItems.first else {
                completionBlock(nil, nil)
                return
            }
            let location: EVIOSearchLocation = EVIOSearchLocation(with: item)
            completionBlock(location, nil)
        }
    }
    
    func geocode(with location: CLLocationCoordinate2D) {
        self.geocoder.reverseGeocodeLocation(CLLocation(latitude: location.latitude, longitude: location.longitude)) { placemarks, error in
            if let placemarks = placemarks {
                for p in placemarks {
                    let searchLocation: EVIOSearchLocation = EVIOSearchLocation(with: p)
                    self.array.insert(searchLocation)
                }
                self.completion(self.array.toArray, nil)
                self.array.removeAll()
            } else {
                self.completion([], error)
            }
        }
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
