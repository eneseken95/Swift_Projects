//
//  MenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me!") {
            Button("One") {
            }
            Button("Two") {
            }
            Button("Theree") {
            }
            Button("Four") {
            }
        }
    }
}

#Preview {
    MenuBootcamp()
}
