//
//  SwiftUIAndCoreDataApp.swift
//  SwiftUIAndCoreData
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI

@main
struct SwiftUIAndCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
