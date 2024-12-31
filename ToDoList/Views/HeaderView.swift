//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/30/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    
    
    var body: some View {
        //header
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
                .shadow(radius: 10)
                .offset(y: -125)
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
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
    HeaderView(title: "Title", subTitle: "Sub Title", angle: 15, background: .darkPurple)
}
