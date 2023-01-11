//
//  ViewB.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct ViewB: View {
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack {
            NavigationLink {
                ViewC(rootActive: $rootActive)
            } label: {
                Text("Go to view C")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
        .navigationTitle("View B")
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB(rootActive: .constant(true))
    }
}
