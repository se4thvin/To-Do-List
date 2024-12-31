//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //header
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.darkPurple)
                .rotationEffect(Angle(degrees: 15))
                .shadow(radius: 10)
                .offset(y: -125)
            VStack{
                Text("To-Do-List")
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .bold()
                Text("Get your tasks done")
                    .font(.subheadline)
                    .foregroundStyle(Color.white)
                    .bold()
                
            }
            .offset(y: -125)
            //.padding()
            //.offset(y: -125)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 500)
    }
}

#Preview {
    HeaderView()
}
