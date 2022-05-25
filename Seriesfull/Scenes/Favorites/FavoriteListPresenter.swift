//
//  FavoritesPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol FavoritesPresentationLogic {
    func presentScreenValues()
}

final class FavoriteListPresenter: FavoritesPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: FavoritesDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = Favorites.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
