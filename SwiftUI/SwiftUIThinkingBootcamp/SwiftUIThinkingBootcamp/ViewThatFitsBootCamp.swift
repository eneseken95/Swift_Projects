//
//  ViewThatFitsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

struct ViewThatFitsBootCamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding()
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootCamp()
}
