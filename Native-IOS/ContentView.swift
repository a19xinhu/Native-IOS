//
//  ContentView.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-16.
//

import SwiftUI

struct ContentView: View {
    //  \   { }    [ ]
    @State var item : [String] = [
        "One",
        "Two",
        "Three",
        "Four"
    ]
    
    var body: some View {
        List{
            Section(
            header: Text("Item")){
                ForEach(item, id: \.self){ item in
                    Text(item.capitalized)
                }
                .onDelete(perform: deleteAll)
            }
        }
    }
    
    func deleteAll(indexSet:IndexSet){
        item.removeAll()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
