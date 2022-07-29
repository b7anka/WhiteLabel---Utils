//
//  EVIORoundedCorner.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/12/2021.
//

import SwiftUI

public struct EVIORoundedCorner: Shape {

    public var radius: CGFloat = .infinity
    public var corners: UIRectCorner = .allCorners

    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}
