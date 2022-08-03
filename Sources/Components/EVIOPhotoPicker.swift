//
//  EVIOPhotoPicker.swift
//  evio
//
//  Created by João Moreira on 24/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI
import PhotosUI

public struct EVIOPhotoPicker: UIViewControllerRepresentable {
    
    public typealias UIViewControllerType = PHPickerViewController
    
    private let allowedImages: Int
    private let didFinishPicking: (UIImage?) -> Void
    
    public init(allowedImages: Int, didFinishPicking: @escaping (UIImage?) -> Void) {
        self.allowedImages = allowedImages
        self.didFinishPicking = didFinishPicking
    }
    
    public func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .any(of: [.images])
        config.selectionLimit = self.allowedImages == .zero ? 1 : self.allowedImages
        config.preferredAssetRepresentationMode = .current
        
        let controller = PHPickerViewController(configuration: config)
        controller.delegate = context.coordinator
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(with: self)
    }
    
    public final class Coordinator: PHPickerViewControllerDelegate {
        
        private let photoPicker: EVIOPhotoPicker
        
        public init(with photoPicker: EVIOPhotoPicker) {
            self.photoPicker = photoPicker
        }
        
        public func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            self.photoPicker.didFinishPicking(nil)
            for result in results {
                let itemProvider = result.itemProvider
                
                guard let typeIdentifier = itemProvider.registeredTypeIdentifiers.first,
                      let utType = UTType(typeIdentifier)
                else { continue }
                
                if utType.conforms(to: .image) {
                    self.getPhoto(from: itemProvider, isLivePhoto: false)
                }
            }
        }
        
        private func getPhoto(from itemProvider: NSItemProvider, isLivePhoto: Bool) {
            let objectType: NSItemProviderReading.Type = !isLivePhoto ? UIImage.self : PHLivePhoto.self
            
            if itemProvider.canLoadObject(ofClass: objectType) {
                itemProvider.loadObject(ofClass: objectType) { object, error in
                    if let error = error {
                        print(error.localizedDescription)
                    }
                    
                    if !isLivePhoto {
                        if let image = object as? UIImage {
                            DispatchQueue.main.async {
                                self.photoPicker.didFinishPicking(image)
                            }
                        }
                    }
                }
            }
        }
    
    }
}
