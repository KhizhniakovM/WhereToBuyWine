//
//  StudyCoordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class StudyCoordinator: Coordinator {
    // MARK: - Properties
    var navigationController = UINavigationController()
    
    // MARK: - Methods
    func start() {
        let studyViewModel = StudyViewModel()
        let studyViewController = StudyViewController(viewModel: studyViewModel)
        studyViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        studyViewController.coordinator = self
        navigationController.pushViewController(studyViewController, animated: true)
    }
}
