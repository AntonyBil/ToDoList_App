//
//  ToDoList_AppApp.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoList_AppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
