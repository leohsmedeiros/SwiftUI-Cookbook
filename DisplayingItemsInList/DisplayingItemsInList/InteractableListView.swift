//
//  InteractableListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 24/11/22.
//

import SwiftUI

struct InteractableListView: View {
    @State private var taskName: String = ""
    @State private var tasks: [String] = []

    private func onDelete (indexSet: IndexSet) {
        indexSet.forEach { index in
            tasks.remove(at: index)
        }
    }

    private func onMove(from source: IndexSet, to destination: Int) {
        tasks.move(fromOffsets: source, toOffset: destination)
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter task name", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add Task") {
                        tasks.append(taskName)
                        taskName = ""
                    }
                }
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }
                    .onDelete(perform: onDelete)
                    .onMove(perform: onMove)
                }
                .listStyle(PlainListStyle())
                .toolbar {
                    EditButton()
                }
                
            }.padding()
        }
    }
}

struct InteractableListView_Previews: PreviewProvider {
    static var previews: some View {
        InteractableListView()
    }
}
