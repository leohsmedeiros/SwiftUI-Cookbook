//
//  ColorNavigationBar.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct ColorNavigationBar: View {
    
    // for this to be global you'll need to move it into NavigationAndNavigationBarApp
    init() {
        UINavigationBar.appearance().backgroundColor = .blue
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Plants")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            .navigationTitle("Plants")
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ColorNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        ColorNavigationBar()
    }
}
