//
//  SettingsViewController.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SettingsDisplayLogic: AnyObject {
    func displayScreenValues(viewModel: Settings.Model.ViewModel)
}

final class SettingsViewController: UIViewController, SettingsDisplayLogic {
    
    // MARK: - Archtecture Objects
    
    var interactor: SettingsBusinessLogic?
    var router: (NSObjectProtocol & SettingsRoutingLogic & SettingsDataPassing)?
    
    // MARK: - ViewController Lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addComponents()
        addComponentsConstraints()
        loadScreenValues()
    }
    
    // MARK: - Setup
    
    private func setup() {
        let viewController = self
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter()
        let router = SettingsRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: - Private Functions
    
    private func loadScreenValues() {
        interactor?.loadScreenValues()
    }
    
    // MARK: - Layout Functions
    
    private func addComponents() {}
    
    private func addComponentsConstraints() {}
    
    // MARK: - Display Logic
    
    func displayScreenValues(viewModel: Settings.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
