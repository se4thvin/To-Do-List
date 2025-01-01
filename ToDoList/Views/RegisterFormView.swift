//
//  RegisterFormView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/31/24.
//

import SwiftUI

struct RegisterFormView: View {
    
    let title: String
    @Environment(\.colorScheme) var colorScheme
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 16) {
                    Text(title)
                        .font(.system(size: 24))
                        .foregroundStyle(colorScheme == .dark ? Color.white : Color.white)
                        .fontWeight(.semibold)
                    TextField("Full Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.powderpurple.opacity(0.3)))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.powderpurple.opacity(0.3)))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.powderpurple.opacity(0.3)))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    
                    TLButton(title:"Create Account", backgroundColor: .oceanBlue) {
                        //register action
                    }
                }
                .frame(
                    maxWidth: geometry.size.width * 0.9,
                    maxHeight: geometry.size.height * 0.5
                )
                .padding()

                .padding(.horizontal, 20)
            }
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.ultraThinMaterial) // Frosted glass effect
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
            )
        }
    }
}

#Preview {
    RegisterFormView(title:"Register")
}
