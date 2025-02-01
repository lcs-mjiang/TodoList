//
//  ItemView.swift
//  TodoList
//
//  Created by Michael on 2025/2/1.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {Text(title) },
            icon: {
                Image(systemName: done == true ? "checkmark.circle" : "ciecle")
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
        ItemView(title: "Have a nap", done: false)
        ItemView(title: "Eat lunch", done: false)
    }
}
