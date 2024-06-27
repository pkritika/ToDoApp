//
//  ContentView.swift
//  ToDo
//
//  Created by cslinxs on 6/25/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        VStack {
            Text("To Do List")
                .multilineTextAlignment(.center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.system(size:30))
            Image(systemName: "checklist")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome!!!")
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .font(.system(size: 30))
            
                NavigationLink(destination: ToDoMainPage(),label:{Text("Let's go")})
                
            }

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
