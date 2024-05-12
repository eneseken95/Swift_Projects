//
//  SliderTabViewBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 6.05.2024.
//

import SwiftUI

struct SliderTabViewBootCamp: View {
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]

    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)
                .fill(.orange)
                .padding(.trailing, 20)
                .padding(.leading, 20)

            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)
                .fill(.blue)
                .padding(.trailing, 20)
                .padding(.leading, 20)

            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)
                .fill(.pink)
                .padding(.trailing, 20)
                .padding(.leading, 20)
        }
        .frame(width: 400, height: 270)
        .tabViewStyle(PageTabViewStyle())

        Spacer()

        TabView {
            ForEach(icons, id: \.self) { icon in

                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(Gradient(colors: [Color.pink]))
        .frame(height: 200)
        .tabViewStyle(PageTabViewStyle())

        Spacer()
    }
}

#Preview {
    SliderTabViewBootCamp()
}
