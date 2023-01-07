//
//  ChangeBackgroundColorInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 28/11/22.
//

import SwiftUI

struct ChangeBackgroundColorInListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...20, id: \.self) { index in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(index)")
                            Divider()
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            .background (Color.gray.opacity(0.3))
        }

        /*
        List {
            ForEach(1...10, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }
                .listRowBackground(
                    index % 2 != 0
                    ? Color.gray.opacity(0.3)
                    : Color.white
                )
            }
        }
        */
    }
}

struct ChangeBackgroundColorInListView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeBackgroundColorInListView()
    }
}
