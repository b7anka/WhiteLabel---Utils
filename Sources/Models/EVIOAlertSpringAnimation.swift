//
//  EVIOAlertSpringAnimation.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import Foundation

public struct EVIOAlertSpringAnimation {
    
    public var mass: Double
    public var stiffness: Double
    public var damping: Double
    public var initialVelocity: Double
    
    public init(mass: Double = 0.1, stiffness: Double = 5.5, damping: Double = 5.5, initialVelocity: Double = 9.0) {
        self.mass = mass
        self.stiffness = stiffness
        self.damping = damping
        self.initialVelocity = initialVelocity
    }
    
}
