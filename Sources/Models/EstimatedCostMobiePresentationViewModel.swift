//
//  EstimatedCostMobiePresentationViewModel.swift
//  evio
//
//  Created by Tiago Moreira on 19/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public enum EstimatedCostMobiePresentationViewModel: String, Identifiable {
    
    case defaultPage
    case simulatePercentage
    case simulateTime
    
    public var id: String {
        return self.rawValue
    }
    
}
