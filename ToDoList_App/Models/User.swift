//
//  User.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
