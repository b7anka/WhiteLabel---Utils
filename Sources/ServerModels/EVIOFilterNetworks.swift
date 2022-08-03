//
//  EVIOFilterNetworks.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/01/2022.
//

import Foundation

public enum EVIOFilterNetworks: String, Codable {
    
    case tesla
    case myChargers = "private"
    case other = "public"
    case evio
    case shared
    case goCharge
    case hyundai
}
