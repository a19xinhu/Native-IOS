//
//  ContentView.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-16.
//

import SwiftUI

struct ContentView: View {
    //  \   { }    [ ]
    @State var item : [ItemModel] = [
        ItemModel(image:"rating-1"),
        ItemModel(image:"rating-2"),
        ItemModel(image:"rating-3"),
        ItemModel(image:"rating-4"),
    ]
    
    var body: some View {
        List
        {
            ForEach(item){item in
                ListImageView(item:item)
            }
        }
        .navigationTitle("Image")
    }
    
//            .onDelete(perform: deleteAll)
//    func deleteAll(indexSet:IndexSet){
//        item.removeAll()
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
                ContentView()
            }
    }
}


