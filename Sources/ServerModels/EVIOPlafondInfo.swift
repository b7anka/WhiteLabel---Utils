//
//  EVIOPlafondInfo.swift
//  evio
//
//  Created by Tiago Moreira on 12/10/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOPlafondInfo: Codable {
    
    public var monthlyPlafond: EVIOAmount?
    public var amount: EVIOAmount?
    public var spentCurrentMonth: EVIOAmount?
    
}
