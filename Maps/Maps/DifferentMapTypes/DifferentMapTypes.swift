//
//  DifferentMapTypes.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import SwiftUI
import MapKit

struct DifferentMapTypes: View {
    @State private var mapType: MKMapType = .standard
    
    var body: some View {
        VStack {
            Picker("Select", selection:  $mapType) {
                Text("Standard").tag(MKMapType.standard)
                Text("Satellite").tag(MKMapType.satellite)
                Text("Hybrid").tag(MKMapType.hybrid)
            }
            .pickerStyle(.segmented)
            
            MapView(mapType: mapType)
        }
    }
}

struct DifferentMapTypes_Previews: PreviewProvider {
    static var previews: some View {
        DifferentMapTypes()
    }
}
