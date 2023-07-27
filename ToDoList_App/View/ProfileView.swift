//
//  ProfileView.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewmodel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
