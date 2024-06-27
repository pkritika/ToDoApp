//
//  ToDoMainPage.swift
//  ToDoApp
//
//  Created by cslinxs on 6/25/24.
//

import SwiftUI

struct ToDoMainPage: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
            List {
                ForEach(listViewModel.items) { item in
                    ListRowView(item: item)
                        .onTapGesture {
                            withAnimation(.linear){
                                listViewModel.updateItem(item: item)
                            }
                        }
                }
                .onDelete(perform: listViewModel.deleteItem)
            }
            .listStyle(PlainListStyle())
            //.navigationBarTitle("ToDoList", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("ToDoList")
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddtoDo()) {
                        Text("+")
                            .foregroundColor(.blue)
                    }
                }
              }
            }
        }
 
        
        
        
        #Preview {
            NavigationView{
                
                ToDoMainPage()
            }
            .environmentObject(ListViewModel())
        }
        
        func Add() {
            // sign-in functionality here
            print("lets go button tapped")
        }
        
        struct ListRowView: View {
            let item: model
            var body: some View {
                HStack{
                    
                    Image(systemName:item.isCompleted ?  "checkmark.circle": "circle")
                        .foregroundColor(item.isCompleted ? .green : .red)
                    Text(item.title)
                        .foregroundColor(.blue)
                    Spacer()
                }
            }
        }

    
