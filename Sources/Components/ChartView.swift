//
//  ChartViewSUI.swift
//  evio
//
//  Created by João Moreira on 25/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct ChartViewSUI: View {
    
    public var readingPoints: [EVIOReadingPoint]?
    public var statistics: [EVIOStatistics]?
    public var forEv: Bool
    
    public init(readingPoints: [EVIOReadingPoint]? = nil, statistics: [EVIOStatistics]? = nil, forEv: Bool = false) {
        self.readingPoints = readingPoints
        self.statistics = statistics
        self.forEv = forEv
    }
    
    public var body: some View {
        ChartViewRepresentable(readingPoints: self.readingPoints, statistics: self.statistics, forEv: self.forEv)
            .frame(height: 216)
    }
    
}
