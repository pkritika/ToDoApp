//
//  AddtoDo.swift
//  ToDoApp
//
//  Created by cslinxs on 6/26/24.
//

import SwiftUI

struct AddtoDo: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel    //Allows a data model that needs to be accessed and updated by multiple views, you use @EnvironmentObject to inject that data model into those views
    @State private var todoTitle: String = ""

    var body: some View {
                ScrollView{
                    VStack{
                        TextField("Add Your task" , text : $todoTitle)
                            .padding(.horizontal)
                            .frame(height: 50)
                        
                        Button(action: saveButtonPressed, label:{
                            Text("Save".uppercased())
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(height:55)
                                .frame(maxWidth: .infinity)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                        })
                        
                
                    }
                    .padding(14)
                }
                .navigationTitle("Add your task")
            }
    func saveButtonPressed(){
        listViewModel.addItem(title: todoTitle)
        presentationMode.wrappedValue.dismiss()
        
    }
    }


#Preview {
    AddtoDo()
}

