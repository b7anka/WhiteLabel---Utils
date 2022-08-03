//
//  EVIOImage.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/01/2022.
//

import SwiftUI
import Kingfisher

public struct EVIOImage: View {
    
    public var urlString: String?
    public var defaultImage: String
    public var aspectRatio: EVIOImageContentMode = .fit
    public var size: CGSize
    @State private var image: UIImage?
    
    public init(urlString: String?, defaultImage: String, aspectRatio: EVIOImageContentMode = .fit, size: CGSize) {
        self.urlString = urlString
        self.defaultImage = defaultImage
        self.aspectRatio = aspectRatio
        self.size = size
    }
    
    public var body: some View {
        if self.aspectRatio == .fill {
            self.imageContent
                .contentShape(Rectangle())
        } else {
            self.imageContent
        }
    }
    
    private var imageContent: some View {
        Image(uiImage: self.image ?? UIImage(named: self.defaultImage)!)
            .resizable()
            .aspectRatio(nil, contentMode: self.aspectRatio == .fit ? .fit : .fill)
            .frame(width: self.aspectRatio == .fit ? nil : self.size.width, height: self.size.height)
            .onAppear {
                self.getImage()
            }
    }
    
    private func getImage() {
        if let parsedString: String = self.urlString?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url: URL = URL(string: parsedString) {
            KingfisherManager.shared.retrieveImage(with: url, options: nil, progressBlock: nil, downloadTaskUpdated: nil) { result in
                if let image = try? result.get().image {
                    self.image = image
                }
            }
        }
    }
    
}
