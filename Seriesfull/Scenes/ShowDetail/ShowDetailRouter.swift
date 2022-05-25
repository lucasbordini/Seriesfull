//
//  ShowDetailRouter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

@objc protocol ShowDetailRoutingLogic {
    func routeToSomewhere()
}

protocol ShowDetailDataPassing {
    var dataStore: ShowDetailDataStore? { get }
}

final class ShowDetailRouter: NSObject, ShowDetailRoutingLogic, ShowDetailDataPassing {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: ShowDetailViewController?
    var dataStore: ShowDetailDataStore?
    
    // MARK: - Routing Logic
    
    func routeToSomewhere() {
        //let nextController = NextViewController()
        //var destinationDS = nextController.router?.dataStore
        //passDataToSomewhere(source: dataStore, destination: &destinationDS)
        //viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // MARK: - Passing data
    
    //func passDataToSomewhere(source: ShowDetailDataStore, destination: inout SomewhereDataStore) {
        //destination.name = source.name
    //}
}
