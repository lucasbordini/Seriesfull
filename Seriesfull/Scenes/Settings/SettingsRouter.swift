//
//  SettingsRouter.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

@objc protocol SettingsRoutingLogic {
    func routeToSomewhere()
}

protocol SettingsDataPassing {
    var dataStore: SettingsDataStore? { get }
}

final class SettingsRouter: NSObject, SettingsRoutingLogic, SettingsDataPassing {
    
    // MARK: - Archtecture Objects
    
    weak var viewController: SettingsViewController?
    var dataStore: SettingsDataStore?
    
    // MARK: - Routing Logic
    
    func routeToSomewhere() {
        //let nextController = NextViewController()
        //var destinationDS = nextController.router?.dataStore
        //passDataToSomewhere(source: dataStore, destination: &destinationDS)
        //viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // MARK: - Passing data
    
    //func passDataToSomewhere(source: SettingsDataStore, destination: inout SomewhereDataStore) {
        //destination.name = source.name
    //}
}
