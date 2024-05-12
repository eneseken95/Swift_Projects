//
//  FrameBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 22.04.2024.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            // .frame(width: 200, height: 100,  alignment: .leading)
            // .frame(maxWidth: .infinity, maxHeight: .infinity)
            .frame(width: 200, height: 150, alignment: .top)
            .background(Color.orange)
            .frame(width: 300, height: 400)
            .background(Color.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            .background(Color.orange)
    }
}

#Preview {
    FrameBootCamp()
}
