//
//  MainTabBarController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    // MARK: - Properties
    let mapCoordinator = MapCoordinator()
    let cellarCoordinator = CellarCoordinator()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        start()
        viewControllers = [mapCoordinator.navigationController,
                           cellarCoordinator.navigationController]
    }
    
    // MARK: - Methods
    private func start() {
        mapCoordinator.start()
        cellarCoordinator.start()
    }
}
