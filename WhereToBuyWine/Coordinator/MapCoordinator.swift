//
//  MapCoordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class MapCoordinator: Coordinator {
    // MARK: - Properties
    var navigationController = UINavigationController()
    
    // MARK: - Methods
    func start() {
        let mapViewModel = MapViewModel()
//        mapViewModel.fetchData()
        let mapViewController = MapViewController(viewModel: mapViewModel)
        mapViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        mapViewController.coordinator = self
        navigationController.pushViewController(mapViewController, animated: true)
    }
    
    func openShop() {
        let shopViewModel = ShopViewModel()
        let shopViewController = ShopViewController(viewModel: shopViewModel)
        shopViewController.coordinator = self
        navigationController.pushViewController(shopViewController, animated: true)
    }
    
    func openTableOfShops() {
        let tableOfShopsViewModel = TableOfShopsViewModel()
        let tableOfShopsViewController = TableOfShopsViewController(viewModel: tableOfShopsViewModel)
        tableOfShopsViewController.coordinator = self
        navigationController.pushViewController(tableOfShopsViewController, animated: true)
    }
}
