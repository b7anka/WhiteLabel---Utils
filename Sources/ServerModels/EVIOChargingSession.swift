//
//  EVIOChargingSession.swift
//  WLModels
//
//  Created by Tiago Moreira on 28/04/2022.
//

import Foundation

public struct EVIOChargingSession: Codable {
    
    public var stoppedByOwner: Bool
    public var id: String?
    public var hwId: String?
    public var evId: String?
    public var sessionPrice: Double?
    public var command: String?
    public var chargerType: String?
    public var status: EVIOStatus?
    public var userId: String?
    public var plugId: String?
    public var idTag: String?
    public var bookingId: String?
    public var startDate: String?
    public var readingPoints: [EVIOReadingPoint]
    public var feedBack: [EVIOFeedback]
    public var sessionId: String?
    public var batteryCharged: Double?
    public var estimatedPrice: Double?
    public var timeCharged: Double?
    public var totalPower: Double?
    public var stopDate: String?
    public var meterStart: Double?
    public var meterStop: Double?
    public var finalPrice: Double?
    public var rating: Double?
    public var stopReason: EVIOStopReason?
    public var CO2Saved: Double?
    public var statusCode: String?
    public var cdrId: String?
    public var invoiceId: String?
    public var hasInvoice: Bool
    public var costDetails: EVIOChargingSessionCostDetails?
    
    private enum CodingKeys: String, CodingKey {
        case stoppedByOwner, id = "_id", hwId, evId, sessionPrice, command, chargerType, status, userId, plugId, idTag, bookingId, startDate, readingPoints, feedBack, sessionId, batteryCharged, estimatedPrice, timeCharged, totalPower, stopDate, meterStart, meterStop, finalPrice, rating, stopReason, CO2Saved, cdrId, statusCode, invoiceId, hasInvoice, costDetails
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.stoppedByOwner = try container.decodeIfPresent(Bool.self, forKey: .stoppedByOwner) ?? false
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.hwId = try container.decodeIfPresent(String.self, forKey: .hwId)
        self.evId = try container.decodeIfPresent(String.self, forKey: .evId)
        self.command = try container.decodeIfPresent(String.self, forKey: .command)
        self.chargerType = try container.decodeIfPresent(String.self, forKey: .chargerType)
        self.status = try container.decodeIfPresent(EVIOStatus.self, forKey: .status)
        self.userId = try container.decodeIfPresent(String.self, forKey: .userId)
        self.plugId = try container.decodeIfPresent(String.self, forKey: .plugId)
        self.idTag = try container.decodeIfPresent(String.self, forKey: .idTag)
        self.bookingId = try container.decodeIfPresent(String.self, forKey: .bookingId)
        self.startDate = try container.decodeIfPresent(String.self, forKey: .startDate)
        self.sessionPrice = try container.decodeIfPresent(Double.self, forKey: .sessionPrice)
        if let sessionId = try? container.decodeIfPresent(Int64.self, forKey: .sessionId) {
            self.sessionId = String(sessionId)
        } else if let sessionId = try? container.decodeIfPresent(String.self, forKey: .sessionId) {
            self.sessionId = sessionId
        }
        self.totalPower = try container.decodeIfPresent(Double.self, forKey: .totalPower)
        self.batteryCharged = try container.decodeIfPresent(Double.self, forKey: .batteryCharged)
        self.estimatedPrice = try container.decodeIfPresent(Double.self, forKey: .estimatedPrice)
        self.timeCharged = try container.decodeIfPresent(Double.self, forKey: .timeCharged)
        self.readingPoints = try container.decodeIfPresent([EVIOReadingPoint].self, forKey: .readingPoints) ?? []
        self.feedBack = try container.decodeIfPresent([EVIOFeedback].self, forKey: .feedBack) ?? []
        self.stopDate = try container.decodeIfPresent(String.self, forKey: .stopDate)
        self.meterStart = try container.decodeIfPresent(Double.self, forKey: .meterStart)
        self.meterStop = try container.decodeIfPresent(Double.self, forKey: .meterStop)
        self.finalPrice = try container.decodeIfPresent(Double.self, forKey: .finalPrice)
        self.rating = try container.decodeIfPresent(Double.self, forKey: .rating)
        self.stopReason = try container.decodeIfPresent(EVIOStopReason.self, forKey: .stopReason)
        self.statusCode = try container.decodeIfPresent(String.self, forKey: .statusCode)
        self.cdrId = try container.decodeIfPresent(String.self, forKey: .cdrId)
        self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
        self.hasInvoice = try container.decodeIfPresent(Bool.self, forKey: .hasInvoice) ?? false
        self.costDetails = try container.decodeIfPresent(EVIOChargingSessionCostDetails.self, forKey: .costDetails)
        if let co2saved = try? container.decodeIfPresent(Double.self, forKey: .CO2Saved) {
            self.CO2Saved = co2saved
        } else if let co2Saved = try? container.decodeIfPresent(String.self, forKey: .CO2Saved) {
            self.CO2Saved = Double(co2Saved) ?? 0.0
        }
    }
    
}
