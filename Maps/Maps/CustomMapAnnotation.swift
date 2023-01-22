//
//  SwiftUIView.swift
//  Maps
//
//  Created by Leonardo Medeiros on 16/01/23.
//

import SwiftUI
import MapKit

struct CustomMapAnnotation: View {
    @State private var region = MKCoordinateRegion.defaultRegion()
    let annotations = Place.getAnnotations()
    
    var rating: String {
        return String(format: "%.1f", Double.random(in: 1...5))
    }
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { place in
            MapAnnotation(coordinate: place.coordinate) {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text(rating)
                        .fixedSize()
                }
                .padding(10)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .overlay(alignment: .bottom) {
                    Image(systemName: "arrowtriangle.left.fill")
                        .rotationEffect((Angle(degrees: 270)))
                        .foregroundColor(.white)
                        .offset(y: 10)
                }
            }
        }
    }
}

struct CustomMapAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        CustomMapAnnotation()
    }
}
