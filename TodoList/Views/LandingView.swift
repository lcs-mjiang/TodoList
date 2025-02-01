//
//  ContentView.swift
//  TodoList
//
//  Created by Michael on 2025/1/30.
//

import SwiftUI

struct LandingView: View {

    // MARK: Stored properties

    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Study for Chemistry quiz")
                    Text("Study for bio test")
                    Text("Walk around in campus")
                }
            }
                .navigationTitle("To do")
            
        }
    }
}

#Preview{
    LandingView()
}
