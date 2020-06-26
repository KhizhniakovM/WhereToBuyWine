//
//  ProfileViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 26.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: - Properties
    private var viewModel: ProfileViewModel?
    weak var coordinator: ProfileCoordinator?
    
    // MARK: - Initializers
    init(viewModel: ProfileViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
    }
}
