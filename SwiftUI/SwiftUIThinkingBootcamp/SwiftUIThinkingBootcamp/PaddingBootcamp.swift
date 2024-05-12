//
//  PaddingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
            Text("Hello World !")
                .font(.title)
                .padding(.bottom, 8)
                .fontWeight(.bold)
            Text("This is the descreption of what will do on the screen")
                .font(.title3)
        }
        .padding(7)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        .background(
            Color.white
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2, y: 10)
        )
    }
}

#Preview {
    PaddingBootcamp()
}
