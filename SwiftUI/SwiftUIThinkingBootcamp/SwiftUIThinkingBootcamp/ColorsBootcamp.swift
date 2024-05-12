//
//  ColorsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.04.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .fill(Color.primary)
            .fill(
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
//            .shadow(radius: 70)
            .shadow(color: Color("CustomColor").opacity(0.8), radius: 7, x: 0, y: 9)
    }
}

#Preview {
    ColorsBootcamp()
}
