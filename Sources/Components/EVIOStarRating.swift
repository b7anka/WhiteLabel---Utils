//
//  EVIOStarRating.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import Cosmos
import SwiftUI
import Combine

public final class EVIOStarRating: CosmosView {
    
    private let viewModel: EVIOStarRatingViewModel?
    private let didUpdateRating: ((Double) -> Void)
    private var cancellables: Set<AnyCancellable>
    
    public init(viewModel: EVIOStarRatingViewModel? = nil, didUpdateRating: @escaping (Double) -> Void, totalStars: Int, starSize: CGFloat, filledColor: UIColor, emptyColor: UIColor, emptyBorderColor: UIColor, emptyBorderWidth: CGFloat, filledBorderColor: UIColor, starMargin: CGFloat, fillMode: StarFillMode, disabled: Bool, rating: Double) {
        self.viewModel = viewModel
        self.didUpdateRating = didUpdateRating
        var settings: CosmosSettings = CosmosSettings()
        settings.totalStars = totalStars
        settings.starSize = starSize
        settings.filledColor = filledColor
        settings.emptyColor = emptyColor
        settings.emptyBorderColor = emptyBorderColor
        settings.emptyBorderWidth = emptyBorderWidth
        settings.filledBorderColor = filledBorderColor
        settings.starMargin = starMargin
        settings.fillMode = fillMode
        settings.updateOnTouch = true
        settings.passTouchesToSuperview = false
        settings.minTouchRating = .zero
        settings.filledImage = UIImage(named: .filledStar)
        settings.emptyImage = UIImage(named: .emptyStar)
        self.cancellables = []
        super.init(frame: .zero, settings: settings)
        self.didTouchCosmos = self.didUpdateRating
        //self.didFinishTouchingCosmos = self.didUpdateRating
        self.isUserInteractionEnabled = !disabled
        self.rating = rating
        self.setupViewModelListeners()
    }
    
    deinit {
        self.cancellables.forEach { cancellable in
            cancellable.cancel()
        }
        self.cancellables.removeAll()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewModelListeners() {
        self.viewModel?.$rating
            .sink(receiveValue: { [weak self] rating in
                guard let self = self else { return }
                self.rating = rating
            })
            .store(in: &cancellables)
    }
    
}

public final class EVIOStarRatingViewModel: ObservableObject {
    
    @Published public var rating: Double
    
    public init(rating: Double) {
        self.rating = rating
    }
    
}
