//
//  EVIOBottomSheetItem.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/02/2022.
//

import Foundation

public struct EVIOBottomSheetItem: Hashable {
    
    public let id = UUID()
    public var title: String
    public var value: Any
    
    public init(title: String, value: Any) {
        self.title = title
        self.value = value
    }
    
    public static func == (lhs: EVIOBottomSheetItem, rhs: EVIOBottomSheetItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
    }
    
}
