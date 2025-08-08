//
//  NewToDoView.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title2)
                .fontWeight(.black)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .font(.title3)
                    .fontWeight(.semibold)
            }//end toggle
            
            Button {
                addToDo()
            }label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.574, saturation: 0.446, brightness: 0.742))
            }//end label
        }//end VStack
        .padding()
    }//end body
    func addToDo() {
        let toDO = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDO)
    }//end func
}// end struck`

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "",isImportant: false))
}
