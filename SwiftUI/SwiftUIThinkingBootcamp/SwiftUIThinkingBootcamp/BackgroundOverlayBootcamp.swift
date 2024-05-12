//
//  BackgroundOverlayBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 22.04.2024.
//

import SwiftUI

struct BackgroundOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .pink, radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 32, height: 32)

                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.title2)
                            )
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundOverlayBootcamp()
}
