//
//  TodoItem.swift
//  TodoList
//
//  Created by Michael on 2025/2/1.
//

import Foundation

struct TodoItem: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
}
let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TodoItem(title: "Finish CS assignment", done: true)

let thirdItem = TodoItem(title: "Go for around campus", done: false)


let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
]
