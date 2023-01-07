//
//  SelectMultipleItemsInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import SwiftUI

struct SelectMultipleItemsInListView: View {
    @State private var customers = [
        Customer(name: "John"),
        Customer(name: "Alex"),
        Customer(name: "Mary"),
        Customer(name: "Steven"),
        Customer(name: "George"),
        Customer(name: "Jerry")
    ]
    
    @State private var selectedCustomerIds = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(customers, selection: $selectedCustomerIds) { customer in
                HStack {
                    Text(customer.name)
                    Spacer()
                }
            }
            .toolbar {
                EditButton()
            }
            .navigationTitle("Selected \(selectedCustomerIds.count)")
        }
    }
}

struct SelectMultipleItemsInListView_Previews: PreviewProvider {
    static var previews: some View {
        SelectMultipleItemsInListView()
    }
}
