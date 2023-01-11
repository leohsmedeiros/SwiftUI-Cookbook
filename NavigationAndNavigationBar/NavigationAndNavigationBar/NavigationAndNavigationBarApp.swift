//
//  NavigationAndNavigationBarApp.swift
//  NavigationAndNavigationBar
//
//  Created by Leonardo Medeiros on 10/01/23.
//

import SwiftUI

@main
struct NavigationAndNavigationBarApp: App {
//    init() {
//        UINavigationBar.appearance().backgroundColor = .blue
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            .foregroundColor: UIColor.white
//        ]
//    }
    
    var body: some Scene {
        WindowGroup {
            PerformNavigationOnClickButton()
        }
    }
}
