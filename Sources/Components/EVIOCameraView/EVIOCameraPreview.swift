//
//  EVIOCameraPreview.swift
//  My Notes
//
//  Created by João Moreira on 27/03/2021.
//

import SwiftUI
import AVFoundation

public struct EVIOCameraPreview: UIViewRepresentable {
    
    @StateObject public var cameraViewModel: EVIOCameraViewViewModel
    
    public init(cameraViewModel: EVIOCameraViewViewModel) {
        self._cameraViewModel = StateObject(wrappedValue: cameraViewModel)
    }
    
    public func makeUIView(context: Context) -> UIView {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 100),
            view.heightAnchor.constraint(equalToConstant: 100)
        ])
        self.cameraViewModel.preview  = AVCaptureVideoPreviewLayer(session: self.cameraViewModel.session)
        view.layer.addSublayer(self.cameraViewModel.preview)
        self.cameraViewModel.session.startRunning()
        return view
    }
    
    public func updateUIView(_ view: UIView, context: Context) {
        self.cameraViewModel.preview.frame = view.frame
        self.cameraViewModel.preview.videoGravity = .resizeAspectFill
    }
    
}
