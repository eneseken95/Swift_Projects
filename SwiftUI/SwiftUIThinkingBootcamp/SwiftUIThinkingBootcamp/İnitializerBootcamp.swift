//
//  İnitializerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 23.04.2024.
//

import SwiftUI

struct I_nitializerBootcamp: View {
    
    let background: Color
    let count: Int
    let title: String

    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .apple {
            background = .red
            title = "apples"
        } 
        else {
            background = .orange
            title = "oranges"
        }
    }

    enum Fruit {
        case apple
        case orange
    }

    var body: some View {
        VStack(content: {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()

            Text(title)
                .font(.title2)
                .foregroundStyle(Color.white)

        })
        .frame(width: 150, height: 150)
        .background(background)
        .cornerRadius(10)
        .padding(20)
    }
}

#Preview {
    HStack {
        I_nitializerBootcamp(count: 20, fruit: .orange)
        I_nitializerBootcamp(count: 20, fruit: .apple)
    }
}
