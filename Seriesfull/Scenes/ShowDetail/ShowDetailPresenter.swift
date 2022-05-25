//
//  ShowDetailPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol ShowDetailPresentationLogic {
    func presentScreenValues()
}

final class ShowDetailPresenter: ShowDetailPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: ShowDetailDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = ShowDetail.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
