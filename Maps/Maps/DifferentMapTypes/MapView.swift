//
//  MapView.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import Foundation
import SwiftUI
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
}

struct MapView: UIViewRepresentable {
    let mapType: MKMapType
    
    func makeUIView(context: Context) -> some MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    // is called whenever there are changes into the map
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.mapType = mapType
    }
}
