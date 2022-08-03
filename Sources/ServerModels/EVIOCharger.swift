//
//  EVIOCharger.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public final class EVIOCharger: EVIOChargerProtocol, Codable, Equatable, Hashable, Identifiable {
    
    public var geometry: EVIOGeometry?
    public var rating: Double?
    public var numberOfSessions: Int?
    public var chargerId: String?
    public var status: EVIOStatus?
    public var netStatus: Bool?
    public var id: String?
    public var accessType: EVIOChargerAccessType?
    public var active: Bool?
    public var address: EVIOAddress?
    public var availability: EVIOAvailability?
    public var chargerType: String?
    public var hwId: String?
    public var instantBooking: Bool?
    public var infrastructure: String?
    public var hasInfrastructure: Bool?
    public var name: String?
    public var parkingType: EVIOParkingType?
    public var plugs: [EVIOPlug]?
    public var vehiclesType: [EVIOVehicle]?
    public var createUser: String?
    public var imageContent: [String?]?
    public var infoPoints: String?
    public var canBeAutomaticallyBooked: Bool?
    public var chargingDistance: String?
    public var listOfGroups: [EVIOChargerListOfGroups]?
    public var defaultImage: String?
    public var requireConfirmation: Bool?
    public var plugId: String?
    public var vendor: String?
    public var model: String?
    public var wifiPairingName: String?
    public var POIs: [EVIOPointOfInterest]?
    public var network: EVIONetworkType?
    public var chargerOperator: String?
    public var operatorContact: String?
    public var operatorEmail: String?
    public var stationIdentifier: String?
    public var manufacturer: String?
    public var fees: EVIOFees?
    public var voltageLevel: EVIOVoltageLevel?
    public var listOfFleets: [EVIOChargerFleet]?
    public var wrongBehaviorStation: Bool?
    public var countryCode: String?
    public var offset: Double?
    public var partyId: String?
    public var source: String?
    public var timeZone: String?
    public var evseGroup: String?
    
    public enum CodingKeys: String, CodingKey {
        case geometry, rating, numberOfSessions, status, netStatus, id = "_id", accessType, active, address, availability, chargerType, hwId, hasInfrastructure, instantBooking, name, parkingType, vehiclesType, createUser, imageContent, infoPoints, plugs, canBeAutomaticallyBooked, chargerId, infrastructure, chargingDistance, listOfGroups, defaultImage, requireConfirmation, model, vendor, POIs, wifiPairingName, network, chargerOperator = "operator", operatorContact, operatorEmail, stationIdentifier, manufacturer, fees, voltageLevel, listOfFleets, wrongBehaviorStation, countryCode, offset, partyId, source, timeZone, evseGroup, plugId
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let address = try? container.decodeIfPresent(EVIOAddress.self, forKey: .address) {
            self.address = address
        } else if let address = try? container.decodeIfPresent(String.self, forKey: .address) {
            var addrss = EVIOAddress()
            addrss.street = address
            self.address = addrss
        }
        self.geometry = try container.decodeIfPresent(EVIOGeometry.self, forKey: .geometry)
        self.rating = try container.decodeIfPresent(Double.self, forKey: .rating)
        self.numberOfSessions = try container.decodeIfPresent(Int.self, forKey: .numberOfSessions)
        if let statusString = try? container.decodeIfPresent(EVIOStatus.self, forKey: .status) {
            self.status = statusString
        } else if let statusInt = try? container.decodeIfPresent(Int.self, forKey: .status) {
            self.status = EVIOStatus(rawValue: "\(statusInt)")
        }
        self.netStatus = try container.decodeIfPresent(Bool.self, forKey: .netStatus)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.accessType = try container.decodeIfPresent(EVIOChargerAccessType.self, forKey: .accessType)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active)
        self.availability = try container.decodeIfPresent(EVIOAvailability.self, forKey: .availability)
        self.chargerType = try container.decodeIfPresent(String.self, forKey: .chargerType)
        self.hwId = try container.decodeIfPresent(String.self, forKey: .hwId)
        self.hasInfrastructure = try container.decodeIfPresent(Bool.self, forKey: .hasInfrastructure)
        self.instantBooking = try container.decodeIfPresent(Bool.self, forKey: .instantBooking)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.parkingType = try container.decodeIfPresent(EVIOParkingType.self, forKey: .parkingType)
        self.vehiclesType = try container.decodeIfPresent([EVIOVehicle].self, forKey: .vehiclesType)
        self.createUser = try container.decodeIfPresent(String.self, forKey: .createUser)
        self.imageContent = try container.decodeIfPresent([String?].self, forKey: .imageContent)
        self.infoPoints = try container.decodeIfPresent(String.self, forKey: .infoPoints)
        self.plugs = try container.decodeIfPresent([EVIOPlug].self, forKey: .plugs)
        self.canBeAutomaticallyBooked = try container.decodeIfPresent(Bool.self
            , forKey: .canBeAutomaticallyBooked)
        self.chargerId = try container.decodeIfPresent(String.self, forKey: .chargerId)
        self.infrastructure = try container.decodeIfPresent(String.self, forKey: .infrastructure)
        self.chargingDistance = try container.decodeIfPresent(String.self, forKey: .chargingDistance)
        self.listOfGroups = try container.decodeIfPresent([EVIOChargerListOfGroups].self, forKey: .listOfGroups)
        self.defaultImage = try container.decodeIfPresent(String.self, forKey: .defaultImage)
        self.requireConfirmation = try container.decodeIfPresent(Bool.self, forKey: .requireConfirmation)
        self.vendor = try container.decodeIfPresent(String.self, forKey: .vendor)
        self.model = try container.decodeIfPresent(String.self, forKey: .model)
        self.POIs = try container.decodeIfPresent([EVIOPointOfInterest].self, forKey: .POIs)
        self.wifiPairingName = try container.decodeIfPresent(String.self, forKey: .wifiPairingName)
        self.network = try container.decodeIfPresent(EVIONetworkType.self, forKey: .network)
        self.chargerOperator = try container.decodeIfPresent(String.self, forKey: .chargerOperator)
        if let operatorContact = try? container.decodeIfPresent(String.self, forKey: .operatorContact) {
            self.operatorContact = operatorContact
        }else if let operatorContact = try? container.decodeIfPresent(Double.self, forKey: .operatorContact) {
            self.operatorContact = String(Int(operatorContact))
        }
        self.operatorEmail = try container.decodeIfPresent(String.self, forKey: .operatorEmail)
        self.stationIdentifier = try container.decodeIfPresent(String.self, forKey: .stationIdentifier)
        self.manufacturer = try container.decodeIfPresent(String.self, forKey: .manufacturer)
        self.fees = try container.decodeIfPresent(EVIOFees.self, forKey: .fees)
        self.voltageLevel = try container.decodeIfPresent(EVIOVoltageLevel.self, forKey: .voltageLevel)
        self.listOfFleets = try container.decodeIfPresent([EVIOChargerFleet].self, forKey: .listOfFleets)
        self.wrongBehaviorStation = try container.decodeIfPresent(Bool.self, forKey: .wrongBehaviorStation)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.offset = try container.decodeIfPresent(Double.self, forKey: .offset)
        self.partyId = try container.decodeIfPresent(String.self, forKey: .partyId)
        self.source = try container.decodeIfPresent(String.self, forKey: .source)
        self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
        self.evseGroup = try container.decodeIfPresent(String.self, forKey: .evseGroup)
        self.plugId = try container.decodeIfPresent(String.self, forKey: .plugId)
        self.reArrangePlugSubStatusAndIfChargerIsOffline()
    }
    
    private func reArrangePlugSubStatusAndIfChargerIsOffline() {
        if self.status == .offline {
            self.plugs?.forEach({ element in
                element.status = .unavailable
                element.subStatus = .outOfOrder
            })
        } else {
            self.plugs?.forEach({ element in
                switch element.status {
                case .free:
                    element.subStatus = .available
                case .charging:
                    element.subStatus = .charging
                default:
                    element.subStatus = .outOfOrder
                }
            })
        }
    }
    
    public init() {}
    
    public static func == (lhs: EVIOCharger, rhs: EVIOCharger) -> Bool {
        if let lhsChargerId = lhs.chargerId, let rhsChargerId = rhs.chargerId {
            return lhsChargerId == rhsChargerId
        }
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(self.hwId)
    }
    
}
