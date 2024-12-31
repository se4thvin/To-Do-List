//
//  LoginFormView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginFormView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        ZStack {
                   // Background (Optional for demonstration)
//                   Color(.systemBackground)
//                       .edgesIgnoringSafeArea(.all)
                       //.foregroundColor(colorScheme == .dark ? Color.oceanBlue : Color.softPink)
                   // Blurred RoundedRectangle
                   RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray.opacity(0)) // Slightly transparent background
                        .blur(radius: 10) // Blur effect for the background
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5) // Drop shadow
                        .padding()
                   
                   // Login Form
                   VStack(spacing: 16) {
                       TextField("Username", text: $username)
                           .textFieldStyle(DefaultTextFieldStyle())
                           .padding()
                           .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0)))
                           .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)

                       SecureField("Password", text: $password)
                           .textFieldStyle(DefaultTextFieldStyle())
                           .padding()
                           .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0)))
                           .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)

                       Button {
                           // Log in action
                       } label: {
                           ZStack {
                               RoundedRectangle(cornerRadius: 10)
                                   .foregroundColor(Color.oceanBlue)
                                   .frame(height: 50)
                               Text("Log in")
                                   .fontWeight(.semibold)
                                   .foregroundColor(Color.white)
                                   .font(.headline)
                           }
                       }
                       .padding(.horizontal, 20)
                   }
                   .padding()
               }
               .padding(.horizontal, 20)
    }
}

#Preview {
    LoginFormView()
}
