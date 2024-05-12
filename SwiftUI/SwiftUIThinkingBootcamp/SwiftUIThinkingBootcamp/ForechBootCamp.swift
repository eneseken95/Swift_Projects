//
//  ForechBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct ForechBootCamp: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"

    var body: some View {
        VStack(content: {
            ForEach(data.indices, id: \.self) { index in

                Text("\(data[index]): \(index)")
            }

            HStack(content: {
                ForEach(1 ..< 10) { _ in

                    Circle()
                        .fill(Color.orange)
                        .padding(3)
                }
            })

        })
    }
}

#Preview {
    ForechBootCamp()
}
