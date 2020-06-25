//
//  CellarCoordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class CellarCoordinator: Coordinator {
    // MARK: - Properties
    var navigationController = UINavigationController()
    
    // MARK: - Methods
    func start() {
        let cellarViewModel = CellarViewModel()
        let cellarViewController = CellarViewController(viewModel: cellarViewModel)
        cellarViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)
        cellarViewController.coordinator = self
        navigationController.pushViewController(cellarViewController, animated: true)
    }
}
