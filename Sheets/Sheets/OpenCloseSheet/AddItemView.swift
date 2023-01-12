//
//  AddItemView.swift
//  Sheets
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.dismiss) var sheetDismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Add Item View")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            .navigationTitle("Add Item")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        sheetDismiss.callAsFunction()
                    }
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
