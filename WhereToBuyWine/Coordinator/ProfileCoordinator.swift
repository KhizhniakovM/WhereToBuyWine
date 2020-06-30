//
//  ProfileCoordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 30.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class ProfileCoordinator: Coordinator {
    // MARK: - Properties
    var navigationController = UINavigationController()
    
    // MARK: - Methods
    func start() {
        let profileViewModel = ProfileViewModel()
        let profileViewController = ProfileViewController(viewModel: profileViewModel)
        profileViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 4)
        profileViewController.coordinator = self
        navigationController.pushViewController(profileViewController, animated: true)
    }
}
