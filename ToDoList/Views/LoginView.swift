//
//  LoginView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            //header
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color.blue)
                //.rotationEffect(Angle(degrees: 20))
                    .shadow(radius: 10)
                
                VStack{
                    Text("To-DO-List")
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .bold()
                    Text("Get your tasks done")
                        .font(.subheadline)
                        .foregroundStyle(Color.white)
                        .bold()
                    
                }
                .padding()
                .offset(y: -125)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            //.offset(y: -125)
            
            Spacer()
            
            
        }
    }
}

#Preview {
    LoginView()
}
