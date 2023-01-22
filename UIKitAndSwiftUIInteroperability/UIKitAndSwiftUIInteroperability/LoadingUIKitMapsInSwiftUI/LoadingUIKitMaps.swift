//
//  LoadingUIKitMaps.swift
//  UIKitAndSwiftUIInteroperability
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI
import MapKit

struct LoadingUIKitMaps: View {
    @State private var mapType: MKMapType = .standard
    
    var body: some View {
        VStack {
            Picker("Select", selection: $mapType) {
                Text("Standard").tag(MKMapType.standard)
                Text("Satellite").tag(MKMapType.satellite)
                Text("Hybrid").tag(MKMapType.hybrid)
            }.pickerStyle(SegmentedPickerStyle())
            
            MapView(mapType: mapType)
        }
    }
}

struct LoadingUIKitMaps_Previews: PreviewProvider {
    static var previews: some View {
        LoadingUIKitMaps()
    }
}
