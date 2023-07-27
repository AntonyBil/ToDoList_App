//
//  MainViewViewModel.swift
//  ToDoList_App
//
//  Created by apple on 27.07.2023.
//
import Firebase
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var hendler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.hendler = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
