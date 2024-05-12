//
//  GradientBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.04.2024.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .shadow(color: /*@START_MENU_TOKEN@*/ .black/*@END_MENU_TOKEN@*/, radius: 8)
            .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)

        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                AngularGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                                center: .topLeading,
                                angle: .degrees(180 + 45))
            )
            .shadow(color: /*@START_MENU_TOKEN@*/ .black/*@END_MENU_TOKEN@*/, radius: 8)
            .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GradientBootcamp()
}
