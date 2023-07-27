//
//  LoginViewViewModel.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMassege = ""
    
    init() {}
    
    func login() {
        guard validate() else { return }
        
        //Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    func validate() -> Bool {
        errorMassege = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMassege = "Please fill in all fields."
            return false
        }
        
        //email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMassege = "Please enter valid email."
            return false
        }
        return true
    }
}
