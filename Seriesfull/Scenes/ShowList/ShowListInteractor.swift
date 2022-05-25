//
//  ShowListInteractor.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit

protocol ShowListBusinessLogic {
    func loadScreenValues()
}

protocol ShowListDataStore {
    // var name: String { get set }
}

final class ShowListInteractor: ShowListBusinessLogic, ShowListDataStore {
    
    // MARK: - Archtecture Objects
    
    var presenter: ShowListPresentationLogic?
    let worker: ShowListWorkerLogic
    
    // MARK: - DataStore Objects
    
    // var name: String = ""
    
    // MARK: - Interactor Lifecycle
    
    init(worker: ShowListWorkerLogic = ShowListWorker()) {
        self.worker = worker
    }
    
    // MARK: - Business Logic
    
    func loadScreenValues() {
        presenter?.presentScreenValues()
    }
}
