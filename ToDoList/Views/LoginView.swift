//
//  LoginView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                //header
                HeaderView()
                
                Spacer()
                //Login form
                Form {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        //Log in
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.oceanBlue)
                                .padding()
                            Text("Log in")
                                .foregroundColor(Color.white)
                                .font(.headline)
                                .padding()
                        }
                    }
                    .padding()
                }
                
                VStack{
                    Text("Don't have an account?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 10)
                }
                
                
                
                Spacer()
            }
        
        }
            
    }
}

#Preview {
    LoginView()
}
