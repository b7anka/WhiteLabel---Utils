//
//  EVIOBooking.swift
//  evio
//
//  Created by Tiago Moreira on 15/06/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOBooking: Codable {

    public var id: String?
    public var userId: String?
    public var infrasctructure: String?
    public var chargerId: String?
    public var hwId: String?
    public var plugId: String?
    public var evId: String?
    public var startDate: String?
    public var stopDate: String?
    public var status: EVIOStatus?
    public var totalBooking: Double?
    public var bookingPrice: EVIOAmount?
    public var totalPrice: Double?
    public var sessionId: String?
    public var limitBookedTime: Double?
    public var duration: Double?
    public var canceledBeforeTime: Double?
    public var canceledReasonCode: String?
    public var canceledReasonText: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", userId, infrasctructure, chargerId, hwId, plugId, evId, startDate, stopDate, status, totalBooking, bookingPrice, totalPrice, sessionId, limitBookedTime, canceledBeforeTime, canceledReasonCode, canceledReasonText, duration
    }
    
}
