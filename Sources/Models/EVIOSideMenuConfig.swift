//
//  EVIOSideMenuConfig.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 23/12/2021.
//

import Foundation

public struct EVIOSideMenuConfig: Codable {
    
    public let menuButtonType: EVIOSideMenuType
    public let showComparator: Bool
    public let showRouter: Bool
    public let sideMenuImage: EVIOSideMenuImageType
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.menuButtonType = try container.decodeIfPresent(EVIOSideMenuType.self, forKey: .menuButtonType) ?? .circle
        self.showComparator = try container.decodeIfPresent(Bool.self, forKey: .showComparator) ?? false
        self.showRouter = try container.decodeIfPresent(Bool.self, forKey: .showRouter) ?? false
        self.sideMenuImage = try container.decodeIfPresent(EVIOSideMenuImageType.self, forKey: .sideMenuImage) ?? .whiteLabel
    }
    
    public init() {
        self.menuButtonType = .circle
        self.showComparator = false
        self.showRouter = false
        self.sideMenuImage = .whiteLabel
    }
    
}
