//
//  EVIOHorizontalEvSelectionView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 18/07/2022.
//

import SwiftUI
import Kingfisher

public struct EVIOHorizontalEvSelectionView: View {
    
    @Binding var resetComponent: Bool
    @StateObject private var viewModel: EVIOHorizontalEvSelectionViewViewModel
    
    public init(selectedEv: EVIOEv?, resetComponent: Binding<Bool>, completion: @escaping (EVIOEv?) -> Void, popUpAction: (() -> Void)? = nil, allowAnonymous: Bool = false) {
        self._resetComponent = resetComponent
        self._viewModel = StateObject(wrappedValue: EVIOHorizontalEvSelectionViewViewModel(selectedEv: selectedEv, allowAnonymous: allowAnonymous, completion: completion, popUpAction: popUpAction))
    }
    
    public var body: some View {
        VStack(spacing: self.viewModel.isExpanded ? 5 : .zero) {
            EVIOToggle(isOn: self.$viewModel.isExpanded, title: self.viewModel.languageManager.evsSelectEvTitle)
            if self.viewModel.isExpanded {
                EVIOHorizontalEVSelectionViewListView(evs: self.$viewModel.evs, viewModel: self.viewModel)
            }
        }
        .onAppear {
            self.viewModel.getEvs()
        }
        .onReceive(NotificationCenter.default.publisher(for: .evsUpdated, object: nil), perform: { _ in
            self.viewModel.getEvs()
        })
        .onChange(of: self.resetComponent) { _ in
            guard self.resetComponent else { return }
            self.viewModel.reset()
            self.resetComponent = false
        }
    }
    
}

public final class EVIOHorizontalEvSelectionViewViewModel: ObservableObject {
    
    @Published public var evs: [SelectEv]
    @Published public var isExpanded: Bool
    private var selectedEv: EVIOEv?
    private var completion: ((EVIOEv?) -> Void)
    public let languageManager: EVIOLanguage
    public var popUpAction: (() -> Void)?
    private let allowAnonymous: Bool
    
    public init(selectedEv: EVIOEv?, allowAnonymous: Bool, completion: @escaping (EVIOEv?) -> Void, popUpAction: (() -> Void)? = nil) {
        self.allowAnonymous = allowAnonymous
        self.popUpAction = popUpAction
        self.selectedEv = selectedEv
        self.evs = []
        self.completion = completion
        self.isExpanded = false
        self.languageManager = EVIOLanguageManager.shared.language
        self.getEvs()
    }
    
    public func getEvs() {
        self.evs = (EVIOStorageManager.shared.getUserEvs() ?? []).map({ SelectEv(isSelected: selectedEv?.id == $0.id, ev: $0) })
        if self.allowAnonymous {
            self.evs.insert(SelectEv(ev: EVIOEv.anonymous), at: .zero)
        }
    }
    
    public func evSelected(_ ev: SelectEv) {
        self.evs.forEach({ $0.isSelected = $0.ev?.id == ev.ev?.id ? !$0.isSelected : false })
        self.selectedEv = ev.isSelected ? ev.ev : nil
        self.completion(self.selectedEv)
    }
    
    public func reset() {
        self.evs.forEach({ $0.isSelected = false })
        self.selectedEv = nil
        self.isExpanded = false
    }
    
}

public struct EVIOHorizontalEVSelectionViewListView: View {
    
    @Binding public var evs: [SelectEv]
    public let viewModel: EVIOHorizontalEvSelectionViewViewModel
    public let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(evs: Binding<[SelectEv]>, viewModel: EVIOHorizontalEvSelectionViewViewModel) {
        self._evs = evs
        self.viewModel = viewModel
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        if !self.evs.isEmpty {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(self.evs) { ev in
                        EVIOHorizontalEVSelectionViewListItemView(ev: ev)
                            .onTapGesture {
                                self.viewModel.evSelected(ev)
                                self.feedbackGenerator.impactOccurred()
                            }
                    }
                }
            }
        } else {
            VStack(spacing: 10) {
                Text(self.viewModel.languageManager.generalNoEvs)
                    .modifier(EVIONoObjectsDefaultSubtitleModifier(color: .primaryTextColor, lineLimit: nil, textAlignment: .center))
                if let action = self.viewModel.popUpAction {
                    EVIOMainButton(disabled: .constant(false), title: self.viewModel.languageManager.generalGoToMyEvs, action: action)
                        .padding(.horizontal, 20)
                }
            }
        }
    }
    
}

public struct EVIOHorizontalEVSelectionViewListItemView: View {
    
    @ObservedObject var ev: SelectEv
    
    public var name: String {
        if let brand = self.ev.ev?.brand, let model = self.ev.ev?.model, let licensePlate = self.ev.ev?.licensePlate {
            return "\(brand)\n\(model)\n\(licensePlate)"
        } else if let brand = self.ev.ev?.brand, let model = self.ev.ev?.model {
            return "\(brand)\n\(model)"
        } else if let brand = self.ev.ev?.brand {
            return brand
        } else if let model = self.ev.ev?.model {
            return model
        } else if let licensePlate = self.ev.ev?.licensePlate {
            return licensePlate
        } else {
            return .noValue
        }
    }
    
    public init(ev: SelectEv) {
        self._ev = ObservedObject(wrappedValue: ev)
    }
    
    public var body: some View {
        VStack(spacing: 5) {
            Image(uiImage: self.ev.image)
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 53, height: 53)
                .clipShape(Circle())
                .shadow(color: self.ev.isSelected ? .gray : .transparent, radius: 3, x: .zero, y: .zero)
                .padding(5)
            Text(self.name)
                .modifier(EVIOChargerDistanceModifier(color: .primaryTextColor, lineLimit: nil))
        }
        .opacity(self.ev.isSelected ? 1 : 0.5)
    }
    
}

public final class SelectEv: ObservableObject, Identifiable {
    
    @Published public var isSelected: Bool
    @Published public var image: UIImage
    public var ev: EVIOEv?
    public let id: UUID
    
    public init(isSelected: Bool = false, ev: EVIOEv?) {
        self.id = UUID()
        self.isSelected = isSelected
        self.ev = ev
        self.image = UIImage(named: .defaultEvImage)!
        self.getEvImage()
    }
    
    private func getEvImage() {
        guard let parsedString: String = self.ev?.imageContent?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url: URL = URL(string: parsedString) else { return }
        KingfisherManager.shared.retrieveImage(with: url) { result in
            if let image = try? result.get().image {
                self.image = image
            } else {
                self.image = UIImage(named: .defaultEvImage)!
            }
        }
    }
    
}
