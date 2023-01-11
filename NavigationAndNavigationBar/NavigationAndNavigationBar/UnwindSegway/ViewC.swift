//
//  ViewC.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 11/01/23.
//

import SwiftUI

struct ViewC: View {
    @Binding var rootActive: Bool

    var body: some View {
        VStack {
            Text("View C")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Button("Go to view A") {
                rootActive = false
            }
            .foregroundColor(.green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
        .navigationTitle("View C")
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC(rootActive: .constant(false))
    }
}
