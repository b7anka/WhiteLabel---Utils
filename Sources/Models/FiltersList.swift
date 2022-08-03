//
//  FiltersList.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/01/2022.
//

import SwiftUI

/// # REPRESENTS THE FILTERS LIST ITEM
public final class FiltersList: ObservableObject, Identifiable {
    
    // MARK: - PUBLISHED PROPERTIES
    @Published public var selected: Bool
    
    // MARK: - PROPERTIES
    public var id: String
    public var title: String
    public var selectedImage: String
    public var image: String
    public var data: Any
    
    // MARK: - INIT
    public init(selected: Bool = false, title: String, selectedImage: String, image: String, data: Any) {
        self.id = UUID().uuidString
        self.selected = selected
        self.title = title
        self.selectedImage = selectedImage
        self.image = image
        self.data = data
    }
    
}
