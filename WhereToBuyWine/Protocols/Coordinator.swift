//
//  Coordinator.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    
    func start()
}
