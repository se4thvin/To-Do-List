//
//  LoginView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct LoginView: View {
    
    
    var body: some View {
        GeometryReader { geometry in
                NavigationView {
                    ZStack{
                        VStack{
                            //header
                            HeaderView(title: "To Do List", subTitle: "Get your tasks done", angle: 15, background: .darkPurple)
                            Spacer()
                        }
                        VStack{
                            //Login form
                            LoginFormView(title:"Login")
                                .frame(maxWidth:geometry.size.width * 0.9, maxHeight: geometry.size.height * 0.8)
                                .offset(y: 200)
                        }
                        VStack {
                            Spacer()
                            VStack {
                                Text("Don't have an account?")
                                NavigationLink("Create An Account", destination: RegisterView())
                            }
                            .padding(.bottom, 20)
                        }
                        
                    }
                    
                }
                
            }
        
        }
        
    }


#Preview {
    LoginView()
}
