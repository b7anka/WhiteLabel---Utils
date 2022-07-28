//
//  EVIOEstimatedCostUtils.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation
import SwiftDate
import WLModels

public struct EVIOEstimatedCostUtils {
    
    public static let shared: EVIOEstimatedCostUtils = EVIOEstimatedCostUtils()
    
    public func calculateEstimatedCost(estimateTime: Double, contract: EVIOContract?, charger: EVIOCharger, plug: EVIOPlug, ev: EVIOEv? = nil) -> EVIOEstimatedCost? {
        guard !charger.isOpenChargeMap else {return nil}
        let maxBatteryCapacity: Double
        if ev != nil && ev?.id != "-1" {
            maxBatteryCapacity = ev?.evInfo?.maxBatteryCapacity ?? .zero
        } else if charger.isTesla {
            maxBatteryCapacity = EVIOEv.teslaModelS.evInfo?.maxBatteryCapacity ?? .zero
        } else {
            maxBatteryCapacity = EVIOEv.renaultZoe.evInfo?.maxBatteryCapacity ?? .zero
        }
        
        var maxBatteryChargingCapacity: Double = 0.0
        let plugName = EVIOConnectorTypeHelper.shared.nameFor(plug: plug)
        if plugName == "CCS 1" || plugName == "CCS 2" || plugName == "CHAdeMO" {
            let selectedEv: EVIOEv = ev ?? self.getDefaultEvForEstimatedCost(charger: charger)
            let ev: EVIOEv = selectedEv.id != nil && selectedEv.id != "-1" ? selectedEv : self.getDefaultEvForEstimatedCost(charger: charger)
            if ev.evInfo?.maxFastChargingPower ?? .zero > .zero {
                maxBatteryChargingCapacity =  ev.evInfo?.maxFastChargingPower ?? .zero
            } else if ev.evInfo?.internalChargerPower ?? .zero > .zero {
                maxBatteryChargingCapacity = ev.evInfo?.internalChargerPower ?? .zero
            } else {
                return nil
            }
        } else {
            let selectedEv: EVIOEv = ev ?? self.getDefaultEvForEstimatedCost(charger: charger)
            let ev: EVIOEv = selectedEv.id != nil && selectedEv.id != "-1" ? selectedEv : self.getDefaultEvForEstimatedCost(charger: charger)
            guard ev.evInfo?.internalChargerPower ?? .zero > .zero else {return nil}
            maxBatteryChargingCapacity = ev.evInfo?.internalChargerPower ?? .zero
        }
        
        let consumption =
        ((plug.power ?? .zero) >= maxBatteryChargingCapacity ? maxBatteryChargingCapacity : min(maxBatteryChargingCapacity, (plug.power ?? .zero))) * (min(estimateTime, ((plug.power ?? .zero) >= maxBatteryChargingCapacity ? maxBatteryCapacity / maxBatteryChargingCapacity : maxBatteryCapacity / (plug.power ?? .zero)) * 60) / 60)
        
        let chargingDuration = (consumption * 60) / ((plug.power ?? .zero) >= maxBatteryChargingCapacity ? maxBatteryChargingCapacity : min(maxBatteryCapacity, (plug.power ?? .zero)))
        let cemeTariff: EVIOCemeTariff = EVIOStorageManager.shared.getUserCemeTariffs()?.first ?? EVIOCemeTariff.default
        if charger.isEvio || charger.isGoCharge || charger.isHyundai {
            return self.calculateEVIOCost(charger: charger, plug: plug, estimateTime: estimateTime, consumption: consumption, ceme: cemeTariff, duration: chargingDuration, ev: ev)
        } else if charger.isTesla {
            let teslaPrice: EVIOTariffTesla? = EVIOStorageManager.shared.getCurrentTeslaTariff()
            let totalPrice: Double = (teslaPrice?.value ?? .zero) * consumption
            return EVIOEstimatedCost(unitPrice: EVIOUnitPrice(uom: .empty, value: .zero), consumption: consumption, mainCost: totalPrice, totalCost: totalPrice, iecCost: .zero, ivaCost: .zero, ceme: cemeTariff, chargingTime: Int(estimateTime), selectedPlug: plug)
        } else if charger.isMobie {
            return self.calculateOtherCost(charger: charger, plug: plug, ceme: cemeTariff, estimateTime: estimateTime, consumption: consumption, contract: contract)
        } else if charger.isGireve {
            return EVIOEstimatedCost(unitPrice: EVIOUnitPrice(uom: .empty, value: .zero), consumption: consumption, mainCost: .zero, totalCost: .zero, iecCost: .zero, ivaCost: .zero, ceme: EVIOCemeTariff.default, chargingTime: Int(estimateTime), selectedPlug: plug)
        }
        return nil
    }
    
