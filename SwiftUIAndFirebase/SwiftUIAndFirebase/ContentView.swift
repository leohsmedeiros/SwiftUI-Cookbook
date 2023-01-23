//
//  ContentView.swift
//  SwiftUIAndFirebase
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct ContentView: View {
    private var db: Firestore = Firestore.firestore()
    @State private var title: String = ""
    @State private var tasks: [Task] = [Task]()
    
    private func saveTask(task: Task) {
        do {
            try db.collection("tasks").addDocument(from: task) { error in
                if let error {
                    print(error.localizedDescription)
                } else {
                    fetchTasks()
                }
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private func deleteTask(at indexSet: IndexSet) {
        indexSet.forEach { index in
            let task = tasks[index]
            db.collection("tasks")
                .document(task.id!)
                .delete { error in
                    if let error {
                        print(error.localizedDescription)
                    } else {
                        fetchTasks()
                    }
                }
        }
    }
    
    private func fetchTasks() {
        db.collection("tasks")
            .getDocuments { snapshot, error in
                if let error {
                    print (error.localizedDescription)
                } else {
                    if let snapshot {
                        tasks = snapshot.documents.compactMap { doc in
                            if var task = try? doc.data(as: Task.self) {
                                task.id = doc.documentID
                                return task
                            } else {
                                return nil
                            }
                        }
                    }
                }
            }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter task", text: $title)
                    .textFieldStyle(.roundedBorder)
                Button("Save") {
                    let task = Task(title: title)
                    saveTask(task: task)
                }
                List {
                    ForEach(tasks, id: \.id) { task in
                        NavigationLink(destination: TaskDetailView(task: task)) {
                            Text(task.title)
                        }
                    }.onDelete(perform: deleteTask)
                }.listStyle(.plain)

                Spacer()

                    .onAppear {
                        fetchTasks()
                    }
            }
            .padding()
            .navigationTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
