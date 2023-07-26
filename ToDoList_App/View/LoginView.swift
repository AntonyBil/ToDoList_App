//
//  LoginView.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Grt things done",
                           angle: 15,
                           background: .mint)
                
                //Login Form
                Form {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        //Attempt log in
                    }
                    
                }
                .offset(y: -50)
                
                Divider()
                
                //Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