    public func getTariffType(schedule: EVIOSchedule?) -> String? {
        guard let schedule = schedule else { return nil }
        var tariffTypeToReturn: String?
        switch schedule.cycleType {
        case .serverDaily:
            switch schedule.tariffType {
            case .serverBiHour:
                schedule.schedules?.forEach { it in
                    let (startTime, endTime) = self.getIntervalTimes(schedule: it)
                    if self.isItNowInterval(startTime: startTime, endTime: endTime) {
                        tariffTypeToReturn = it.tariffType?.rawValue
                    }
                }
                return tariffTypeToReturn
            default:
                return nil
            }
        default:
            let filteredSchedules: [EVIOPlanSchedule] = schedule.schedules?.filter({$0.season == self.getSeasonNow()}) ?? []
            switch schedule.tariffType {
            case .serverBiHour:
                filteredSchedules.forEach { it in
                    let (startTime, endTime) = self.getIntervalTimes(schedule: it)
                    if self.isItNowInterval(startTime: startTime, endTime: endTime) {
                        tariffTypeToReturn = it.tariffType?.rawValue
                    }
                }
                return tariffTypeToReturn
            case .serverTriHour:
                let filteredSchedules: [EVIOPlanSchedule] = filteredSchedules.filter({$0.weekDays == self.getDayOfWeek() && $0.season == self.getSeasonNow()})
                filteredSchedules.forEach { it in
                    let (startTime, endTime) = self.getIntervalTimes(schedule: it)
                    if self.isItNowInterval(startTime: startTime, endTime: endTime) {
                        tariffTypeToReturn = it.tariffType?.rawValue
                    }
                }
                return tariffTypeToReturn
            default:
                return nil
            }
        }
    }
    
    public func getOpcActivationValue(plug: EVIOPlug) -> Double {
        return (plug.serviceCost?.initialCost ?? .zero) > -1 ? (plug.serviceCost?.initialCost ?? .zero) : .zero
    }
    
