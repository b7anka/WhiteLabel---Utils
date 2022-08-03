//
//  EVIOImagePickerViewRepresentable.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 27/03/2021.
//

import SwiftUI

public struct EVIOImagePickerViewRepresentable: UIViewControllerRepresentable {
    
    public typealias UIViewControllerType = UIImagePickerController
    public typealias SourceType = UIImagePickerController.SourceType

    private let sourceType: SourceType
    private let completionHandler: (UIImage?) -> Void
    
    public init(sourceType: SourceType, completionHandler: @escaping (UIImage?) -> Void) {
        self.sourceType = sourceType
        self.completionHandler = completionHandler
    }
    
    public func makeUIViewController(context: Context) -> UIImagePickerController {
        let viewController = UIImagePickerController()
        viewController.delegate = context.coordinator
        viewController.sourceType = sourceType
        return viewController
    }
    
    public func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    public func makeCoordinator() -> TMImagePickerViewCoordinator {
        return Coordinator(completionHandler: self.completionHandler)
    }
    
}

public final class TMImagePickerViewCoordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    private let completionHandler: (UIImage?) -> Void
    
    public init(completionHandler: @escaping (UIImage?) -> Void) {
        self.completionHandler = completionHandler
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let image: UIImage? = {
            if let image = info[.editedImage] as? UIImage {
                return image
            }
            return info[.originalImage] as? UIImage
        }()
        self.completionHandler(image)
    }

    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.completionHandler(nil)
    }
    
}
