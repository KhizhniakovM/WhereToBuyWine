//
//  MapViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit
// AIzaSyBFL3IR7yY3kYEKDi8ub8eEFb2uEcE8Zkc

class MapViewController: UIViewController {
    // MARK: - Properties
    private var viewModel: MapViewModel?
    weak var coordinator: MapCoordinator?
    
    // MARK: - UI
    
    
    // MARK: - Initializers
    init(viewModel: MapViewModel) {
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
    
    // MARK: - Methods
    private func setupView() {
        
    }
}
