//
//  TodoListApp.swift
//  TodoList
//
//  Created by Michael on 2025/1/30.
//

import SwiftData
import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
