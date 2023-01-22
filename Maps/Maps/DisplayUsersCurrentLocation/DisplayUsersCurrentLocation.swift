//
//  DisplayUsersCurrentLocation.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import SwiftUI
import MapKit

struct DisplayUsersCurrentLocation: View {
    @StateObject private var locationManager = LocationManager()
    
    var newRegion: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.defaultRegionZoomed().asBindable()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region.asBindable()
    }
    
    var body: some View {
        if let region = newRegion {
            Map(coordinateRegion: region, interactionModes: .all, showsUserLocation: true)
        }
    }
}

struct DisplayUsersCurrentLocation_Previews: PreviewProvider {
    static var previews: some View {
        DisplayUsersCurrentLocation()
    }
}
