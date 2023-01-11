//
//  CustomerDetailView.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 10/01/23.
//

import SwiftUI

struct CustomerDetailView: View {
    let customer: String

    var body: some View {
        Text(customer)
    }
}

struct CustomerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerDetailView(customer: "John")
    }
}
