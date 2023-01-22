//
//  Place.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import Foundation
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
    static func getAnnotations() -> [Place] {
        return [
            Place(name: "Burger Place", coordinate: CLLocationCoordinate2D(latitude: 37.807920, longitude: -122.422949)),
            Place(name: "Park", coordinate: CLLocationCoordinate2D(latitude: 37.804895, longitude: -122.429654)),
            Place(name: "Tacos", coordinate: CLLocationCoordinate2D(latitude: 37.807319, longitude: -122.421907))
        ]
    }
}
