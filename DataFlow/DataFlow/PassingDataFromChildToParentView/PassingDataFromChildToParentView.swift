//
//  PassingDataFromChildToParentView.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct PassingDataFromChildToParentView: View {
    @State private var isPresented = false
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("name: \(name)")
                .font(.largeTitle)

            Button("Add Item") {
                isPresented = true
            }
        }
        .sheet(isPresented: $isPresented) {
            AddItemView(name: $name)
        }
    }
}

struct PassingDataFromChildToParentView_Previews: PreviewProvider {
    static var previews: some View {
        PassingDataFromChildToParentView()
    }
}
