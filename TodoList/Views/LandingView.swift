//
//  ContentView.swift
//  TodoList
//
//  Created by Michael on 2025/1/30.
//

import SwiftUI

struct LandingView: View {

    // MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescription = ""
    
    // The search text
    @State var searchText = ""
    
    // The list of to do item
    @State var todos: [TodoItem] = exampleItems
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            
            VStack {
                
                List(todos) { todo in
                    
                    ItemView(currentItem: todo)
                    //ItemView(currentItem: firstItem)
                    //ItemView(currentItem: secondItem)
                    //ItemView(currentItem: thirdItem)
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("Add"){
                        //Add a new to-do item
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
                .navigationTitle("To do")
            
        }
    }
    // MARK: Functions
    func createToDo(withTitle title: String) {

        // Create the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )

        // Append to the array
        todos.append(todo)
    }
}

#Preview{
    LandingView()
}


