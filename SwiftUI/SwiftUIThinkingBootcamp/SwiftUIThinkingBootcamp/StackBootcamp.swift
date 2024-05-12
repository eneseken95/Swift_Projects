//
//  StackBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: 650, height: 700)
            VStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                HStack(alignment: .top, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)

                })

            }.background(Color.gray)
        }
    }
}

#Preview {
    StackBootcamp()
}
