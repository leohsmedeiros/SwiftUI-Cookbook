//
//  DataFlowApp.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

@main
struct DataFlowApp: App {
    var body: some Scene {
        WindowGroup {
//            PassingDataFromChildToParentView()
            GlobalStateUsingEnvironmentObject().environmentObject(Counter())
        }
    }
}
