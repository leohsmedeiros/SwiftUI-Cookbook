//
//  ViewA.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct ViewA: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: $isActive) {
                    ViewB(rootActive: $isActive)
                } label: {
                    Text("Go to view B")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .navigationTitle("View A")
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
