//
//  Ex+MapViewController.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 25.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit
import GoogleMaps

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else { return }
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        mapView.camera = GMSCameraPosition(target: location.coordinate,
                                           zoom: 15,
                                           bearing: 0,
                                           viewingAngle: 0)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}

extension MapViewController: GMSMapViewDelegate {
    
//    func mapView(_ mapView: GMSMapView, didTapPOIWithPlaceID placeID: String, name: String, location: CLLocationCoordinate2D) {
//        infoMarker.position = location
//        infoMarker.title = name
//        infoMarker.opacity = 0
//        infoMarker.infoWindowAnchor.y = 1
//        infoMarker.map = mapView
//        mapView.selectedMarker = infoMarker
//    }
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        coordinator?.openShop()
    }
    
}
