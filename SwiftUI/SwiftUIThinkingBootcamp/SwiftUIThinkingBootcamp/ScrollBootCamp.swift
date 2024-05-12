//
//  ScrollBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct ScrollBootCamp: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0 ..< 2) { _ in
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(0 ..< 2) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollBootCamp()
}
