//
//  AutoScrollToSectionInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import SwiftUI

struct AutoScrollToSectionInListView: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                Button("Scroll to 100") {
                    withAnimation {
                        proxy.scrollTo(100)
                    }
                }
                
                List(1...500, id: \.self) { index in
                    Text("\(index)").id(index)
                }
            }
        }
    }
}

struct AutoScrollToSectionInListView_Previews: PreviewProvider {
    static var previews: some View {
        AutoScrollToSectionInListView()
    }
}
