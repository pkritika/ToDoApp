//
//  ListViewModel .swift
//  ToDoApp
//
//  Created by cslinxs on 6/26/24.
//

import Foundation
class ListViewModel: ObservableObject{
    @Published var items : [model] = []{
        
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    init(){
        getItems()
    }
    func getItems(){
//        let newItems = [
//            model(title: "1", isCompleted: false),model(title: "2", isCompleted: true)
//        ]
//        items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([model].self, from:data)
        else{return}
        
        self.items = savedItems
        
    }
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        
    }
    
    func addItem(title: String){
        let newItem = model(title: title, isCompleted: false)
        items.append(newItem)

    }
    
    func updateItem(item: model){
        if let index = items.firstIndex(where:{$0.id == item.id}){
            items[index] = item.updateisComplete()
        }
    }
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
