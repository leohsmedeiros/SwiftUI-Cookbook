//
//  FilteringResultsInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import SwiftUI

struct FilteringResultsInListView: View {
    @State private var search: String = ""
    @State private var places = getPlaces()

    var body: some View {
        NavigationView {
            List(places) { place in
                HStack {
                    Image(place.photo)
                        .resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    Text(place.name)
                        .font(.title)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Places")
            .searchable(text: $search)
            .onChange(of: search) { value in
                places = getPlaces()

                if !value.isEmpty && value.count >= 1 {
                    places = places.filter {
                        $0.name.lowercased().hasPrefix(value.lowercased())
                    }
                }
            }
        }
    }
}

struct FilteringResultsInListView_Previews: PreviewProvider {
    static var previews: some View {
        FilteringResultsInListView()
    }
}
