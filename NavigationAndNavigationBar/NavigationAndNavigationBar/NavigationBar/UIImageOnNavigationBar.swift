//
//  UIImageOnNavigationBar.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct UIImageOnNavigationBar: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Plants")
                    .navigationTitle("Plants")
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Image(systemName: "leaf")
                        }
                    }
            }
        }
    }
}

struct UIImageOnNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        UIImageOnNavigationBar()
    }
}
