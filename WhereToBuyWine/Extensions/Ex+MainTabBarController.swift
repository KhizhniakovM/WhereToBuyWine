//
//  Ex+MainMapTabBarController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

extension MainTabBarController: UITabBarControllerDelegate {
    // To make button from first
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard viewController.tabBarItem.tag == 2 else { return true }
        
        let viewModel = ActionViewModel()
        let vc = ActionViewController(viewModel: viewModel)
        self.present(vc, animated: true, completion: nil)
        return false
    }
}
