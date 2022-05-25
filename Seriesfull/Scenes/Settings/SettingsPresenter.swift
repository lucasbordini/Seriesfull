//
//  SettingsPresenter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SettingsPresentationLogic {
    func presentScreenValues()
}

final class SettingsPresenter: SettingsPresentationLogic {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: SettingsDisplayLogic?
    
    // MARK: - Presentation Logic
    
    func presentScreenValues() {
        let viewModel = Settings.Model.ViewModel()
        viewController?.displayScreenValues(viewModel: viewModel)
    }
}
