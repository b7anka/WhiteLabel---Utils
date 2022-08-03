//
//  EVIOData.swift
//  WLModels
//
//  Created by Tiago Moreira on 23/05/2022.
//

import Foundation

public struct EVIOData: Codable {
    
    public var pspReference: String?
    public var resultCode: String?
    public var amount: EVIOCurrency?
    public var merchantReference: String?
    
}
