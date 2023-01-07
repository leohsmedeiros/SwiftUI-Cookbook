//
//  RefreshInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 28/11/22.
//

import SwiftUI

struct RefreshInListView: View {
    @State private var refreshDates: [Date] = []

    var body: some View {
        NavigationView {
            List(refreshDates, id: \.self) { date in
                 Text("\(date)")
            }
            .navigationTitle("pull to refresh")
            .listStyle(.plain)
            .refreshable {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    let currentDate = Date()
                    refreshDates.append(currentDate)
                }
            }
        }
    }
}

struct RefreshInListView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshInListView()
    }
}
