//
//  ListeningForNotificationsChanges.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

extension Notification.Name {
    static let taskAddedNotification = Notification.Name("TaskAddedNotification")
}

struct ListeningForNotificationsChanges: View {
    @State private var newTask: String?
    
    var body: some View {
        VStack {
            Button("Post notification") {
                NotificationCenter.default.post(name: Notification.Name.taskAddedNotification, object: "Wash the car")
            }
            
            Text(newTask ?? "")
                .onReceive(NotificationCenter.default.publisher(for: Notification.Name.taskAddedNotification)) { output in
                    newTask = output.object as? String
                }
        }
    }
}

struct ListeningForNotificationsChanges_Previews: PreviewProvider {
    static var previews: some View {
        ListeningForNotificationsChanges()
    }
}
