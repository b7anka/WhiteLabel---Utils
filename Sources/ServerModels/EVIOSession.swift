// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let myActiveSession = try? newJSONDecoder().decode(EVIOSession.self, from: jsonData)

import Foundation

// MARK: - EVIOSession
public struct EVIOSession: Codable {
    
    public var fees: EVIOFees?
    public var totalPower: Double?
    public var estimatedPrice: Double?
    public var batteryCharged, timeCharged, timeLeft, co2Saved: Double?
    public var stoppedByOwner: Bool?
    public var counter: Double?
    public var paymentNotificationStatus: Bool?
    public var authType: String?
    public var sessionSync, stopTransactionReceived: Bool?
    public var id, hwID: String?
    public var evID: EVIOEv?
    public var tariffID, command, chargerType: String?
    public var status: EVIOStatus?
    public var userID, plugID, idTag, paymentMethod: String?
    public var paymentMethodID: String?
    public var walletAmount: Double?
    public var reservedAmount: Double?
    public var confirmationAmount: Double?
    public var userIDWillPay, adyenReference, transactionID: String?
    public var address: EVIOAddress?
    public var tariff: EVIOSessionTariff?
    public var cardNumber, evOwner, clientType, startDate: String?
    public var parkingStartDate, parkingStopDate: String?
    public var readingPoints: [EVIOReadingPoint]?
    public var feedBack: [EVIOFeedback]?
    public var chargerOwner, model, createdAt, updatedAt: String?
    public var sessionID: String?
    public var costDetails: EVIOCostDetails?
    public var downtime: Double?
    public var totalPrice: EVIOTotalPrice?
    public var uptime: Double?
    public var serviceCost: EVIOServiceCost?
    public var stopDate: String?
    public var bookingId: String?
    public var rating: Double?
    public var sessionPrice: Double?
    public var finalPrice: Double?
    public var tariffCEME: EVIOPlan?
    public var tariffOPC: EVIOTariffOPC?

