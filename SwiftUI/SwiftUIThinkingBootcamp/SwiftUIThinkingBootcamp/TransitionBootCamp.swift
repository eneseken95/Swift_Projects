//
//  TransitionBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 26.04.2024.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    //.animation(.easeInOut)
            }
        }
    }
}

#Preview {
    TransitionBootCamp()
}
