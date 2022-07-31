//
//  EVIONetworkManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/11/2021.
//

import SwiftUI
import Combine
import Hyperconnectivity

/// # SINGLETON CLASS THAT HANDLES
/// # THE LISTENING OF THE INTERNET CONNECTIVITY OF THE USER'S DEVICE
public final class EVIONetworkManager: ObservableObject {
    
    // MARK: - STATIC PROPERTIES
    public static let shared: EVIONetworkManager = EVIONetworkManager()
    
    // MARK: - PUBLISHED PROPERTIES
    @Published public var hasInternetConnection: Bool
    
    // MARK: - PRIVATE PROPERTIES
    private var cancellable: AnyCancellable?
    private var connectivityResult: ConnectivityPublisher.Output?
    
    public init() {
        self.cancellable = nil
        self.connectivityResult = nil
        self.hasInternetConnection = true
    }
    
    // MARK: - DEINIT
    deinit {
        self.cancellable?.cancel()
    }
    
    // MARK: - PUBLIC METHODS
    
    /// # STARTS LISTENING FOR THE INTERNET CONNECTIVITY OF THE USER'S DEVICE
    public func beginListening() {
        // sets the cancellable to be the HyperConnectivity.Publisher() object
        self.cancellable = Hyperconnectivity.Publisher()
        // tells the published to send the changes on the main queue
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in
                // this is just for debug purposes
                // but it is possible to execute code in here but in this case it's not needed
                print("received completion")
            }, receiveValue: { [weak self] connectivityResult in
                // checks whether self exits and if not returns from the method without executing anything else
                guard let self = self else {return}
                // calls the handle result function passing the parameter result to be the one received
                self.handleResult(result: connectivityResult)
            })
    }
    
    /// # THIS METHOD CHECKS WHETHER THE USER'S DEVICE IS CONNECTED VIA WI-FI
    /// - Returns: a bool indicating if the user's device is connected view wi-fi
    public func isConnectedToWiFi() -> Bool {
        // checks whether isExpensive property exist and if not returns false and stops
        guard let isExpensive = self.connectivityResult?.isExpensive else {return false}
        // returns the inverse value of the isExpensive property meaning that isExpensive represents the device's data plan
        return !isExpensive
    }
    
    // MARK: - PRIVATE METHODS
    
    /// # THIS METHOD HANDLES
    /// - Parameter result: the result of the connectivity callback to be evaluated
    private func handleResult(result: ConnectivityPublisher.Output) {
        // sets the class property connectivityResult to be the same as the one received
        self.connectivityResult = result
        // if user's device is connected to the internet
        if result.isConnected {
            // than sets the hasInternetConnection property to true
            self.hasInternetConnection = true
        } else {
            // else sets the hasInternetConnection property to false
            self.hasInternetConnection = false
        }
    }
    
}
