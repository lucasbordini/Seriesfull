//
//  SettingsInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SettingsBusinessLogic {
    func loadScreenValues()
}

protocol SettingsDataStore {
    // var name: String { get set }
}

final class SettingsInteractor: SettingsBusinessLogic, SettingsDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: SettingsPresentationLogic?
    let worker: SettingsWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: SettingsWorkerLogic = SettingsWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
