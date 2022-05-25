//
//  NavigationController.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

class NavigationControlelr: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension NavigationControlelr: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if let firstItem = navigationController.navigationBar.items?.first {
            firstItem.title = String()
        }
    }
}
