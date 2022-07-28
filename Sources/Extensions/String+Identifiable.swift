//
//  String+Identifiable.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import Foundation

/// # ADDS PROPERTIES AND FUNTIONS TO THE SWIFT'S STRING STRUCT
extension String: Identifiable {
    
    // tells swift that a string can be identifiable by itself
    public var id: String {
        return self
    }
    
}
