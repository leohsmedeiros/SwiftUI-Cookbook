//
//  CollapsibleHeadersInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 30/11/22.
//

import SwiftUI

struct CollapsibleHeadersInListView: View {
    @State private var places = getAllPlacesWithHikes()
    @State private var selectedName: String?
    @State private var expanded: Bool = false
    
    var body: some View {
        List(places) { place in
            VStack(alignment: .leading) {
                HStack {
                    Text(place.name)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Spacer()
                    Image(systemName: selectedName == place.name
                          ? "chevron.down"
                          : "chevron.right"
                    )
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    expanded.toggle()
                    selectedName = expanded ? place.name : nil
                }
                
                if selectedName == place.name {
                    ForEach(place.hikes) { hike in
                        Text(hike.name)
                    }
                }
            }
        }
    }
}

struct CollapsibleHeadersInListView_Previews: PreviewProvider {
    static var previews: some View {
        CollapsibleHeadersInListView()
    }
}
