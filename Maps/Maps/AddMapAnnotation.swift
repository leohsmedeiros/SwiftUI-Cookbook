//
//  AddMapAnnotation.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import SwiftUI
import MapKit

struct AddMapAnnotation: View {
    @State private var region = MKCoordinateRegion.defaultRegion()
    let annotations = Place.getAnnotations()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { place in
//            MapPin(coordinate: place.coordinate) /* Deprecated on iOS 16.0 */
            MapMarker(coordinate: place.coordinate)
        }
    }
}

struct AddMapAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        AddMapAnnotation()
    }
}
