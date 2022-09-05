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
        let view: VideoView = VideoView()
        view.previewLayer.session = self.cameraViewModel.session
        view.previewLayer.videoGravity = .resizeAspectFill
        self.cameraViewModel.preview  = view.previewLayer
        // view.layer.addSublayer(self.cameraViewModel.preview)
        self.cameraViewModel.session.startRunning()
        return view
    }
    
    public func updateUIView(_ view: UIView, context: Context) {
        for layer in view.layer.sublayers ?? [] {
            layer.frame = view.bounds
        }
        //        self.cameraViewModel.preview.frame = view.frame
        //        self.cameraViewModel.preview.videoGravity = .resizeAspectFill
    }
    
    final class VideoView: UIView {
        
        override class var layerClass: AnyClass {
            AVCaptureVideoPreviewLayer.self
        }
        
        var previewLayer: AVCaptureVideoPreviewLayer {
            layer as! AVCaptureVideoPreviewLayer
        }
        
    }
    
}
