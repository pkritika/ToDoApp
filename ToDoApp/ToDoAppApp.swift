//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by cslinxs on 6/25/24.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ContentView()
        }
            .environmentObject(listViewModel)
    }
}
}
