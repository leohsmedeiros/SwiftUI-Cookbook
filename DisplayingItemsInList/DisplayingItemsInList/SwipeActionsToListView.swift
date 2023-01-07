//
//  SwipeActionsToListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import SwiftUI

struct SwipeActionsToListView: View {
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
                .swipeActions(edge: .leading) {
                    Button {
                        // action
                    } label: {
                        Label("Heart", systemImage: "heart.circle")
                    }.tint(.yellow)
                }
                .swipeActions(edge: .trailing) {
                    Button {
                        // action
                    } label: {
                        Label("Archive", systemImage: "archivebox.circle.fill")
                    }.tint(.teal)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Places")
        }
    }
}

struct SwipeActionsToListView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsToListView()
    }
}
