//
//  APIClient.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/11/2021.
//

import SwiftUI

/// ### APIClient Helper struct
/// it is responsible for the `CRUD` operations
/// on the `API` web service
public final class EVIOAPIClient: ObservableObject {
    
    // MARK: - STATIC PROPERTIES
    // the shared property that makes this struct a singleton
    public static let shared: EVIOAPIClient = EVIOAPIClient()
    
    // the server being used
    @Published public var serverInUse: String
    // the timeout being used for the url requests
    @Published public var timeoutInUse: String
    
    // MARK: - PUBLIC PROPERTIES
    // the headers used by the app
    public var headers: EVIOHeaders = EVIOHeaders(apiKey: nil, evioAppVersion: nil, mobileBrand: nil, mobileModel: nil, mobileVersion: nil, refreshToken: nil, token: nil)
    // the server url being used in production
    public var serverUrl: EVIOServerAddresses = .prod {
        didSet {
            // once this variable is set we ask the root view model to update the server url property
            self.serverInUse = self.serverUrl.description
        }
    }
    
    // MARK: - PRIVATE PROPERTIES
    #if DEBUG
    // the timeout for the url requests being used in debug
    public var timeout: TimeInterval = .timeoutForDevelopment {
        didSet {
            // once this variable is set we ask the root view model to update the timeout property
            self.timeoutInUse = "\(Int(self.timeout)) second\(self.timeout == 1 ? "" : "s")"
        }
    }
    #else
    // the timeout for the url requests being used in production
    public var timeout: TimeInterval = .timeoutForProduction {
        didSet {
            // once this variable is set we ask the root view model to update the timeout property
            self.timeoutInUse = "\(Int(self.timeout)) second\(self.timeout == 1 ? "" : "s")"
        }
    }
    #endif
    // a list that contains all the url tasks
    private var runningTasks: [URLSessionDataTask]
    private let decoder: JSONDecoder
    
    // MARK: - INIT
    public init() {
        // initialize the list as an empty list
        self.runningTasks = []
        self.decoder = JSONDecoder()
        self.serverInUse = self.serverUrl.description
        self.timeoutInUse = "\(Int(self.timeout)) second\(self.timeout == 1 ? "" : "s")"
    }
    
    // MARK: - PUBLIC METHODS
    /// # METHOD TO LOGOUT AN USER FROM THE WEB SERVICE
    /// - Parameter completion: the callback to be executed once the server responds to the request
    public func logout(completion: @escaping (EVIOServerMessage?, EVIOServerMessage?, Int?) -> Void) {
        _ = self.patchRequest(urlString: .logoutEndpoint, params: [:]) { response in
            // checks whether the response object inside the main response object exist, checks if the status code is equal to 400 and if the data object exists
            if let res = response.response, res.statusCode == HTTPStatusCode.badRequest, let data = response.data {
                do {
                    // if true then attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    // the message object is sent back if the decoding process does not fail
                    completion(nil, message, nil)
                } catch {
                    // Otherwise the catch block is executed and gets an error object automatically which is then sent back
                    completion(nil, nil, res.statusCode)
                }
            } else if let res = response.response, res.statusCode == HTTPStatusCode.ok, let data = response.data {
                do {
                    // if true then it attempts to decode the message object from the data object
                    let message: EVIOServerMessage = try JSONDecoder().decode(EVIOServerMessage.self, from: data)
                    // the message object is sent back if the decoding does not fail
                    completion(message, nil, nil)
                } catch {
                    // Otherwise the catch block is executed calling the completion block passing everything as nil and the status code as optional
                    completion(nil, nil, response.response?.statusCode)
                }
            } else {
                // The response's status code is sent back if it exists
                completion(nil, nil, response.response?.statusCode)
            }
        }
    }
    
