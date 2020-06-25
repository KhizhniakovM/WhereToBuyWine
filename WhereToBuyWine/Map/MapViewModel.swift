//
//  MapViewModel.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import Foundation
import GoogleMaps

class MapViewModel {
    
    // MARK: - Properties
    let locationManager = CLLocationManager()

    // MARK: - Methods
    func locationRequest() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
}
