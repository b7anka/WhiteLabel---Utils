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
        self.cameraViewModel.preview  = AVCaptureVideoPreviewLayer(session: self.cameraViewModel.session)
        self.cameraViewModel.preview.frame = view.frame
        view.layer.addSublayer(self.cameraViewModel.preview)
        self.cameraViewModel.session.startRunning()
        return view
    }
    
    public func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)
        self.cameraViewModel.preview.frame = view.frame
        self.cameraViewModel.preview.videoGravity = .resizeAspectFill
    }
    
}
