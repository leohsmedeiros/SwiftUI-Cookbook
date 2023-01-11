//
//  PassingDataFromScreenToAnother.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 10/01/23.
//

import SwiftUI

struct PassingDataFromScreenToAnother: View {
    let customers = ["Alex", "Mary", "John", "Jerry", "Steven"]
    @State private var isActive = false
    
    var body: some View {
//        NavigationView {
//            List(customers, id: \.self) { customer in
//                NavigationLink(destination: {
//                    CustomerDetailView(customer: customer)
//                }, label: {
//                    Text(customer)
//                })
//            }
//        }

        // iOS 16 or above
        NavigationStack {
            List(customers, id: \.self) { customer in
                NavigationLink(customer) {
                    CustomerDetailView(customer: customer)
                }
            }
        }

    }
}

struct PassingDataFromScreenToAnother_Previews: PreviewProvider {
    static var previews: some View {
        PassingDataFromScreenToAnother()
    }
}
