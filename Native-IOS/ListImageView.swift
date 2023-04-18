//
//  ListImageView.swift
//  Native-IOS
//
//  Created by Jie Lu on 2023-04-18.
//

import SwiftUI

struct ListImageView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack
        {
            Image(item.image)
        }
    }
}
struct ListImageView_Previews: PreviewProvider {
    static var item1 = ItemModel(image: "rating-5")
    
    static var previews: some View {
        ListImageView(item:item1)
    }
}
