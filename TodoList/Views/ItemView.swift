//
//  ItemView.swift
//  TodoList
//
//  Created by Michael on 2025/2/1.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },icon: {
                Image(systemName: currentItem.done == true ?
                      "checkmark.circle" : "circle")
//                if done == true {
//                    Image(systemName: "checkmark.circle")
//                } else {
//                    Image(systemName: "circle")
//                }
            }
        )
    }
}
#Preview {
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
    }
}
