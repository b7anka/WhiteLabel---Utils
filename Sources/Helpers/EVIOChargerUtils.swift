//
//  EVIOChargerUtils.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation

public struct EVIOChargerUtils {
    
    public static let shared: EVIOChargerUtils = EVIOChargerUtils()
    
    public init() { }
    
    public func checkIfSelectedEvIsCompatibleWithSelectedContractAndCharger(contract: EVIOContract?, ev: EVIOEv?) -> Bool {
        if contract?.contractType == .user {
            let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
            let driver = ev?.listOfDrivers?.first(where: {return $0.userId == user?.id})
            let groupDriver = ev?.listOfGroupDrivers?.filter({return $0.listOfDrivers?.first(where: {return $0.driverId == user?.id}) != nil}).first
            if ev?.userID == user?.id || driver?.paymentBy == .driver || groupDriver?.paymentBy == .driver {
                return true
            }
            return false
        }
        return ev?.id == contract?.evId
    }
    
    public func getDefaultContractForCharger(charger: EVIOCharger) -> EVIOContract? {
        let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
        if charger.isMobie {
            let userEvs: [EVIOEv] = EVIOStorageManager.shared.getUserEvs() ?? []
            let mobieUserActiveContracts: [EVIOContract] = EVIOStorageManager.shared.getUserContracts()?.filter({$0.contractType == .user && $0.networks?.first(where: {$0.network == .mobie})?.tokens?.first(where: {$0.tokenType == .appUser})?.status == .active}) ?? []
            let userContracts = EVIOStorageManager.shared.getUserContracts()?.filter({$0.contractType == .fleet && $0.networks?.first(where: {$0.network == .mobie})?.tokens?.first(where: {$0.tokenType == .appUser})?.status == .active}) ?? []
            for ev in userEvs {
                let evId: String = ev.id == nil ? ev.evId ?? .empty : ev.id ?? .empty
                let driver = ev.listOfDrivers?.first(where: {return $0.userId == user?.id})
                let groupDriver = ev.listOfGroupDrivers?.filter({return $0.listOfDrivers?.first(where: {return $0.driverId == user?.id}) != nil}).first
                if let contract = userContracts.first(where: {return $0.evId == evId && (driver?.paymentBy == .myself || groupDriver?.paymentBy == .myself)}) {
                    return contract
                }
            }
            if !mobieUserActiveContracts.isEmpty {
                return mobieUserActiveContracts.first
            } else {
                return EVIOStorageManager.shared.getUserContracts()?.first(where: {$0.contractType == .user})
            }
        } else if charger.isEvio || charger.isGoCharge || charger.isHyundai {
            if charger.createUser == user?.id || charger.listOfFleets?.isEmpty ?? true || charger.accessType == .public {
                return EVIOStorageManager.shared.getUserContracts()?.first(where: {return $0.contractType == .user})
            } else {
                var userHasAccess: Bool = false
                let contractsFleet = EVIOStorageManager.shared.getUserContracts()?.filter({return $0.contractType == .fleet})
                var fleetIdWithAccess: String?
                for cf in contractsFleet ?? [] {
                    for fleet in charger.listOfFleets ?? [] where cf.fleetId == fleet.fleetId {
                        fleetIdWithAccess = fleet.fleetId
                        userHasAccess = true
                        break
                    }
                }
                if userHasAccess {
                    return contractsFleet?.first(where: {return $0.fleetId == fleetIdWithAccess})
                } else {
                    if !(charger.listOfGroups?.isEmpty ?? true) {
                        var userHasAccess: Bool = false
                        for g in charger.listOfGroups ?? [] {
                            for gU in g.listOfUsers ?? [] where gU.userId == user?.id {
                                userHasAccess = true
                                break
                            }
                        }
                        if userHasAccess {
                            return EVIOStorageManager.shared.getUserContracts()?.first(where: {return $0.contractType == .user})
                        } else {
                            if charger.accessType == .public {
                                return EVIOStorageManager.shared.getUserContracts()?.first(where: {return $0.contractType == .user})
                            }
                        }
                    } else {
                        if charger.accessType == .public {
                            return EVIOStorageManager.shared.getUserContracts()?.first(where: {return $0.contractType == .user})
                        }
                    }
                }
                return nil
            }
        } else if charger.isGireve {
            let gireveContract: EVIOContract? = EVIOStorageManager.shared.getUserContracts()?.filter({$0.contractType == .user && $0.networks?.first(where: {$0.network == .gireve})?.tokens?.first(where: {$0.tokenType == .other})?.status == .active}).first
            let userEvs: [EVIOEv] = EVIOStorageManager.shared.getUserEvs() ?? []
            let fleetContracts: [EVIOContract] = EVIOStorageManager.shared.getUserContracts()?.filter({$0.contractType == .fleet && $0.networks?.first(where: { $0.network == .gireve})?.tokens?.first(where: {$0.tokenType == .other})?.status == .active}) ?? []
            for ev in userEvs {
                let evId: String = ev.id == nil ? ev.evId ?? .empty : ev.id ?? .empty
                if let contract = fleetContracts.first(where: {return $0.evId == evId}) {
                    return contract
                }
            }
            return gireveContract ?? EVIOStorageManager.shared.getUserContracts()?.first
        } else if charger.isTesla {
            return EVIOStorageManager.shared.getUserContracts()?.filter({$0.contractType == .user}).first
        }
        return nil
    }
    
    public func getEvForContract(contract: EVIOContract, charger: EVIOCharger) -> EVIOEv? {
        let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
        if contract.contractType == .user {
            let ev: EVIOEv? = contract.contractType == .user ? EVIOStorageManager.shared.getUserEvs()?.first(where: {return $0.primaryEV ?? false && $0.userID == user?.id}) ?? EVIOStorageManager.shared.getUserEvs()?.first(where: {$0.userID == user?.id}) ?? EVIOEv.anonymous : EVIOStorageManager.shared.getUserEvs()?.first(where: {return $0.id == contract.evId})
            return ev
        } else {
            var evsInFleets = [EVIOEv]()
            var evsNotInFleets = [EVIOEv]()
            for f in charger.listOfFleets ?? [] {
                for ev in EVIOStorageManager.shared.getUserEvs() ?? [] {
                    if ev.fleet == f.fleetId {
                        if !evsInFleets.contains(ev) {
                            evsInFleets.append(ev)
                        }
                    } else {
                        if !evsNotInFleets.contains(ev) && ev.userID == user?.id {
                            evsNotInFleets.append(ev)
                        }
                    }
                }
            }
            let ev: EVIOEv? = evsInFleets.first(where: {$0.id == contract.evId}) ?? EVIOStorageManager.shared.getUserEvs()?.first(where: {$0.id == contract.evId})
            return ev
        }
    }
    
}
