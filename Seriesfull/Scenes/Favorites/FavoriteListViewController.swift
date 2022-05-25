//
//  FavoritesViewController.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

protocol FavoriteListDisplayLogic: AnyObject {
    func displayScreenValues(viewModel: FavoriteList.Model.ViewModel)
}

final class FavoriteListViewController: UIViewController, FavoriteListDisplayLogic {
    
    // MARK: - Archtecture Objects
    
    var interactor: FavoritesBusinessLogic?
    var router: (NSObjectProtocol & FavoriteListRoutingLogic & FavoriteListDataPassing)?
    let customView = FavoritesView()
    
    // MARK: - ViewController Lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func loadView() {
        view = customView
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
        let interactor = FavoritesInteractor()
        let presenter = FavoriteListPresenter()
        let router = FavoriteListRouter()
        
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
    
    func displayScreenValues(viewModel: Favorites.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
