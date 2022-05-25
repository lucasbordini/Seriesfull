//
//  EpisodeDetailViewController.swift
//  Seriesfull
//
//  Created by lucasbordini on 20/05/22.
//

import UIKit

protocol EpisodeDetailDisplayLogic: AnyObject {
    func displayScreenValues(viewModel: EpisodeDetail.Model.ViewModel)
}

final class EpisodeDetailViewController: UIViewController, EpisodeDetailDisplayLogic {
    
    // MARK: - Archtecture Objects
    
    var interactor: EpisodeDetailBusinessLogic?
    var router: (NSObjectProtocol & EpisodeDetailRoutingLogic & EpisodeDetailDataPassing)?
    
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
        let interactor = EpisodeDetailInteractor()
        let presenter = EpisodeDetailPresenter()
        let router = EpisodeDetailRouter()
        
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
    
    func displayScreenValues(viewModel: EpisodeDetail.Model.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}
