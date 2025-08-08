//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                Button {
        
                }label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.574, saturation: 0.446, brightness: 0.742))
                }
                
            }//end HStack
            .padding()
            Spacer()
        }//end VStack
    }//end body
}//end struck

#Preview {
    ContentView()
}
