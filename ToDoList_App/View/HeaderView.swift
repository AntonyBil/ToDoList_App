//
//  HeaderView.swift
//  ToDoList_App
//
//  Created by apple on 25.07.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.mint)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color(.white))
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundColor(Color(.white))
                
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
        
    }
}



struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
