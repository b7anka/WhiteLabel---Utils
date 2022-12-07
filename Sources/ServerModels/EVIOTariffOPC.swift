//
//  EVIOTariffOPC.swift
//  
//
//  Created by Tiago Moreira on 07/12/2022.
//

import Foundation

public struct EVIOTariffOPC: Codable {
    
    public var countryCode: String?
    public var currency: String?
    public var id: String?
    public var elements: [EVIOOCPIPriceElement]?
    public var startDateTime: String?
    public var endDateTime: String?
    public var type: String?
    
    private enum CodingKeys: String, CodingKey {
        case countryCode = "country_code", currency, id = "_id"
        case elements, startDateTime = "start_date_time", endDateTime = "end_date_time", type
    }
    
}
