//
//  EpisodeDetailPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 20/05/22.
//

import UIKit

protocol EpisodeDetailPresentationLogic {
    func presentScreenValues()
}

final class EpisodeDetailPresenter: EpisodeDetailPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: EpisodeDetailDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = EpisodeDetail.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
