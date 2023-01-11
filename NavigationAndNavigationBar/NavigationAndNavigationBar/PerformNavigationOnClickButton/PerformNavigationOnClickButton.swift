//
//  PerformNavigationOnClickButton.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 10/01/23.
//

import SwiftUI

struct PerformNavigationOnClickButton: View {
    @State var isPresentedDetailView = false
    
    var body: some View {
//        NavigationView {
//            NavigationLink(isActive: $isPresentedDetailView) {
//                DetailView()
//            } label: {
//                Button("Go to detail view") {
//                    isPresentedDetailView = true
//                }
//            }
//        }
        
        // iOS 16 or above
        NavigationStack {
            NavigationLink("Go to detail view") {
                DetailView()
            }
        }
    }
}

struct PerformNavigationOnClickButton_Previews: PreviewProvider {
    static var previews: some View {
        PerformNavigationOnClickButton()
    }
}
