//
//  ContentView.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
        }, label: {
            Text("Button")

                .foregroundStyle(.white)
                .padding()
                .padding(.trailing, 50)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))

        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
