//
//  toDoListApp.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

@main
struct toDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
