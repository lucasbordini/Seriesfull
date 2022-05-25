//
//  SearchShowPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SearchShowPresentationLogic {
    func presentScreenValues()
}

final class SearchShowPresenter: SearchShowPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: SearchShowDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = SearchShow.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
