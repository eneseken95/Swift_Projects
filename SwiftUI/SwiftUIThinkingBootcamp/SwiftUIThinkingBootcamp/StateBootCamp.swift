//
//  StateBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct StateBootCamp: View {
    @State var background: Color = Color.orange
    @State var myTitle: String = "My title"
    @State var count: Int = 0

    var body: some View {
        ZStack {
            background.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("count: \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {
                    Button("Button 1") {
                        background = Color.blue
                        myTitle = "Button 1 pressed"
                        count += 1
                    }
                    .accentColor(.white)
                }
            }
        }
    }
}

#Preview {
    StateBootCamp()
}
