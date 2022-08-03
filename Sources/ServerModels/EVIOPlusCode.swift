//
//  EVIOPlusCode.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOPlusCode: Codable {
    
    public var compoundCode: String?
    public var globalCode: String?
    
    private enum CodingKeys: String, CodingKey {
        case compoundCode = "compound_code", globalCode = "global_code"
    }
    
}
