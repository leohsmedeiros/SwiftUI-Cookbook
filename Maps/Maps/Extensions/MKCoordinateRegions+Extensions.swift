//
//  MKCoordinateRegions+Extensions.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import Foundation
import MapKit
import SwiftUI

extension MKCoordinateRegion {
    static func defaultRegionZoomed() -> MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.808208, longitude: -122.415802),
            latitudinalMeters: 500,
            longitudinalMeters: 500
        )
    }

    static func defaultRegion() -> MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.808208, longitude: -122.415802),
            latitudinalMeters: 5000,
            longitudinalMeters: 5000
        )
    }
    
    func asBindable() -> Binding<MKCoordinateRegion>? {
        return Binding<MKCoordinateRegion>(.constant(self))
    }
}
