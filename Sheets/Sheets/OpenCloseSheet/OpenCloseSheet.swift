//
//  OpenCloseSheet.swift
//  Sheets
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct OpenCloseSheet: View {
    @State private var isPresented = false
    @State private var dismissed = false
    
    var body: some View {
        VStack {
            Text(dismissed ? "dismissed" : "")
            Button("Add Item") {
                isPresented = true
            }.sheet(isPresented: $isPresented, onDismiss: {
                dismissed = true
            }) {
                AddItemView()
            }
        }
    }
}

struct OpenCloseSheet_Previews: PreviewProvider {
    static var previews: some View {
        OpenCloseSheet()
    }
}