    /// # Method used to perform `GET` requests on the web service
    /// This methods takes two parameters:
    ///     - `urlString`, the url that the method should call
    ///     - `completion`, the complition block to fire when a response is received from the web service
    ///     The `completion` parameter will be given an object of type ``EVIOHttpResponse``
    /// - Parameters:
    ///   - urlString: a string representing the url that the method should call
    ///   - params: the body of the request to be sent (defraults to nil)
    ///   - completion: the completion block to fire upon response received
    /// - Returns: an object of type URLSessionDataTask representing the url request being made or nil if an error occurrs
    public func getRequest(urlString: String, params: Any? = nil, completion: @escaping (EVIOHttpResponse) -> Void) -> URLSessionDataTask? {
        
        // Check if the url is valid
        guard let url = URL(string: "\(self.serverUrl.rawValue)\(urlString)") else {
            /* if not valid creates a response object with the custom error invalidUrl
                and fires the completion block passing the response object
                and then returns from the method without executing anything else
            */
            let response = EVIOHttpResponse(error: EVIOError.invalidUrl, response: nil, data: nil)
            completion(response)
            return nil
        }
        var request = URLRequest(url: url)
        // Ignores remote and local caches
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        request.httpMethod = .get
        request.allHTTPHeaderFields = self.headers.toDictionary()
        request.timeoutInterval = self.timeout
        if let params = params, let body = try? JSONSerialization.data(withJSONObject: params, options: []) {
            request.httpBody = body
        }
        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] (data, response, error) in
            let evioResponse = EVIOHttpResponse(error: error, response: response, data: data)
            if let response = response as? HTTPURLResponse, response.statusCode == 400 {
                if let data = data, let message: EVIOServerMessage = try? self.decoder.decode(EVIOServerMessage.self, from: data) {
                    if message.code == .userNotValid {
                        NotificationCenter.default.post(name: .userInvalid, object: nil, userInfo: nil)
                    } else if message.code == .appNeedsUpdate {
                        NotificationCenter.default.post(name: .userNeedsToUpdateApp, object: nil, userInfo: nil)
                    }
                }
            }
            completion(evioResponse)
        }
        self.runningTasks.append(task)
        task.resume()
        return task
    }
    
    /// # Method used to perform `POST` requests on the web service
    /// This methods takes three parameters:
    ///     - `urlString`, the url that the method should call
    ///     - `params`, the body of the request to be sent to the web service
    ///     - `completion`, the complition block to fire when a response is received from the web service
    ///     The `completion` parameter will be given an object of type ``EVIOHttpResponse``
    /// - Parameters:
    ///   - urlString: a string representing the url that the method should call
    ///   - params: the body of the request to be sent
    ///   - completion: the completion block to fire upon response received
    /// - Returns: an object of type URLSessionDataTask representing the url request being made or nil if an error occurrs
    public func postRequest(urlString: String, params: Any, completion: @escaping (EVIOHttpResponse) -> Void) -> URLSessionDataTask? {
        
        // Check if the url is valid
        guard let url = URL(string: "\(self.serverUrl.rawValue)\(urlString)") else {
            /* if not valid creates a response object with the custom error invalidUrl
                and fires the completion block passing the response object
                and then returns from the method without executing anything else
            */
            let response = EVIOHttpResponse(error: EVIOError.invalidUrl, response: nil, data: nil)
            completion(response)
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = .post
        request.allHTTPHeaderFields = self.headers.toDictionary()
        request.timeoutInterval = self.timeout
        guard let httpBody = try? JSONSerialization.data(withJSONObject: params, options: []) else { return nil }
        request.httpBody = httpBody
        // Ignores remote and local caches
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] (data, response, error) in
            let evioResponse = EVIOHttpResponse(error: error, response: response, data: data)
            if let response = response as? HTTPURLResponse, response.statusCode == 400 {
                if let data = data, let message: EVIOServerMessage = try? self.decoder.decode(EVIOServerMessage.self, from: data) {
                    if message.code == .userNotValid {
                        NotificationCenter.default.post(name: .userInvalid, object: nil, userInfo: nil)
                    } else if message.code == .appNeedsUpdate {
                        NotificationCenter.default.post(name: .userNeedsToUpdateApp, object: nil, userInfo: nil)
                    }
                }
            }
            completion(evioResponse)
        }
        self.runningTasks.append(task)
        task.resume()
        return task
    }
    
    /// # Method used to perform `PUT` requests on the web service
    /// This methods takes three parameters:
    ///     - `urlString`, the url that the method should call
    ///     - `params`, the body of the request to be sent to the web service
    ///     - `completion`, the complition block to fire when a response is received from the web service
    ///     The `completion` parameter will be given an object of type ``EVIOHttpResponse``
    /// - Parameters:
    ///   - urlString: a string representing the url that the method should call
    ///   - params: the body of the request to be sent
    ///   - completion: the completion block to fire upon response received
    /// - Returns: an object of type URLSessionDataTask representing the url request being made or nil if an error occurrs
    public func putRequest(urlString: String, params: Any, completion: @escaping (EVIOHttpResponse) -> Void) -> URLSessionDataTask? {
        
        // Check if the url is valid
        guard let url = URL(string: "\(self.serverUrl.rawValue)\(urlString)") else {
            /* if not valid creates a response object with the custom error invalidUrl
                and fires the completion block passing the response object
                and then returns from the method without executing anything else
            */
            let response = EVIOHttpResponse(error: EVIOError.invalidUrl, response: nil, data: nil)
            completion(response)
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = .put
        request.allHTTPHeaderFields = self.headers.toDictionary()
        request.timeoutInterval = self.timeout
        guard let httpBody = try? JSONSerialization.data(withJSONObject: params, options: []) else { return nil }
        request.httpBody = httpBody
        // Ignores remote and local caches
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] (data, response, error) in
            let evioResponse = EVIOHttpResponse(error: error, response: response, data: data)
            if let response = response as? HTTPURLResponse, response.statusCode == 400 {
                if let data = data, let message: EVIOServerMessage = try? self.decoder.decode(EVIOServerMessage.self, from: data) {
                    if message.code == .userNotValid {
                        NotificationCenter.default.post(name: .userInvalid, object: nil, userInfo: nil)
                    } else if message.code == .appNeedsUpdate {
                        NotificationCenter.default.post(name: .userNeedsToUpdateApp, object: nil, userInfo: nil)
                    }
                }
            }
            completion(evioResponse)
        }
        self.runningTasks.append(task)
        task.resume()
        return task
    }
    
    /// # Method used to perform `PATCH` requests on the web service
    /// This methods takes three parameters:
    ///     - `urlString`, the url that the method should call
    ///     - `params`, the body of the request to be sent to the web service
    ///     - `completion`, the complition block to fire when a response is received from the web service
    ///     The `completion` parameter will be given an object of type ``EVIOHttpResponse``
    /// - Parameters:
    ///   - urlString: a string representing the url that the method should call
    ///   - params: the body of the request to be sent
    ///   - completion: the completion block to fire upon response received
    /// - Returns: an object of type URLSessionDataTask representing the url request being made or nil if an error occurrs
    public func patchRequest(urlString: String, params: Any, completion: @escaping (EVIOHttpResponse) -> Void) -> URLSessionDataTask? {
        
        // Check if the url is valid
        guard let url = URL(string: "\(self.serverUrl.rawValue)\(urlString)") else {
            /* if not valid creates a response object with the custom error invalidUrl
                and fires the completion block passing the response object
                and then returns from the method without executing anything else
            */
            let response = EVIOHttpResponse(error: EVIOError.invalidUrl, response: nil, data: nil)
            completion(response)
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = .patch
        request.allHTTPHeaderFields = self.headers.toDictionary()
        request.timeoutInterval = self.timeout
        guard let httpBody = try? JSONSerialization.data(withJSONObject: params, options: []) else { return nil }
        request.httpBody = httpBody
        // Ignores remote and local caches
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] (data, response, error) in
            let evioResponse = EVIOHttpResponse(error: error, response: response, data: data)
            if let response = response as? HTTPURLResponse, response.statusCode == 400 {
                if let data = data, let message: EVIOServerMessage = try? self.decoder.decode(EVIOServerMessage.self, from: data) {
                    if message.code == .userNotValid {
                        NotificationCenter.default.post(name: .userInvalid, object: nil, userInfo: nil)
                    } else if message.code == .appNeedsUpdate {
                        NotificationCenter.default.post(name: .userNeedsToUpdateApp, object: nil, userInfo: nil)
                    }
                }
            }
            completion(evioResponse)
        }
        self.runningTasks.append(task)
        task.resume()
        return task
    }
    
    /// # Method used to perform `DELETE` requests on the web service
    /// This methods takes three parameters:
    ///     - `urlString`, the url that the method should call
    ///     - `params`, the body of the request to be sent to the web service
    ///     - `completion`, the complition block to fire when a response is received from the web service
    ///     The `completion` parameter will be given an object of type ``EVIOHttpResponse``
    /// - Parameters:
    ///   - urlString: a string representing the url that the method should call
    ///   - params: the body of the request to be sent
    ///   - completion: the completion block to fire upon response received
    /// - Returns: an object of type URLSessionDataTask representing the url request being made or nil if an error occurrs
    public func deleteRequest(urlString: String, params: Any, completion: @escaping (EVIOHttpResponse) -> Void) -> URLSessionDataTask? {
        
        // Check if the url is valid
        guard let url = URL(string: "\(self.serverUrl.rawValue)\(urlString)") else {
            /* if not valid creates a response object with the custom error invalidUrl
                and fires the completion block passing the response object
                and then returns from the method without executing anything else
            */
            let response = EVIOHttpResponse(error: EVIOError.invalidUrl, response: nil, data: nil)
            completion(response)
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = .delete
        request.allHTTPHeaderFields = self.headers.toDictionary()
        request.timeoutInterval = self.timeout
        guard let httpBody = try? JSONSerialization.data(withJSONObject: params, options: []) else { return nil }
        request.httpBody = httpBody
        // Ignores remote and local caches
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] (data, response, error) in
            let evioResponse = EVIOHttpResponse(error: error, response: response, data: data)
            if let response = response as? HTTPURLResponse, response.statusCode == 400 {
                if let data = data, let message: EVIOServerMessage = try? self.decoder.decode(EVIOServerMessage.self, from: data) {
                    if message.code == .userNotValid {
                        NotificationCenter.default.post(name: .userInvalid, object: nil, userInfo: nil)
                    } else if message.code == .appNeedsUpdate {
                        NotificationCenter.default.post(name: .userNeedsToUpdateApp, object: nil, userInfo: nil)
                    }
                }
            }
            completion(evioResponse)
        }
        self.runningTasks.append(task)
        task.resume()
        return task
        
    }
    
    /// # METHOD THAT WILL CANCEL ALL RUNNING URL REQUESTS WHEN EXECUTED
    public func cancelAllRunningTasks() {
        // loops through the runningTasks array and filters out the ones running
        for task in self.runningTasks where task.state == .running {
            // and cancels them on by one
            task.cancel()
        }
        // removes all tasks from the array
        self.runningTasks.removeAll()
    }
    
}
