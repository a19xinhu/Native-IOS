//
//  ListViewModel.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-18.
//

import Foundation

class ListViewModel: ObservableObject {
   
    @Published var items : [ItemModel] = [ ]
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(image:"rating-1"),
            ItemModel(image:"rating-2"),
            ItemModel(image:"rating-3"),
            ItemModel(image:"rating-4"),
        ]
        items.append(contentsOf: newItems)
    }
    //delete all function
    func deleteAll(indexSet:IndexSet){
        items.removeAll()
    }
    //move function
    func moveItem(from:IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    //add image function five haert
    func addItem(){
        let newItem = ItemModel(image: "rating-5")
        items.append(newItem)
    }
    //add image function five haert 10 times
    func addItem105(){
        var i = 0;
        while i<10{
            let newItem = ItemModel(image: "rating-5")
            items.append(newItem)
            i = i + 1
        }
    }
    //add image function one haert 10 times
    func addItem101(){
        var i = 0;
        while i<10{
            let newItem = ItemModel(image: "rating-1")
            items.append(newItem)
            i = i + 1
        }
    }
    
    
}
