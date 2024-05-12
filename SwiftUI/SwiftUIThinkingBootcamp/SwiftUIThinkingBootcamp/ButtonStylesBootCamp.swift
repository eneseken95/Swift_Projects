//
//  ButtonStylesBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.05.2024.
//

import SwiftUI

struct ButtonStylesBootCamp: View {
    
    var body: some View {
        VStack {
            Button(action: {
            }, label: {
                Text("Button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)

            Button("Button title") {
            }
            .frame(height: 55)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button("Button title") {
            }
            .frame(height: 55)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
            .buttonStyle(.bordered)
            .controlSize(.small)

            Button("Button title") {
            }
            .frame(height: 55)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderless)
            .controlSize(.small)
        }
    }
}

#Preview {
    ButtonStylesBootCamp()
}
