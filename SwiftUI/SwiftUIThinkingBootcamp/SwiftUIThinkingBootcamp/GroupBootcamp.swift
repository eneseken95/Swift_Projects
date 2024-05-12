//
//  GroupBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")

            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .font(.caption)
            .foregroundStyle(.green)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.orange)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
