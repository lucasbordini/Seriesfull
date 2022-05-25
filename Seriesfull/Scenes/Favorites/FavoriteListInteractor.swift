//
//  FavoritesInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol FavoriteListBusinessLogic {
    func loadScreenValues()
}

protocol FavoriteListDataStore {
    // var name: String { get set }
}

final class FavoriteListInteractor: FavoriteListBusinessLogic, FavoriteListDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: FavoriteListPresentationLogic?
    let worker: FavoriteListWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: FavoriteListWorkerLogic = FavoriteListWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
