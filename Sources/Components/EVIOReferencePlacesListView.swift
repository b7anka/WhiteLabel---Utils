//
//  EVIOReferencePlacesListView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public struct EVIOReferencePlacesListView: View {
    
    @Binding private var refPlaces: [EVIOMyAccountReferencePlace]
    private let action: ((EVIOMyAccountReferencePlace) -> Void)?
    private let deleteAction: ((EVIOMyAccountReferencePlace) -> Void)?
    
    public init(refPlaces: Binding<[EVIOMyAccountReferencePlace]>, action: ((EVIOMyAccountReferencePlace) -> Void)? = nil, deleteAction: ((EVIOMyAccountReferencePlace) -> Void)? = nil) {
        self._refPlaces = refPlaces
        self.action = action
        self.deleteAction = deleteAction
    }
    
    public var body: some View {
        ForEach(self.refPlaces) { refPlace in
            EVIOMyAccountReferencePlaceListItemView(refPlace: refPlace, action: self.action, deleteAction: self.deleteAction)
        }
    }
    
}