    public func getTariffIdByPlug(charger: EVIOCharger, plug: EVIOPlug?, contract: EVIOContract? = nil) -> String? {
        guard let plug = plug else { return nil }
        let user: EVIOUser? = EVIOStorageManager.shared.getUserProfile()
        var tariffId: String?
        if charger.isEvio || charger.isHyundai || charger.isGoCharge {
            if charger.accessType != .private {
                if charger.createUser == user?.id {
                    tariffId = "-1"
                } else {
                    if let contract = contract {
                        if contract.contractType == .user {
                            if plug.tariff?.isEmpty ?? true {
                                tariffId = nil
                            } else {
                                var selectedTariff: EVIOTariff!
                                if plug.tariff?.count == 1 {
                                    selectedTariff = plug.tariff?[0]
                                } else {
                                    var indexOfPublicTariff:Int!
                                    for t in plug.tariff ?? [] {
                                        if t.groupName != .publicGroupName {
                                            var groupId: String?
                                            charger.listOfGroups?.forEach { (ls) in
                                                ls.listOfUsers?.forEach { (lu) in
                                                    if lu.userId == user?.id {
                                                        groupId = ls.groupId
                                                    }
                                                }
                                            }
                                            if groupId != nil {
                                                plug.tariff?.forEach { (t) in
                                                    if t.groupId == groupId! {
                                                        selectedTariff = t
                                                    }
                                                }
                                            }
                                        } else {
                                            indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                        }
                                    }
                                    if selectedTariff == nil {
                                        if indexOfPublicTariff != nil {
                                            if indexOfPublicTariff > -1 {
                                                selectedTariff = plug.tariff?[indexOfPublicTariff]
                                            }
                                        }
                                    }
                                }
                                if selectedTariff != nil {
                                    tariffId = selectedTariff.tariffId
                                } else {
                                    tariffId = "-1"
                                }
                            }
                        } else {
                            tariffId = plug.tariff?.first(where: {return $0.fleetId == contract.fleetId})?.tariffId
                            if tariffId == nil && charger.accessType == .public {
                                tariffId = plug.tariff?.first(where: {return $0.groupName == .publicGroupName})?.tariffId
                            }
                        }
                    } else {
                        if plug.tariff?.isEmpty ?? true {
                            tariffId = nil
                        } else {
                            var selectedTariff: EVIOTariff!
                            if plug.tariff?.count == 1 {
                                selectedTariff = plug.tariff?[0]
                            } else {
                                var indexOfPublicTariff:Int!
                                for t in plug.tariff ?? [] {
                                    if t.groupName != .publicGroupName {
                                        var groupId: String?
                                        charger.listOfGroups?.forEach { (ls) in
                                            ls.listOfUsers?.forEach { (lu) in
                                                if lu.userId == user?.id {
                                                    groupId = ls.groupId
                                                }
                                            }
                                        }
                                        if groupId != nil {
                                            plug.tariff?.forEach { (t) in
                                                if t.groupId == groupId! {
                                                    selectedTariff = t
                                                }
                                            }
                                        }
                                    } else {
                                        indexOfPublicTariff = plug.tariff?.firstIndex(of: t) ?? -1
                                    }
                                }
                                if selectedTariff == nil {
                                    if indexOfPublicTariff != nil {
                                        if indexOfPublicTariff > -1 {
                                            selectedTariff = plug.tariff?[indexOfPublicTariff]
                                        }
                                    }
                                }
                            }
                            if selectedTariff != nil {
                                tariffId = selectedTariff.tariffId
                            } else {
                                tariffId = "-1"
                            }
                        }
                    }
                }
            } else {
                tariffId = "-1"
            }
        } else {
            tariffId = "-1"
        }
        return tariffId
    }
    
    private func getIntervalTimes(schedule: EVIOPlanSchedule) -> (Date, Date) {
        let periodDates: [Date] = self.convertPeriodStringToDate(period: schedule.period ?? .empty)
        if periodDates.count == 2 {
            let periodStart: Date = periodDates.first!
            let periodEnd: Date = periodDates.last!
            return (periodStart, periodEnd)
        }
        return (Date(), Date())
    }
    
    private func isItNowInterval(startTime: Date, endTime: Date) -> Bool {
        let now: Date = Date()
        if now >= startTime && now <= endTime {
            return true
        }
        return false
    }
    
    private func getSeasonNow() -> String {
        let timeZone = TimeZone.current
        let now: Date = Date()
        if timeZone.isDaylightSavingTime(for: now) {
            return "summer"
        }
        return "winter"
    }
    
    private func getDayOfWeek(date: Date = Date()) -> String {
        switch date.weekday {
        case 7:
            return "saturday"
        case 1:
            return "sunday"
        case 2, 3, 4, 5, 6:
            return "2ª-6ª"
        default:
            return "all"
        }
    }
    
    private func getOPCTariff(serviceCost: EVIOServiceCost?) -> (String, Double) {
        let values: [Double] = serviceCost?.costByTime?.map({$0.cost ?? .zero}) ?? []
        return (UOMS.min, values.max() ?? .zero)
    }
    
    private func getOPCTariffKwh(serviceCost: EVIOServiceCost?) -> (String, Double) {
        if serviceCost?.costByPower?.cost ?? .zero > 0 {
            return (serviceCost?.costByPower?.uom ?? UOMS.kWh, serviceCost?.costByPower?.cost ?? .zero)
        }
        return (UOMS.kWh, .zero)
    }
    
    private func getDefaultEvForEstimatedCost(charger: EVIOCharger) -> EVIOEv {
        return charger.isTesla ? EVIOEv.teslaModelS : EVIOEv.renaultZoe
    }
    
