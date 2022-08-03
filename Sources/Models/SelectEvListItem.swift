//
//  SelectEvListItem.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/02/2022.
//

import SwiftUI

public final class SelectEvListItem: ObservableObject, Identifiable, Hashable {
    
    public var id: UUID
    @Published public var selectable: Bool
    @Published public var selected: Bool
    public let ev: EVIOEv
    
    public init(selected: Bool, ev: EVIOEv) {
        self.id = UUID()
        self.selectable = true
        self.selected = false
        self.ev = ev
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(self.id)
    }
    
    public static func == (lhs: SelectEvListItem, rhs: SelectEvListItem) -> Bool {
        return lhs.id == rhs.id
    }
    
}
