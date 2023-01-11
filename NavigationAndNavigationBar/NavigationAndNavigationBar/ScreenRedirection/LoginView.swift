//
//  LoginView.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 10/01/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("username", text: $username)
                TextField("password", text: $password)
                HStack {
                    Spacer()
                    NavigationLink("Login") {
                        LoggedView()
                    }
                    Spacer()
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .navigationTitle("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
