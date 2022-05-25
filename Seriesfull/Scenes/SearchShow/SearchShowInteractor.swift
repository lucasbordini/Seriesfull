//
//  SearchShowInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SearchShowBusinessLogic {
    func loadScreenValues()
}

protocol SearchShowDataStore {
    // var name: String { get set }
}

final class SearchShowInteractor: SearchShowBusinessLogic, SearchShowDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: SearchShowPresentationLogic?
    let worker: SearchShowWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: SearchShowWorkerLogic = SearchShowWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
