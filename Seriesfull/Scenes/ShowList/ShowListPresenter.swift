//
//  ShowListPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit

protocol ShowListPresentationLogic {
    func presentScreenValues()
}

final class ShowListPresenter: ShowListPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: ShowListDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = ShowList.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
