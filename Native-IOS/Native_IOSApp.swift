//
//  Native_IOSApp.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-16.
//

import SwiftUI

@main
struct Native_IOSApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                    ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
