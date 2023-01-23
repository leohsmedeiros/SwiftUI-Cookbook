//
//  TaskDetailView.swift
//  SwiftUIAndFirebase
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct TaskDetailView: View {
    private let db: Firestore = Firestore.firestore()
    @State private var title: String = ""
    let task: Task

    private func updateTask() {
        db.collection("tasks")
            .document(task.id!)
            .updateData(["title": title]) { error in
                if let error {
                    print (error.localizedDescription)
                } else {
                    print("Updated successfully")
                }
            }
    }
    
    var body: some View {
        VStack {
            TextField(task.title, text: $title)
                .textFieldStyle(.roundedBorder)
            Button("Update") {
                updateTask()
            }
        }.padding()
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetailView(task: Task(id: "123", title: "Mow the Law"))
    }
}
