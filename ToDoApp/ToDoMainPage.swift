//
//  ToDoMainPage.swift
//  ToDoApp
//
//  Created by cslinxs on 6/25/24.
//

import SwiftUI

struct ToDoMainPage: View {
    
    var body: some View {
        
        @State var items : [String] = [
        "1", "2", "3"]
            List{
                ForEach(items, id:\.self){item in ListRowView(title: item)}
            }
            .listStyle(PlainListStyle())
            .navigationTitle("To Do List")
            .navigationBarItems(trailing: NavigationLink("+",destination: Text("Destination")))
        
    }
    
}

#Preview {
    NavigationView{
        ToDoMainPage()
    }
}

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
