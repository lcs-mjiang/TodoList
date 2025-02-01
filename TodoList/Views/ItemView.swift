//
//  ItemView.swift
//  TodoList
//
//  Created by Michael on 2025/2/1.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            },icon: {
                Image(systemName: currentItem.done == true ?
                      "checkmark.circle" : "circle")
                // Tap to mark as down
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
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
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
    }
}
