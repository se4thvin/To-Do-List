//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

    struct RegisterView: View {
        var body: some View {
            //GeometryReader { geometry in
                        ZStack{
                            VStack{
                                //header
                                HeaderView(title: "Register Now", subTitle: "Get organized today", angle: -15, background: .red)
                                Spacer()
     
                            }
                            VStack{
                                //Login form
                                RegisterFormView(title:"Register")
                                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.8)
                                    //.padding(.horizontal, 20)
                                    .offset(y: 200)
                            }
                    }
            //}
        }
    }


#Preview {
    RegisterView()
}
