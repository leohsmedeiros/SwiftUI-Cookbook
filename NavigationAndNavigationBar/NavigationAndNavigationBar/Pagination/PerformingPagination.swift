//
//  PerformingPagination.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct PerformingPagination: View {
    var body: some View {
        TabView {
            Text("One")
            Text("Two")
            Text("Three")
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct PerformingPagination_Previews: PreviewProvider {
    static var previews: some View {
        PerformingPagination()
    }
}
