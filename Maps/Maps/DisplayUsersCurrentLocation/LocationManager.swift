//
//  LocationManager.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let manager = CLLocationManager()
    @Published var location: CLLocation?
    private var locationFound: Bool = false
    
    override init() {
        super.init()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        manager.delegate = self
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if !locationFound {
            guard let location = locations.last else { return }
            locationFound = true
            DispatchQueue.main.async {
                self.location = location
            }
        }
    }
}
