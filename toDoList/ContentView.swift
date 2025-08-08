//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
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
        }//end VStack
        if showNewTask {
            NewToDoView()
        }//end if
    }//end body
}//end struck

#Preview {
    ContentView()
}
