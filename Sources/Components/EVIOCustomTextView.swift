//
//  EVIOCustomTextView.swift
//  GroceryList
//
//  Created by João Moreira on 12/06/2021.
//

import SwiftUI

public struct EVIOCustomTextView: UIViewRepresentable {
    
    private let attributtedText: NSAttributedString
    private let linkColor: UIColor
    private let completion: ((URL) -> Void)
    
    public init(attributtedText: NSAttributedString, linkColor: UIColor, completion: @escaping (URL) -> Void) {
        self.attributtedText = attributtedText
        self.linkColor = linkColor
        self.completion = completion
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIOCustomTextView>) -> UITextView {
        let uiTextView = UITextView()
        let linkAttributes: [NSMutableAttributedString.Key: Any] = [
            .foregroundColor: self.linkColor
        ]
        uiTextView.linkTextAttributes = linkAttributes
        uiTextView.showsVerticalScrollIndicator = false
        uiTextView.showsHorizontalScrollIndicator = false
        uiTextView.delegate = context.coordinator
        uiTextView.backgroundColor = .clear
        uiTextView.isEditable = false
        return uiTextView
    }
    
    public func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<EVIOCustomTextView>) {
        uiView.attributedText = self.attributtedText
    }
    
    public func makeCoordinator() -> TMCustomTextViewCoordinator {
        return TMCustomTextViewCoordinator(completion: self.completion)
    }
    
}

public final class TMCustomTextViewCoordinator: NSObject, UITextViewDelegate {
    
    private let completion: ((URL) -> Void)
    
    public init(completion: @escaping (URL) -> Void) {
        self.completion = completion
    }
    
    public func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        self.completion(URL)
        return false
    }
    
}
