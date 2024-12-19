//
//  AddRemoveMoveItemsListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI

struct AddRemoveMoveItemsListView: View {
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    
    private func deleteTask(indexSet: IndexSet) {
        indexSet.forEach { index in
            tasks.remove(at: index)
        }
    }
    private func moveTask(from source: IndexSet, to destination: Int) {
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    var body: some View {
        NavigationView{
            
            
            VStack {
                HStack {
                    TextField("Enter task name", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add Task") {
                        if taskName.isEmpty {
                            return
                        }
                        tasks.append(taskName)
                        taskName = ""
                    }
                }
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text("\(task)")
                    }
                    .onDelete(perform: deleteTask) // delete
                    .onMove(perform: moveTask) // move
                }
                .listStyle(.plain)
                .toolbar {
                    EditButton()
                }
            }.padding()
        }
    }
}

#Preview {
    AddRemoveMoveItemsListView()
}
