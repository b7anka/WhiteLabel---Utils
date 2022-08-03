//
//  EVIOLoginData.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/01/2022.
//

import Foundation

public struct EVIOLoginData: Codable, Identifiable {
    
    public let name: String
    public let token: String
    public let refreshToken: String
    public let server: EVIOServerAddresses
    public let id: Int
    
}