    private func calculateEVIOCost(charger: EVIOCharger, plug: EVIOPlug, estimateTime: Double, consumption: Double, ceme: EVIOCemeTariff, duration: Double, ev: EVIOEv?) -> EVIOEstimatedCost? {
        let contract: EVIOContract? = EVIOStorageManager.shared.getUserContracts()?.filter({return $0.contractType == .fleet}).first(where: {$0.evId == ev?.id})
       let tariffId: String? = self.getTariffIdByPlug(charger: charger, plug: plug, contract: contract)
        let tariff: EVIOTariff? = plug.tariff?.first(where: {return $0.tariffId == tariffId})
       let feeds = charger.fees
       
       // let iecCost = consumption * feeds.iec
       
        let parkDuringCharging: Double = (duration * (tariff?.tariff?.parkingDuringChargingAmount?.value ?? .zero)).isFinite ? duration * (tariff?.tariff?.parkingDuringChargingAmount?.value ?? .zero) : .zero
       
        let parkAfterCharging: Double = ((estimateTime - duration) * (tariff?.tariff?.parkingAmount?.value ?? .zero)).isFinite ? (estimateTime - duration) * (tariff?.tariff?.parkingAmount?.value ?? .zero) : .zero
       
        let chargingCost = (tariff?.tariffType == .timeBased || tariff?.tariffType == .basic ? estimateTime * (tariff?.tariff?.chargingAmount?.value ?? .zero)
                            : consumption * (tariff?.tariff?.chargingAmount?.value ?? .zero))
       
        let totalCostBeforeVat = chargingCost + (tariff?.tariff?.activationFee ?? .zero) + parkDuringCharging + parkAfterCharging + (tariff?.tariff?.bookingAmount?.value ?? .zero)
       
        let ivaCost = totalCostBeforeVat * (feeds?.iva ?? .zero)
       
       let totalCost = totalCostBeforeVat + ivaCost
       
       let unitPrice =
           tariff?.tariffType == .timeBased || tariff?.tariffType == .basic
           ? EVIOUnitPrice(uom: UOMS.kWh, value: totalCost / consumption)
           : EVIOUnitPrice(uom: UOMS.min, value: totalCost / estimateTime)
       
        let fees = ivaCost + (tariff?.tariff?.activationFee ?? .zero)
       
       let parkingCost: EVIOEstimatedParkingCost = EVIOEstimatedParkingCost(parkingDuringCharging: parkDuringCharging, parkingAfterCharging: parkAfterCharging)
       
        return EVIOEstimatedCost(unitPrice: unitPrice, tariff: tariff, consumption: consumption, mainCost: totalCostBeforeVat, totalCost: totalCost, iecCost: .zero, ivaCost: ivaCost, mobie: nil, ceme: ceme, chargingTime: Int(estimateTime.isFinite ? estimateTime * 60.0 : .zero), fees: fees, parkingCost: parkingCost, charger: charger, chargingCost: chargingCost, selectedPlug: plug)
   }
    
