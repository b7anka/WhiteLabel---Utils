//
//  EVIOCameraViewViewModel.swift
//  My Notes
//
//  Created by João Moreira on 27/03/2021.
//

import SwiftUI
import AVFoundation

final public class EVIOCameraViewViewModel: NSObject, ObservableObject {
    
    @Published public var isTaken: Bool
    @Published public var session: AVCaptureSession
    @Published public var preview: AVCaptureVideoPreviewLayer!
    @Published public var isSaved: Bool
    @Published public var permissionsNotGiven: Bool
    @Published public var flashLightOn: Bool
    public let completion: ((String) -> Void)
    public let feedbackGenerator: UIImpactFeedbackGenerator
    public var device: AVCaptureDevice?
    
    public init(completion: @escaping (String) -> Void) {
        self.flashLightOn = false
        self.device = AVCaptureDevice.default(for: AVMediaType.video)
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self.isTaken = false
        self.session = AVCaptureSession()
        self.isSaved = false
        self.permissionsNotGiven = false
        self.completion = completion
    }
    
    public func checkPermission() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            switch AVCaptureDevice.authorizationStatus(for: .video) {
            case.authorized:
                self.setup()
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video) { (resul) in
                    if resul {
                        self.setup()
                    }
                }
            default:
                self.permissionsNotGiven = true
            }
        }
    }
    
    private func setup() {
        do {
            self.session.beginConfiguration()
            if let device = AVCaptureDevice.default(for: .video) {
                let input = try AVCaptureDeviceInput(device: device)
                if self.session.canAddInput(input) {
                    self.session.addInput(input)
                }
            } else {
                print("not possible to start camera")
            }
            let metadataOutput = AVCaptureMetadataOutput()
            if self.session.canAddOutput(metadataOutput) {
                self.session.addOutput(metadataOutput)
                metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
                metadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
            }
            self.session.commitConfiguration()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    public func toggleFlashLight() {
        guard let device = self.device, device.hasTorch else { return }
        do {
            try device.lockForConfiguration()
            if device.torchMode == .on {
                device.torchMode = .off
                device.unlockForConfiguration()
                self.flashLightOn = false
            } else {
                do {
                    try device.setTorchModeOn(level: 1.0)
                    device.unlockForConfiguration()
                    self.flashLightOn = true
                } catch {
                    print(error)
                    device.unlockForConfiguration()
                    self.flashLightOn = false
                }
            }
        } catch {
            print(error)
            device.unlockForConfiguration()
            self.flashLightOn = false
        }
    }
    
}

// MARK: - AVCAPTURE METADATA OUTPUT OBJECTS DELEGATE METHODS
extension EVIOCameraViewViewModel: AVCaptureMetadataOutputObjectsDelegate {
    
    public func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if let object = metadataObjects.first as? AVMetadataMachineReadableCodeObject {
            if object.type == AVMetadataObject.ObjectType.qr, let string = object.stringValue {
                self.session.stopRunning()
                self.completion(string)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.session.startRunning()
                }
            }
        }
    }
    
}
