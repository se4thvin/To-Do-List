//
//  LoginFormView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginFormView: View {
    
    let title: String
    @Environment(\.colorScheme) var colorScheme
    @StateObject var viewModel = LoginFormViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 16) {
					
					Text(title)
						.font(.system(size: 24))
						.foregroundStyle(colorScheme == .dark ? Color.white : Color.white)
						.fontWeight(.semibold)
					
					if !viewModel.errorMessage.isEmpty {
						Text(viewModel.errorMessage)
							.foregroundStyle(Color.red)
					}
					
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.powderpurple.opacity(0.3)))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
					SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.powderpurple.opacity(0.3)))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    
                    TLButton(title: "Log in", backgroundColor: .oceanBlue) {
						viewModel.login()
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
    LoginFormView(title: "Login")
}
