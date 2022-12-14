//
//  EVIOContractUpdateResponse.swift
//  
//
//  Created by Tiago Moreira on 14/12/2022.
//

import Foundation


public struct EVIOContractUpdateResponse: Codable {
    
    public var contract: EVIOContract?
    public var message: EVIOServerMessage?
    
}
