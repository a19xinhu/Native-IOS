//
//  ContentView.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-16.
//

import SwiftUI

struct ContentView: View {
    //  \   { }    [ ]
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List  //list includes image
        {
            ForEach(listViewModel.items){item in
                ListImageView(item:item)
            }
            //drag and delete all element in item
            .onDelete(perform: listViewModel.deleteAll)
            .onMove(perform: listViewModel.moveItem)
        }
        .navigationTitle("Image")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
                ContentView()
        }
        .environmentObject(ListViewModel())
    }
}


