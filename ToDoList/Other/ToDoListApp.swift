//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/29/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
