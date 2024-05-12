//
//  ConditionalBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 18) {
            Button("İs Loading".uppercased()) {
                isLoading.toggle()
            }

            if isLoading {
                ProgressView()
                    .frame(width: 70, height: 70)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }

            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }

            if showCircle {
                Circle()
                    .fill(Color.orange)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }

            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }

            if showRectangle {
                Rectangle()
                    .fill(Color.blue)
                    .padding(10)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }

            if showCircle && showRectangle {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .overlay(
                        Circle()
                            .fill(Color.orange)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    )
            }
        }
    }
}

#Preview {
    ConditionalBootCamp()
}
