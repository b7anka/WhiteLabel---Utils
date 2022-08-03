//
//  EVIOShareSheet.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public struct EVIOShareSheet: UIViewControllerRepresentable {
    
    public typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    private let activityItems: [Any]
    private let applicationActivities: [UIActivity]?
    private let excludedActivityTypes: [UIActivity.ActivityType]?
    private var callback: Callback?
    
    public init(activityItems: [Any], applicationActivities: [UIActivity]? = nil, excludedActivityTypes: [UIActivity.ActivityType]? = [UIActivity.ActivityType.saveToCameraRoll], callback: Callback? = nil) {
        self.callback = callback
        self.activityItems = activityItems
        self.applicationActivities = applicationActivities
        self.excludedActivityTypes = excludedActivityTypes
        self.callback = callback
    }
    
    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
