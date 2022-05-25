//
//  ShowDetailInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol ShowDetailBusinessLogic {
    func loadScreenValues()
}

protocol ShowDetailDataStore {
    // var name: String { get set }
}

final class ShowDetailInteractor: ShowDetailBusinessLogic, ShowDetailDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: ShowDetailPresentationLogic?
    let worker: ShowDetailWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: ShowDetailWorkerLogic = ShowDetailWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
