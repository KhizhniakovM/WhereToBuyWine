//
//  ActionCoordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class ActionCoordinator: Coordinator {
    // MARK: - Properties
    var navigationController = UINavigationController()
    
    // MARK: - Methods
    func start() {
        let actionViewModel = ActionViewModel()
        let actionViewController = ActionViewController(viewModel: actionViewModel)
        actionViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        actionViewController.coordinator = self
        navigationController.pushViewController(actionViewController, animated: true)
    }
}
