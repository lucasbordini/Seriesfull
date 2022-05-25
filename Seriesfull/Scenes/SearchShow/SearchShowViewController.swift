//
//  SearchShowViewController.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol SearchShowDisplayLogic: AnyObject {
    func displayScreenValues(viewModel: SearchShow.Model.ViewModel)
}

final class SearchShowViewController: UIViewController, SearchShowDisplayLogic {
    
    // MARK: - Archtecture Objects
    
    var interactor: SearchShowBusinessLogic?
    var router: (NSObjectProtocol & SearchShowRoutingLogic & SearchShowDataPassing)?
    
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
        let interactor = SearchShowInteractor()
        let presenter = SearchShowPresenter()
        let router = SearchShowRouter()
        
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
    
    func displayScreenValues(viewModel: SearchShow.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
