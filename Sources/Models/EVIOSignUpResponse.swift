//
//  EVIOSignUpResponse.swift
//  
//
//  Created by Tiago Moreira on 14/12/2022.
//

import Foundation

public struct EVIOSignUpResponse: Codable {
    
    public var user: EVIOUser?
    public var message: EVIOServerMessage?
    
}
