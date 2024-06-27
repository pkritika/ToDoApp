//
//  model.swift
//  ToDoApp
//
//  Created by cslinxs on 6/26/24.
//

import Foundation

struct model: Identifiable , Codable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateisComplete () -> model{
        return model(id: id, title: title, isCompleted: !isCompleted)
    }
}
