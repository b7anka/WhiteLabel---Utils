//
//  EVIOPlafondMovement.swift
//  evio
//
//  Created by João Moreira on 18/11/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOPlafondMovement: Decodable, Identifiable {
    
    public var id: UUID = UUID()
    public var ´id´: String?
    public var hwId: String?
    public var beginDate: String?
    public var endDate: String?
    public var netWork: String?
    public var chargedTime: Double?
    public var totalPrice: EVIOTotalPrice?
    public var charger: EVIOCharger?
    public var costDetails: EVIOChargingSessionCostDetails?
    
    private enum CodingKeys: String, CodingKey {
        case ´id´ = "_id", hwId, beginDate = "startDate", endDate = "stopDate", netWork = "network", chargedTime = "timeCharged", totalPrice, charger, costDetails
    }
    
}
