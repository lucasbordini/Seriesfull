//
//  ShowListViewController.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit

protocol ShowListDisplayLogic: AnyObject {
    func displayScreenValues(viewModel: ShowList.Model.ViewModel)
}

final class ShowListViewController: UIViewController, ShowListDisplayLogic {
    
    // MARK: - Archtecture Objects
    
    var interactor: ShowListBusinessLogic?
    var router: (NSObjectProtocol & ShowListRoutingLogic & ShowListDataPassing)?
    
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
        let interactor = ShowListInteractor()
        let presenter = ShowListPresenter()
        let router = ShowListRouter()
        
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
    
    func displayScreenValues(viewModel: ShowList.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
