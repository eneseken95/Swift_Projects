//
//  AnimationTimingBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 26.04.2024.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimated: Bool = false
    let timing: Double = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0
                )
                )
        }
    }
}

#Preview {
    AnimationTimingBootCamp()
}
