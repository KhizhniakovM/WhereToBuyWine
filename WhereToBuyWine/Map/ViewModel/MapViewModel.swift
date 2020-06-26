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
    var mapMarkers: [GMSMarker] = []

    // MARK: - Methods
    func locationRequest() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
//    func fetchData() {
//        let markerManager = MarkerManager()
//        markerManager.fetchMarkers { (mapMarkers) in
//            self.mapMarkers = mapMarkers
//        }
//    }
    func addMapMarkers() {
        let first = GMSMarker()
        first.position = CLLocationCoordinate2D(latitude: CLLocationDegrees(exactly: 59.9397392)!,
                                                longitude: CLLocationDegrees(exactly: 30.3140793)!)
        first.title = "Hermitage"
        first.snippet = "Biggest museum"
        mapMarkers.append(first)
    }
}
