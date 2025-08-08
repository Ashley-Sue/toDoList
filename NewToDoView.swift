//
//  NewToDoView.swift
//  toDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title2)
                .fontWeight(.black)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .font(.title3)
                    .fontWeight(.semibold)
            }//end toggle
            
            Button {
                
            }label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.574, saturation: 0.446, brightness: 0.742))
            }//end label
        }//end VStack
        .padding()
    }//end body
}// end struck`

#Preview {
    NewToDoView()
}
