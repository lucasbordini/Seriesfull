//
//  ShowListRouter.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit

@objc protocol ShowListRoutingLogic {
    func routeToSomewhere()
}

protocol ShowListDataPassing {
    var dataStore: ShowListDataStore? { get }
}

final class ShowListRouter: NSObject, ShowListRoutingLogic, ShowListDataPassing {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: ShowListViewController?
    var dataStore: ShowListDataStore?
    
    // MARK: - Routing Logic
    
    func routeToSomewhere() {
        //let nextController = NextViewController()
        //var destinationDS = nextController.router?.dataStore
        //passDataToSomewhere(source: dataStore, destination: &destinationDS)
        //viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // MARK: - Passing data
    
    //func passDataToSomewhere(source: ShowListDataStore, destination: inout SomewhereDataStore) {
        //destination.name = source.name
    //}
}
