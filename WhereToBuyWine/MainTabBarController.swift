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
    let studyCoordinator = StudyCoordinator()
    let actionCoordinator = ActionCoordinator()
    let profileCoordinator = ProfileCoordinator()
    let cellarCoordinator = CellarCoordinator()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        start()
        
        viewControllers = [mapCoordinator.navigationController,
                           studyCoordinator.navigationController,
                           actionCoordinator.navigationController,
                           cellarCoordinator.navigationController,
                           profileCoordinator.navigationController]
    }
    
    // MARK: - Methods
    private func start() {
        mapCoordinator.start()
        studyCoordinator.start()
        actionCoordinator.start()
        cellarCoordinator.start()
        profileCoordinator.start()
    }
}



