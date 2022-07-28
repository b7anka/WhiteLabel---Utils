//
//  EVIOConnectorTypeHelper.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation
import WLModels

public struct EVIOConnectorTypeHelper {
    
    public static var shared: EVIOConnectorTypeHelper = EVIOConnectorTypeHelper()
    
    public var connectorTypes: [EVIOConnectorTypeData]
    
    public init() {
        self.connectorTypes = []
        self.parseConnectorTypesJSON()
    }
    
    mutating private func parseConnectorTypesJSON() {
        guard let path = Bundle.main.url(forResource: .connectorTypes, withExtension: .json), let data: Data = try? Data(contentsOf: path), let connectorTypes: [EVIOConnectorTypeData] = try? JSONDecoder().decode([EVIOConnectorTypeData].self, from: data) else { return }
        self.connectorTypes = connectorTypes
    }
    
    public func imageNameFor(plug: EVIOPlug?, selected: Bool = true, backgroundOn: Bool = false, summary: Bool = false) -> String {
        let plug: EVIOConnectorTypeData? = self.connectorTypes.first(where: {$0.alias.contains(where: {$0.lowercased() == plug?.connectorType?.lowercased()})})
        if summary {
            return selected ? plug?.summaryImageSelected ?? .unknownSelectedNoBackground : plug?.summaryImage ?? .unknownSelectedNoBackground
        } else if backgroundOn {
            if selected {
                return plug?.selectedImage ?? .unknownSelected
            }
            return plug?.image ?? .unknown
        } else {
            if selected {
                return plug?.selectedImageNoBackground ?? .unknownSelectedNoBackground
            }
            return .unknownSelectedNoBackground
        }
    }
    
    public func nameFor(plug: EVIOPlug?) -> String {
        let plug: EVIOConnectorTypeData? = self.connectorTypes.first(where: {$0.alias.contains(where: {$0.lowercased() == plug?.connectorType?.lowercased()})})
        return EVIOLanguageManager.shared.getTranslationFor(key: plug?.translationKey ?? "connector_unknown")
    }
    
}
