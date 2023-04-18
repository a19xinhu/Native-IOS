//
//  ItemModel.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-18.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let image: String
}
