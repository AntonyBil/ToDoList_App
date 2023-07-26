//
//  RegisterView.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .purple)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    //Attempt registration
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
