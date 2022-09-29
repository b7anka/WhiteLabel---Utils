//
//  EstimatedCostRestrictionModel.swift
//  evio
//
//  Created by Tiago Moreira on 23/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EstimatedCostRestrictionModel: Identifiable {
    
    public let id: UUID
    public let title: String
    public let values: [String]
    
    public init(title: String, values: [String]) {
        self.id = UUID()
        self.title = title
        self.values = values
    }
    
}
