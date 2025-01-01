//
//  TLButton.swift
//  ToDoList
//
//  Created by Sethvin Nanayakkara on 12/31/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: ()->Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                    .frame(height: 50)
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .font(.headline)
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    TLButton(title: "Log in", backgroundColor: .oceanBlue) {
        //action
    }
}
