//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem	]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                }label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.574, saturation: 0.446, brightness: 0.742))
                }//end label
            }//end HStack
            .padding()
            Spacer()
            List {
                ForEach (toDos) { toDoItem in
                    if toDoItem.isImportant {
                        Text("‼️" + toDoItem.title)
                    }else {
                        Text(toDoItem.title)
                    }//end if else
                }//end ForEach
            }//end List
            .listStyle(.plain)
        }//end VStack
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask,  toDoItem: ToDoItem(title: "", isImportant: false))
        }//end if
    }//end body
}//end struck

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