    enum CodingKeys: String, CodingKey {
        case fees, totalPower, estimatedPrice, batteryCharged, timeCharged, timeLeft
        case co2Saved = "CO2Saved"
        case stoppedByOwner, counter, paymentNotificationStatus, authType, sessionSync, stopTransactionReceived
        case id = "_id"
        case hwID = "hwId"
        case evID = "evId"
        case tariffID = "tariffId"
        case command, chargerType, status
        case userID = "userId"
        case plugID = "plugId"
        case idTag, paymentMethod
        case paymentMethodID = "paymentMethodId"
        case walletAmount, reservedAmount, confirmationAmount
        case userIDWillPay = "userIdWillPay"
        case adyenReference
        case transactionID = "transactionId"
        case address, tariff, cardNumber, evOwner, clientType, startDate, parkingStartDate, parkingStopDate, readingPoints, feedBack, chargerOwner, model, createdAt, updatedAt
        case sessionID = "sessionId"
        case costDetails, downtime, totalPrice, uptime
        case serviceCost
        case stopDate, bookingId
        case rating, sessionPrice, finalPrice, tariffCEME, tariffOPC
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rating = try container.decodeIfPresent(Double.self, forKey: .rating)
        self.sessionPrice = try container.decodeIfPresent(Double.self, forKey: .sessionPrice)
        self.finalPrice = try container.decodeIfPresent(Double.self, forKey: .finalPrice)
        self.readingPoints = try container.decodeIfPresent([EVIOReadingPoint].self, forKey: .readingPoints)
        self.feedBack = try container.decodeIfPresent([EVIOFeedback].self, forKey: .feedBack)
        self.costDetails = try container.decodeIfPresent(EVIOCostDetails.self, forKey: .costDetails)
        self.totalPrice = try container.decodeIfPresent(EVIOTotalPrice.self, forKey: .totalPrice)
        self.tariff = try container.decodeIfPresent(EVIOSessionTariff.self, forKey: .tariff)
        self.stopDate = try container.decodeIfPresent(String.self, forKey: .stopDate)
        self.bookingId = try container.decodeIfPresent(String.self, forKey: .bookingId)
        self.sessionID = try container.decodeIfPresent(String.self, forKey: .stopDate)
        self.evID = try container.decodeIfPresent(EVIOEv.self, forKey: .evID)
        self.address = try container.decodeIfPresent(EVIOAddress.self, forKey: .address)
        self.authType = try container.decodeIfPresent(String.self, forKey: .authType)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.hwID = try container.decodeIfPresent(String.self, forKey: .hwID)
        self.tariffID = try container.decodeIfPresent(String.self, forKey: .tariffID)
        self.command = try container.decodeIfPresent(String.self, forKey: .command)
        self.chargerType = try container.decodeIfPresent(String.self, forKey: .chargerType)
        self.status = try container.decodeIfPresent(EVIOStatus.self, forKey: .status)
        self.userID = try container.decodeIfPresent(String.self, forKey: .userID)
        self.plugID = try container.decodeIfPresent(String.self, forKey: .plugID)
        self.idTag = try container.decodeIfPresent(String.self, forKey: .idTag)
        self.paymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethod)
        self.paymentMethodID = try container.decodeIfPresent(String.self, forKey: .paymentMethodID)
        self.userIDWillPay = try container.decodeIfPresent(String.self, forKey: .userIDWillPay)
        self.adyenReference = try container.decodeIfPresent(String.self, forKey: .adyenReference)
        self.transactionID = try container.decodeIfPresent(String.self, forKey: .transactionID)
        self.cardNumber = try container.decodeIfPresent(String.self, forKey: .cardNumber)
        self.evOwner = try container.decodeIfPresent(String.self, forKey: .evOwner)
        self.clientType = try container.decodeIfPresent(String.self, forKey: .clientType)
        self.startDate = try container.decodeIfPresent(String.self, forKey: .startDate)
        self.parkingStopDate = try container.decodeIfPresent(String.self, forKey: .parkingStopDate)
        self.parkingStartDate = try container.decodeIfPresent(String.self, forKey: .parkingStartDate)
        self.timeLeft = try container.decodeIfPresent(Double.self, forKey: .timeLeft)
        self.chargerOwner = try container.decodeIfPresent(String.self, forKey: .chargerOwner)
        self.createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt)
        self.model = try container.decodeIfPresent(String.self, forKey: .model)
        self.updatedAt = try container.decodeIfPresent(String.self, forKey: .updatedAt)
        self.serviceCost = try container.decodeIfPresent(EVIOServiceCost.self, forKey: .serviceCost)
        self.tariffCEME = try container.decodeIfPresent(EVIOPlan.self, forKey: .tariffCEME)
        if let sessionId = try? container.decodeIfPresent(String.self, forKey: .sessionID) {
            self.sessionID = sessionId
        } else if let sessionId = try? container.decodeIfPresent(Double.self, forKey: .sessionID) {
            self.sessionID = String(sessionId)
        } else if let sessionId = try? container.decodeIfPresent(Int.self, forKey: .sessionID) {
            self.sessionID = String(sessionId)
        }
        self.counter = try container.decodeIfPresent(Double.self, forKey: .counter)
        self.stoppedByOwner = try container.decodeIfPresent(Bool.self, forKey: .stoppedByOwner)
        self.paymentNotificationStatus = try container.decodeIfPresent(Bool.self, forKey: .paymentNotificationStatus)
        self.sessionSync = try container.decodeIfPresent(Bool.self, forKey: .sessionSync)
        self.stopTransactionReceived = try container.decodeIfPresent(Bool.self, forKey: .stopTransactionReceived)
        self.fees = try container.decodeIfPresent(EVIOFees.self, forKey: .fees)
        if let totalPower = try? container.decodeIfPresent(Double.self, forKey: .totalPower) {
            self.totalPower = totalPower
        } else if let totalPower = try? container.decodeIfPresent(String.self, forKey: .totalPower) {
            self.totalPower = Double(totalPower)
        }
        if let estimatedPrice = try? container.decodeIfPresent(Double.self, forKey: .estimatedPrice) {
            self.estimatedPrice = estimatedPrice
        } else if let estimatedPrice = try? container.decodeIfPresent(String.self, forKey: .estimatedPrice) {
            self.estimatedPrice = Double(estimatedPrice)
        }
        if let batteryCharged = try? container.decodeIfPresent(Double.self, forKey: .batteryCharged) {
            self.batteryCharged = batteryCharged
        } else if let batteryCharged = try? container.decodeIfPresent(String.self, forKey: .batteryCharged) {
            self.batteryCharged = Double(batteryCharged)
        }
        if let timeCharged = try? container.decodeIfPresent(Double.self, forKey: .timeCharged) {
            self.timeCharged = timeCharged
        } else if let timeCharged = try? container.decodeIfPresent(String.self, forKey: .timeCharged) {
            self.timeCharged = Double(timeCharged)
        }
        if let co2Saved = try? container.decodeIfPresent(Double.self, forKey: .co2Saved) {
            self.co2Saved = co2Saved
        } else if let co2Saved = try? container.decodeIfPresent(String.self, forKey: .co2Saved) {
            self.co2Saved = Double(co2Saved)
        }
        if let walletAmount = try? container.decodeIfPresent(Double.self, forKey: .walletAmount) {
            self.walletAmount = walletAmount
        } else if let walletAmount = try? container.decodeIfPresent(String.self, forKey: .walletAmount) {
            self.walletAmount = Double(walletAmount)
        }
        if let reservedAmount = try? container.decodeIfPresent(Double.self, forKey: .reservedAmount) {
            self.reservedAmount = reservedAmount
        } else if let reservedAmount = try? container.decodeIfPresent(String.self, forKey: .reservedAmount) {
            self.reservedAmount = Double(reservedAmount)
        }
        if let confirmationAmount = try? container.decodeIfPresent(Double.self, forKey: .confirmationAmount) {
            self.confirmationAmount = confirmationAmount
        } else if let confirmationAmount = try? container.decodeIfPresent(String.self, forKey: .confirmationAmount) {
            self.confirmationAmount = Double(confirmationAmount)
        }
        self.uptime = try container.decodeIfPresent(Double.self, forKey: .uptime)
        self.downtime = try container.decodeIfPresent(Double.self, forKey: .downtime)
        self.tariffOPC = try container.decodeIfPresent(EVIOTariffOPC.self, forKey: .tariffOPC)
    }
    
    public init() { }
    
}
