//
//  AnimationUpdatedBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Button("Action 1") {
                    animate1.toggle()
                }

                Button("Action 2") {
                    animate2.toggle()
                }

                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: animate2 ? .top : .bottom)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.orange)
            }
        }
        .animation(.spring(), value: animate1)
        .animation(.linear(duration: 2), value: animate2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
