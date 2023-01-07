//
//  ContentView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 24/11/22.
//

import SwiftUI

struct DisplayTextInListView: View {
    let friends = [Friend(name: "John"), Friend(name: "Mary"), Friend(name: "Steven")]
    var body: some View {

        /* Since it's Identifiable it can recognize the id property automatically as unique */
        List(friends.indices) { index in
            HStack {
                Text("\(index + 1). \(friends[index].name)")
                Spacer()
            }
            .background(index % 2 == 0
                        ? Color(red: 0.9, green: 0.9, blue: 0.9)
                        : Color.white)
        }.listStyle(PlainListStyle())


//        List(friends, id: \.name) { friend in
//            Text(friend.name)
//        }


//        List(1...20, id: \.self) { id in
//            Text("\(id)")
//        }
    }
}

struct DisplayText_Previews: PreviewProvider {
    static var previews: some View {
        DisplayTextInListView()
    }
}
