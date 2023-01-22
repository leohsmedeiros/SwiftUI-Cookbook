//
//  InitializeMapView.swift
//  Maps
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI
import MapKit

struct InitializeMapView: View {
    @State private var region = MKCoordinateRegion.defaultRegionZoomed()
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct InitializeMapView_Previews: PreviewProvider {
    static var previews: some View {
        InitializeMapView()
    }
}
