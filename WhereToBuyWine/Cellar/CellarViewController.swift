//
//  CellarViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class CellarViewController: UIViewController {
    // MARK: - Properties
    private var viewModel: CellarViewModel?
    weak var coordinator: CellarCoordinator?
    
    // MARK: - Initializers
    init(viewModel: CellarViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
}
