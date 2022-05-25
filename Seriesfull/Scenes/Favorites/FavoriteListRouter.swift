//
//  FavoritesRouter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

@objc protocol FavoriteListRoutingLogic {
    func routeToSomewhere()
}

protocol FavoriteListDataPassing {
    var dataStore: FavoritesDataStore? { get }
}

final class FavoriteListRouter: NSObject, FavoriteListRoutingLogic, FavoriteListDataPassing {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: FavoritesViewController?
    var dataStore: FavoritesDataStore?
    
    // MARK: - Routing Logic
    
    func routeToSomewhere() {
        //let nextController = NextViewController()
        //var destinationDS = nextController.router?.dataStore
        //passDataToSomewhere(source: dataStore, destination: &destinationDS)
        //viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // MARK: - Passing data
    
    //func passDataToSomewhere(source: FavoritesDataStore, destination: inout SomewhereDataStore) {
        //destination.name = source.name
    //}
}
