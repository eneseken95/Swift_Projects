//
//  BadgesBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.05.2024.
//

import SwiftUI

struct BadgesBootCamp: View {
    var body: some View {
        List {
            Text("Hello World")
                .badge(5)
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        Spacer()

        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("New")

            Color.pink
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(5)

            Color.orange
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(10)
        }
    }
}

#Preview {
    BadgesBootCamp()
}
