//
//  EVIOChargerSession.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOChargerSession: Codable {
    
    public var id: String?
    public var hwId: String?
    public var plugId: String?
    public var userId: String?
    public var idTag: String?
    public var bookingId: String?
    public var sessionId: String?
    public var evId: String?
    public var startDate: String?
    public var stopDate: String?
    public var command: String?
    public var chargerType: String?
    public var totalPower: Double?
    public var sessionPrice: Double?
    public var estimatedPrice: Double?
    public var finalPrice: Double?
    public var batteryCharged: Double?
    public var timeCharged: Double?
    public var status: EVIOStatus?
    public var address: EVIOAddress?
    public var rating: Double?
    public var readingPoints: [EVIOReadingPoint]?
    public var feedBack: [EVIOFeedback]?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id", hwId, plugId, userId, startDate, stopDate, command, chargerType, totalPower, sessionPrice, estimatedPrice, finalPrice, batteryCharged, timeCharged, status, rating, readingPoints, feedBack, address, evId, idTag, bookingId, sessionId
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.hwId = try container.decodeIfPresent(String.self, forKey: .hwId)
        self.plugId = try container.decodeIfPresent(String.self, forKey: .plugId)
        self.userId = try container.decodeIfPresent(String.self, forKey: .userId)
        self.idTag = try container.decodeIfPresent(String.self, forKey: .idTag)
        self.bookingId = try container.decodeIfPresent(String.self, forKey: .bookingId)
        if let sessionId = try? container.decodeIfPresent(String.self, forKey: .sessionId) {
            self.sessionId = sessionId
        } else if let sessionId = try? container.decodeIfPresent(UInt64.self, forKey: .sessionId) {
            self.sessionId = "\(sessionId)"
        }
        self.evId = try container.decodeIfPresent(String.self, forKey: .evId)
        self.startDate = try container.decodeIfPresent(String.self, forKey: .startDate)
        self.stopDate = try container.decodeIfPresent(String.self, forKey: .stopDate)
        self.command = try container.decodeIfPresent(String.self, forKey: .command)
        self.chargerType = try container.decodeIfPresent(String.self, forKey: .chargerType)
        self.totalPower = try container.decodeIfPresent(Double.self, forKey: .totalPower)
        self.sessionPrice = try container.decodeIfPresent(Double.self, forKey: .sessionPrice)
        self.estimatedPrice = try container.decodeIfPresent(Double.self, forKey: .estimatedPrice)
        self.finalPrice = try container.decodeIfPresent(Double.self, forKey: .finalPrice)
        self.batteryCharged = try container.decodeIfPresent(Double.self, forKey: .batteryCharged)
        self.timeCharged = try container.decodeIfPresent(Double.self, forKey: .timeCharged)
        self.status = try container.decodeIfPresent(EVIOStatus.self, forKey: .status)
        self.address = try container.decodeIfPresent(EVIOAddress.self, forKey: .address)
        self.rating = try container.decodeIfPresent(Double.self, forKey: .rating)
        self.readingPoints = try container.decodeIfPresent([EVIOReadingPoint].self, forKey: .readingPoints)
        self.feedBack = try container.decodeIfPresent([EVIOFeedback].self, forKey: .feedBack)
    }
    
}

extension EVIOChargerSession {
    
    public var session: EVIOSession {
        let ev: EVIOEv = EVIOEv()
        ev.id = self.evId
        ev.evId = self.evId
        var session: EVIOSession = EVIOSession()
        session.id = self.id
        session.hwID = self.hwId
        session.plugID = self.plugId
        session.userID = self.userId
        session.idTag = self.idTag
        session.bookingId = self.bookingId
        session.sessionID = self.sessionId
        session.evID = ev
        session.startDate = self.startDate
        session.stopDate = self.stopDate
        session.command = self.command
        session.chargerType = self.chargerType
        session.totalPower = self.totalPower
        session.sessionPrice = self.sessionPrice
        session.estimatedPrice = self.estimatedPrice
        session.finalPrice = self.finalPrice
        session.batteryCharged = self.batteryCharged
        session.timeCharged = self.timeCharged
        session.status = self.status
        session.address = self.address
        session.rating = self.rating
        session.readingPoints = self.readingPoints
        session.feedBack = self.feedBack
        return session
    }
    
}
