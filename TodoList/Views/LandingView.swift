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
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text:
                                $newItemDescription)
                    
                    Button("Add"){
                        //Add a new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
                .navigationTitle("To do")
            
        }
    }
}

#Preview{
    LandingView()
}


