//
//  ShopViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {
    // MARK: - Properties
    private var viewModel: ShopViewModel?
    weak var coordinator: MapCoordinator?
    
    // MARK: - Initializers
    init(viewModel: ShopViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
    }

}
