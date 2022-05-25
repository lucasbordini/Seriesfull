//
//  SearchShowRouter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

@objc protocol SearchShowRoutingLogic {
    func routeToSomewhere()
}

protocol SearchShowDataPassing {
    var dataStore: SearchShowDataStore? { get }
}

final class SearchShowRouter: NSObject, SearchShowRoutingLogic, SearchShowDataPassing {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: SearchShowViewController?
    var dataStore: SearchShowDataStore?
    
    // MARK: - Routing Logic
    
    func routeToSomewhere() {
        //let nextController = NextViewController()
        //var destinationDS = nextController.router?.dataStore
        //passDataToSomewhere(source: dataStore, destination: &destinationDS)
        //viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // MARK: - Passing data
    
    //func passDataToSomewhere(source: SearchShowDataStore, destination: inout SomewhereDataStore) {
        //destination.name = source.name
    //}
}
