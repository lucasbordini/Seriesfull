//
//  TabBarController.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let listVC = NavigationControlelr(rootViewController: ShowListViewController())
    let searchVC = NavigationControlelr(rootViewController: SearchShowViewController())
    let favoriteVC = NavigationControlelr(rootViewController: FavoriteListViewController())
    let settingsVC = NavigationControlelr(rootViewController: SettingsViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupViewControllers()
    }
    
    
    private func setupViewControllers() {
        let listTab = UITabBarItem(title: TabKeys.Localized.series.text,
                                     image: UIImage.add, selectedImage: UIImage.add)
        listVC.tabBarItem = listTab
        
        let searchTab = UITabBarItem(title: TabKeys.Localized.search.text,
                                     image: UIImage.actions, selectedImage: UIImage.actions)
        searchVC.tabBarItem = searchTab
        
        let favoriteTab = UITabBarItem(title: TabKeys.Localized.favorites.text,
                                        image: UIImage.checkmark, selectedImage: UIImage.checkmark)
        favoriteVC.tabBarItem = favoriteTab
        
        let settingsTab = UITabBarItem(title: TabKeys.Localized.settings.text,
                                       image: UIImage.remove, selectedImage: UIImage.remove)
        settingsVC.tabBarItem = settingsTab
        
        viewControllers = [listVC, searchVC, favoriteVC, settingsVC]
    }
    
    
}
