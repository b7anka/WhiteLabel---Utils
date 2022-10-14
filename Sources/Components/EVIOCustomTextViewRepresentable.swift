//
//  EVIOCustomTextViewRepresentable.swift
//  evio
//
//  Created by João Moreira on 07/10/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOCustomTextViewRepresentable: UIViewRepresentable {
    
    @Binding var text: String
    let placeHolder: String
    
    public init(text: Binding<String>, placeHolder: String) {
        self._text = text
        self.placeHolder = placeHolder
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIOCustomTextViewRepresentable>) -> UITextView {
        let textView: UITextView = UITextView()
        textView.backgroundColor = Color.fourthBackground.uiColor
        textView.textColor = Color.primaryTextColor.uiColor
        textView.font = UIFont(name: .appFontSemiBold, size: 14) ?? UIFont.systemFont(ofSize: 14, weight: .semibold)
        textView.delegate = context.coordinator
        return textView
    }
    
    public func updateUIView(_ textView: UITextView, context: UIViewRepresentableContext<EVIOCustomTextViewRepresentable>) {
        textView.text = self.text
    }
    
    public func makeCoordinator() -> EVIOCustomTextViewCoordinator {
        return EVIOCustomTextViewCoordinator(parent: self)
    }
    
}

public class EVIOCustomTextViewCoordinator: NSObject, UITextViewDelegate {
    
    var parent: EVIOCustomTextViewRepresentable
    
    init(parent: EVIOCustomTextViewRepresentable) {
        self.parent = parent
    }
    
    public func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == self.parent.placeHolder {
            textView.text = ""
        }
    }
    
    public func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = self.parent.placeHolder
        }
    }
    
    public func textViewDidChange(_ textView: UITextView) {
        self.parent.text = textView.text
    }
    
}
