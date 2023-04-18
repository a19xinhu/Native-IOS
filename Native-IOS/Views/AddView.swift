//
//  AddView.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-18.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        
        ScrollView
        {
            VStack
            {
                        //button function
                Button(action:savButtonPressed1fiveheart, label:
                { //button label style and text
                    Text("Add".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                })
                //button 10 times five heart
                Button(action:savButtonPressed10oneheart, label:
               {
                   Text("Add 10 times one haert".uppercased())
                   .foregroundColor(.white)
                   .font(.headline)
                   .frame(height: 55)
                   .frame(maxWidth: .infinity)
                   .background(Color.accentColor)
                   .cornerRadius(10)
               })
                //button 10 times one heart
                Button(action:savButtonPressed10fiveheart, label:
               {
                   Text("Add 10 times five haert".uppercased())
                   .foregroundColor(.white)
                   .font(.headline)
                   .frame(height: 55)
                   .frame(maxWidth: .infinity)
                   .background(Color.accentColor)
                   .cornerRadius(10)
               })
            }
            .padding(14)
        }
        .navigationTitle("Add an image")
    }
    //button function when press
    func savButtonPressed1fiveheart(){
        listViewModel.addItem()
        presentationMode.wrappedValue.dismiss()
    }
    
    func savButtonPressed10oneheart(){
        listViewModel.addItem101()
        presentationMode.wrappedValue.dismiss()
    }
    
    func savButtonPressed10fiveheart(){
        listViewModel.addItem105()
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
