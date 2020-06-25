//
//  MapViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    // MARK: - Main Properties
    private var viewModel: MapViewModel?
    weak var coordinator: MapCoordinator?

    // MARK: - UI
    lazy var mapView: GMSMapView = {
        let mapView = GMSMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        
        return mapView
    }()
    
    lazy var infoMarker: GMSMarker = {
        let marker = GMSMarker()
        marker.icon = .checkmark
        marker.appearAnimation = .pop
        return marker
    }()
    
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
        // Delegate
        viewModel?.locationManager.delegate = self
        mapView.delegate = self
        
        // SetupView
        setupView()
        viewModel?.locationRequest()
    }
    
    // MARK: - Methods
    private func setupView() {
        self.view.addSubview(mapView)
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: self.view.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}