    private func calculateOtherCost(charger: EVIOCharger, plug: EVIOPlug, ceme: EVIOCemeTariff, estimateTime: Double, consumption: Double, contract: EVIOContract?) -> EVIOEstimatedCost? {
        let userCemeTariffs: [EVIOCemeTariff] = EVIOStorageManager.shared.getUserCemeTariffs() ?? []
        guard let plan: EVIOPlan = contract?.tariffInfo?.plan ?? userCemeTariffs.first?.tariffInfo?.plan ?? EVIOStorageManager.shared.getDefaulEvioCemeTariff()?.plan, let tar: EVIOTar = contract?.tariffInfo?.tar ?? userCemeTariffs.first?.tariffInfo?.tar ?? EVIOStorageManager.shared.getDefaulEvioCemeTariff()?.tar, let schedule = contract?.tariffInfo?.schedule ?? userCemeTariffs.first?.tariffInfo?.schedule ?? EVIOStorageManager.shared.getDefaulEvioCemeTariff()?.schedule, let tariffType: String = self.getTariffType(schedule: schedule), let tariff: EVIOPlanTariff = plan.tariff?.first(where: {return $0.tariffType?.rawValue ?? .empty == tariffType}), let cheapestTar: EVIOTarTariff = tar.tariff?.first(where: {$0.tariffType?.rawValue ?? .empty == tariffType && $0.voltageLevel == charger.voltageLevel}), let feeds: EVIOFees = charger.fees else { return nil }
        let opcMin: (String, Double) = self.getOPCTariff(serviceCost: plug.serviceCost)
        let opcKwh: (String, Double) = self.getOPCTariffKwh(serviceCost: plug.serviceCost)
        let opcTariffMin: EVIOOpcTariff = EVIOOpcTariff(uom: opcMin.0, value: opcMin.1)
        let opcTariffkHw: EVIOOpcTariff = EVIOOpcTariff(uom: opcKwh.0, value: opcKwh.1)
        let uom: String = tariff.uom ?? "€/min"
        let price: Double = tariff.price ?? .zero
        let tarCost: Double = consumption * (cheapestTar.price ?? .zero)
        let opcCostMin: Double = estimateTime * opcTariffMin.value
        let opcCostKwh: Double = consumption * opcTariffkHw.value
        let iecCost: Double = consumption * (feeds.iec ?? .zero)
        let mainCost: Double = uom == "€/min" ? estimateTime * price : consumption * price
        let noTaxesCost: Double = mainCost
        let activation: Double = self.getOpcActivationValue(plug: plug)
        let activationCemeFee: Double
        if let value: Double = Double(EVIOLanguageManager.shared.getTranslationFor(key: "estimatedCost_evioActivationValue")), plan.ceme?.lowercased() == "evio" {
            activationCemeFee = value
        } else {
            activationCemeFee = 0.0
        }
        let totalOpcCost: Double = opcCostMin + opcCostKwh + activation
        let compositeCost: Double = mainCost + tarCost + totalOpcCost + iecCost + activationCemeFee
        let ivaCost: Double = compositeCost * (feeds.iva ?? .zero)
        let totalCost: Double = compositeCost + ivaCost
        let unitPrice: EVIOUnitPrice =
            uom == "€/min"
        ? EVIOUnitPrice(uom: "min", value: tariff.price ?? .zero)
        : EVIOUnitPrice(uom: "kWh", value: tariff.price ?? .zero)
        let noTaxesTotalCeme: Double = uom == "€/min" ? unitPrice.value * estimateTime : unitPrice.value * consumption + activationCemeFee
        let estimatedCostForMobie: EVIOEstimatedCostMobie = EVIOEstimatedCostMobie(opcTariff: opcTariffMin, opcTariffKwh: opcTariffkHw, tarCost: tarCost, opcCost: totalOpcCost, opcCostKwh: opcCostKwh, planTariff: tariff, activation: activation, totalCeme: noTaxesTotalCeme, cemeTariffUom: uom, priceWithTaxesButNoVat: compositeCost, fees: feeds, tarTariff: cheapestTar)
        let estimatedCost: EVIOEstimatedCost = EVIOEstimatedCost(unitPrice: unitPrice, tariff: nil, consumption: consumption, mainCost: noTaxesCost, totalCost: totalCost, iecCost: iecCost, ivaCost: ivaCost, mobie: estimatedCostForMobie, ceme: ceme, chargingTime: Int(estimateTime.isFinite ? estimateTime * 60.0 : 0), selectedPlug: plug)
        return estimatedCost
    }
    
    private func convertPeriodStringToDate(period: String) -> [Date] {
        var shoudlSubtractOneMinute: Bool = true
        let periodComponents: [String] = period.components(separatedBy: "-")
        guard let startHour: [String] = periodComponents.first?.components(separatedBy: "h"), var endHour: [String] = periodComponents.last?.components(separatedBy: "h") else {return []}
        if let end: String = endHour.first, end == "24" {
            let hour = "23"
            let min = "59"
            endHour = [hour, min]
            shoudlSubtractOneMinute = false
        }
        guard let startHourString: String = startHour.first, let startHourMinuteString: String = startHour.last, let startHourInt: Int = Int(startHourString), let startHourMinuteInt: Int = Int(startHourMinuteString), let startDate: Date = Date().dateBySet(hour: startHourInt, min: startHourMinuteInt, secs: 0), let endHourString: String = endHour.first, let endHourMinute: String = endHour.last, let endHourInt: Int = Int(endHourString), let endHourMinuteInt: Int = Int(endHourMinute), let endDate: Date = Date().dateBySet(hour: endHourInt, min: endHourMinuteInt, secs: 0) else {return []}
        let endDateSubtractedOneMinute = endDate - 1.minutes
        let endDateToReturn: Date = shoudlSubtractOneMinute ? endDateSubtractedOneMinute : endDate
        return [startDate, endDateToReturn]
    }
    
}
