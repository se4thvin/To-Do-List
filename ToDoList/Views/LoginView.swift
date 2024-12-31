//
//  LoginView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginView: View {
    
    
    var body: some View {
        NavigationView {
            VStack{
                //header
                HeaderView()
                
                Spacer()
                //Login form
                LoginFormView()
                
                
                VStack{
                    
                    Text("Don't have an account?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 10)
                }
                .offset(y: 10)
                
                
                Spacer()
            }
        
        }
            
    }
}

#Preview {
    LoginView()
}
