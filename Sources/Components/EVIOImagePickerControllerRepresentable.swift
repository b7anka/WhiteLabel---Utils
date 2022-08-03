//
//  EVIOImagePickerControllerRepresentable.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/05/2022.
//

import SwiftUI

public struct EVIOImagePickerControllerRepresentable: UIViewControllerRepresentable {
    
    @Binding private var pickerController: UIImagePickerController?
    public var imageTaken: (UIImage?) -> Void
    public var didFinishTakenPhotos: () -> Void
    
    public init(pickerController: Binding<UIImagePickerController?>, imageTaken: @escaping (UIImage?) -> Void, didFinishTakenPhotos: @escaping () -> Void) {
        self._pickerController = pickerController
        self.imageTaken = imageTaken
        self.didFinishTakenPhotos = didFinishTakenPhotos
    }
    
    public func makeUIViewController(context: Context) -> UIImagePickerController {
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .camera
        pickerController.showsCameraControls = false
        pickerController.delegate = context.coordinator
        self.pickerController = pickerController
        return pickerController
    }
    
    public func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) { }
    
    public func makeCoordinator() -> EVIOImagePickerControllerRepresentableCoordinator {
        return EVIOImagePickerControllerRepresentableCoordinator(imagePicker: self)
    }
    
}

public final class EVIOImagePickerControllerRepresentableCoordinator: NSObject, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    private var imagePicker: EVIOImagePickerControllerRepresentable
    
    public init(imagePicker: EVIOImagePickerControllerRepresentable) {
        self.imagePicker = imagePicker
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey(rawValue: UIImagePickerController.InfoKey.originalImage.rawValue)]
        if let capturedImage = image as? UIImage {
            self.imagePicker.imageTaken(capturedImage)
        }
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.imagePicker.didFinishTakenPhotos()
    }
    
}
