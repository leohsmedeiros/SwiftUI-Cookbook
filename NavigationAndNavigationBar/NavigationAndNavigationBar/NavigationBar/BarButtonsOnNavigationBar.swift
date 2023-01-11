//
//  BarButtonsOnNavigationBar.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct BarButtonsOnNavigationBar: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World!")
            }
            .navigationTitle("Customers")
            .navigationBarItems(leading: Button(action: {
                // click action
            }, label: {
                Image(systemName: "house")
            }), trailing: Button(action: {
                // click action
            }, label: {
                Image(systemName: "bolt")
            }))
        }
    }
}

struct BarButtonsOnNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BarButtonsOnNavigationBar()
    }
}
