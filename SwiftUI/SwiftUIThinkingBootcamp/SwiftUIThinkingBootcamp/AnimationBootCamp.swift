//
//  AnimationBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        // .repeatForever(autoreverses: false)
                        .repeatCount(5, autoreverses: true)

                ) {
                    isAnimated.toggle()
                }
            }

            Spacer()

            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.orange)
                .frame(
                    width: isAnimated ? 100 : 100,
                    height: isAnimated ? 100 : 100
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)

            Spacer()
        }
    }
}

#Preview {
    AnimationBootCamp()
}
