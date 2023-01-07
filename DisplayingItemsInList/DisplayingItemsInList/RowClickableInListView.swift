//
//  RowClickableInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import SwiftUI

struct RowClickableInListView: View {
    @State private var selectedIndex: Int?

    var body: some View {
        VStack {
            List {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        Text("\(index)")
                        Spacer()
                    }
                    .contentShape(Rectangle() /* it makes the whole row clickable */)
                    .onTapGesture {
                        selectedIndex = index
                    }
                }
            }
            selectedIndex.map {
                Text("\($0)")
                    .font(.largeTitle)
            }
        }
    }
}

struct RowClickableInListView_Previews: PreviewProvider {
    static var previews: some View {
        RowClickableInListView()
    }
}
