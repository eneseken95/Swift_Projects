//
//  BindingBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var background: Color = Color.green
    @State var title: String = "title"

    var body: some View {
        ZStack {
            background.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            VStack {
                Text("Title")
                    .foregroundStyle(Color.white)
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                ButtonView(background: $background, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var background: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue

    var body: some View {
        Button(action: {
            background = Color.orange
            buttonColor = Color.pink
            title = "New Title"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        })
    }
}

#Preview {
    BindingBootCamp()
}
