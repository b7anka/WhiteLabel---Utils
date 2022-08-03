//
//  File.swift
//  
//
//  Created by Tiago Moreira on 03/08/2022.
//

import Foundation

public extension URL {
    
    var queryParameters: [String: String] {
        let components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        let queryItems = components?.queryItems ?? []
        
        return Dictionary(uniqueKeysWithValues: queryItems.map {
            ($0.name, $0.value?.removingPercentEncoding ?? "")
        })
    }
    
    var isHttp: Bool {
        scheme == "http" || scheme == "https"
    }
    
}
