//
//  DarkModeBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 6.05.2024.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20.0) {
                    Text("Color : 1")
                        .foregroundStyle(.primary)

                    Text("Color : 2")
                        .foregroundStyle(.secondary)

                    Text("Color : 3")
                        .foregroundStyle(.black)

                    Text("Color : 4")
                        .foregroundStyle(.white)

                    Text("This color is globally Adaptive!")
                        .foregroundStyle(Color("AdaptiveColor"))

                    Text("This color is locally Adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
        }
    }
}

#Preview {
    DarkModeBootCamp()
}
