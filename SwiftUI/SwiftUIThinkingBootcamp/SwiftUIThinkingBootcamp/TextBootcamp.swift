//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.04.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is swiftUI Thiking".uppercased())
//            .font(.callout)
//            .bold()
//            .underline(color: Color.red)
            .font(.title)
//            .font(.system(size: 24, weight: .bold, design: .monospaced))
//            .baselineOffset(12)
//            .kerning(3)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 270, alignment: .center)
            .foregroundColor(Color.blue)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
