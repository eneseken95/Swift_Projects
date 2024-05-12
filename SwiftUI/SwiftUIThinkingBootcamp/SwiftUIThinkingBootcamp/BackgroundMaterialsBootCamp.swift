//
//  BackgroundMaterialsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.05.2024.
//

import SwiftUI

struct BackgroundMaterialsBootCamp: View {
    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(Image("image"))
    }
}

#Preview {
    BackgroundMaterialsBootCamp()
}
