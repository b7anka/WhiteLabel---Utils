//
//  EVIOCemeTariff+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation
import WLModels

extension EVIOCemeTariff {
    
    static var `default`: EVIOCemeTariff {
        let evioPlanTariff = EVIOPlanTariff(id: "5f68af7639c69201cd7b1ee3", power: "all", uom: "€/kWh", tariffType: .serverEmpty, voltageLevel: nil, price: 0.11)
        let evioPlanTariff2 = EVIOPlanTariff(id: "5f68af7639c69201cd7b1ee3", power: "all", uom: "€/kWh", tariffType: .serverOutEmpty, voltageLevel: nil, price: 0.12)
        let evioPlanTariff3 = EVIOPlanTariff(id: "5f68af7639c69201cd7b1ee3", power: "all", uom: "€/kWh", tariffType: .serverEmpty, voltageLevel: nil, price: 0.11)
        let evioPlanSchedule = EVIOPlanSchedule(id: "5f68b19356a5a200134bbbe1", period: "00h00-24h00", tariffType: .all, weekDays: "all", season: "all")
        let tariffContract: EVIOTariffContract = EVIOTariffContract(power: "5f88608d3969ec0006201b0c", planID: "all")
        let plan: EVIOPlan = EVIOPlan(id: "5f88608d3969ec0006201b0c", country: "PT", ceme: "EVIO", tariffType: .serverSimple, planName: "server_plan_EVIO", cycleType: .all, tariff: [evioPlanTariff, evioPlanTariff2, evioPlanTariff3], createdAt: nil, updatedAt: nil, v: nil, visivel: nil)
        let schedule: EVIOSchedule = EVIOSchedule(id: "5f68b19356a5a200134bbbe0", country: "PT", tariffType: .serverSimple, cycleType: .all, schedules: [evioPlanSchedule])
        let tariffInfo: EVIOContractPlan = EVIOContractPlan(plan: plan, tar: nil, schedule: schedule)
        let evioContract = EVIOCemeTariff(tariff: tariffContract, active: true, cemeTariffDefault: nil, id: nil, imageCEME: "https://filesapi.go-evio.com/contract/ceme/cemeEVIO.jpg", ceme: "EVIO", userID: nil, createdAt: nil, updatedAt: nil, v: nil, tariffInfo: tariffInfo)
        if let ceme = EVIOStorageManager.shared.getDefaulEvioCemeTariff() {
            let tariffInfo: EVIOContractPlan = EVIOContractPlan(plan: ceme.plan, tar: ceme.tar, schedule: ceme.schedule)
            let cemeTariff: EVIOCemeTariff = EVIOCemeTariff(tariff: tariffContract, active: true, cemeTariffDefault: nil, id: nil, imageCEME: "https://filesapi.go-evio.com/contract/ceme/cemeEVIO.jpg", ceme: "EVIO", userID: nil, createdAt: nil, updatedAt: nil, v: nil, tariffInfo: tariffInfo)
            return cemeTariff
        }
        return evioContract
    }
    
}
