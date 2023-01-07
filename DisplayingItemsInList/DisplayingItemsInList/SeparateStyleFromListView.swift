//
//  SeparateStyleFromListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 28/11/22.
//

import SwiftUI

struct SeparateStyleFromListView: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }.listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct SeparateStyleFromListView_Previews: PreviewProvider {
    static var previews: some View {
        SeparateStyleFromListView()
    }
}
