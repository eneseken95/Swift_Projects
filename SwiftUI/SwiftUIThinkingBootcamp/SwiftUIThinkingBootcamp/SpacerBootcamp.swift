//
//  SpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    
    var body: some View {
        Spacer()
        HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Image(systemName: "heart.fill")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 75, height: 75)
                ).padding(.leading, 40)
            Spacer()

            Image(systemName: "magnifyingglass")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 75, height: 75)
                )

            Spacer()

            Image(systemName: "person.fill")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 75, height: 75)
                )
                .padding(.trailing, 40)

        }).background(
            Rectangle()
                .fill(Color.gray)
                .frame(width: 300, height: 75)
                .cornerRadius(10)
                .padding(.leading, 8)
                .padding()
        )
    }
}

#Preview {
    SpacerBootcamp()
}
