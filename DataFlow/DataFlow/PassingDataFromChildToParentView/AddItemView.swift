//
//  AddItemView.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.dismiss) var dismissAction
    
    // Binding simply means that you're passing this data from a parent or some other view and when you change this particular data then the original variable that you passed also get changed
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name", text: $name)
                HStack {
                    Spacer()
                    Button("Submit") {
                        dismissAction.callAsFunction()
                    }
                    Spacer()
                }
            }
            .navigationTitle("Add Item")
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(name: .constant(""))
    }
}
