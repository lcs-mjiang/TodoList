//
//  ContentView.swift
//  TodoList
//
//  Created by Michael on 2025/1/30.
//
import SwiftData

import SwiftUI

struct LandingView: View {

    // MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescription = ""
    
    // The search text
    @State var searchText = ""
    
    // Access the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext
    
    // The list of to do item
    @Query var todos: [TodoItem]
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
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
                .onAppear {
                    printCommandToOpenDatabaseFile()
                }
        }
    }
    // MARK: Functions
    func createToDo(withTitle title: String) {

        // Create the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )

        // Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}


#Preview{
    LandingView()
        .modelContainer(TodoItem.preview)
}


