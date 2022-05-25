//
//  EpisodeDetailInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 20/05/22.
//

import UIKit

protocol EpisodeDetailBusinessLogic {
    func loadScreenValues()
}

protocol EpisodeDetailDataStore {
    // var name: String { get set }
}

final class EpisodeDetailInteractor: EpisodeDetailBusinessLogic, EpisodeDetailDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: EpisodeDetailPresentationLogic?
    let worker: EpisodeDetailWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: EpisodeDetailWorkerLogic = EpisodeDetailWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
