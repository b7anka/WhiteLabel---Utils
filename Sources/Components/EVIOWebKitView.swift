//
//  EVIOWebKitView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/04/2022.
//

import SwiftUI
import WebKit
import SafariServices

public struct EVIOWebKitView: UIViewRepresentable {
    
    let url: URL
    let webkit: WKWebView
    let webViewDidChangeUrl: ((URL?) -> Void)?
    
    public init(url: URL, webViewDidChangeUrl: ((URL?) -> Void)? = nil) {
        self.webViewDidChangeUrl = webViewDidChangeUrl
        self.url = url
        let configuration = WKWebViewConfiguration()
        let source: String = "var meta = document.createElement('meta'); meta.name = 'viewport'; meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'; var head = document.getElementsByTagName('head')[0]; head.appendChild(meta);"
        //let removeSocialButtonsJs = "const elements = document.querySelectorAll('.login-external'); elements.forEach(element => { element.remove(); });"
        let script: WKUserScript = WKUserScript(source: source, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        //let removeSocialButtonsScript = WKUserScript(source: removeSocialButtonsJs, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        configuration.userContentController.addUserScript(script)
        //configuration.userContentController.addUserScript(removeSocialButtonsScript)
        //configuration.applicationNameForUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1"
        configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        configuration.websiteDataStore.httpCookieStore.getAllCookies { cookies in
            for c in cookies {
                configuration.websiteDataStore.httpCookieStore.delete(c)
            }
        }
        self.webkit = WKWebView(frame: .zero, configuration: configuration)
        self.webkit.backgroundColor = .white
        self.webkit.allowsBackForwardNavigationGestures = true
        self.webkit.scrollView.showsVerticalScrollIndicator = false
        self.webkit.scrollView.showsHorizontalScrollIndicator = false
        
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        self.webkit.uiDelegate = context.coordinator
        self.webkit.navigationDelegate = context.coordinator
        let request = URLRequest(url: self.url)
        self.webkit.load(request)
        return self.webkit
    }
    
    public func updateUIView(_ webView: WKWebView, context: Context) {}
    
    public func makeCoordinator() -> EVIOWebKitViewCoordinator {
        EVIOWebKitViewCoordinator(parentView: self)
    }
}

public final class EVIOWebKitViewCoordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
    
    private let parentView: EVIOWebKitView!
    private var webViewObserver: NSKeyValueObservation!
    
    public init(parentView: EVIOWebKitView) {
        self.parentView = parentView
        self.webViewObserver = parentView.webkit.observe(\.url, options: .new) { webView, _ in
            if let urlChanged = parentView.webViewDidChangeUrl {
                print(webView.url?.absoluteString ?? .empty)
                urlChanged(webView.url)
            }
        }
    }
    
    public func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if let frame = navigationAction.targetFrame,
           frame.isMainFrame {
            return nil
        }
        /* guard let topViewController = UIApplication.shared.rootViewController, let url = navigationAction.request.url else { return nil }
        let safariVC = SFSafariViewController(url: url)
        topViewController.present(safariVC, animated: true) */
        webView.load(navigationAction.request)
        return nil
    }
    
    public func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow)
            return
        }
        if url.queryParameters.contains(where: { k, _ in
            return k == .idGoCode
        }) {
            decisionHandler(.cancel)
            return
        } else if url.queryParameters.contains(where: { k, _ in
            return k == .idGoError
        }) {
            decisionHandler(.cancel)
            let request: URLRequest = URLRequest(url: self.parentView.url)
            webView.load(request)
            return
        } else if url.absoluteString == .registrationReturnUrl {
            decisionHandler(.cancel)
            let request: URLRequest = URLRequest(url: self.parentView.url)
            webView.load(request)
            return
        }
        decisionHandler(.allow)
    }
    
}
