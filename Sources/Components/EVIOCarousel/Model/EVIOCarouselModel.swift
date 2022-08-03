//
//  EVIOCarouselModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/04/2022.
//

import Foundation

public struct EVIOCarouselModel: Identifiable {
    
    public let id: UUID
    public var image: String?
    public let isDefaultItem: Bool
    public var title: String?
    public var subtitle: String?
    public var data: Any?
    
    public init(image: String?, title: String?, subtitle: String?, data: Any?, isDefaultItem: Bool) {
        self.isDefaultItem = isDefaultItem
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.data = data
        self.id = UUID()
    }
    
}
