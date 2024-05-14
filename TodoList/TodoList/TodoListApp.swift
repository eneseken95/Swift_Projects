//
//  TodoListApp.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
