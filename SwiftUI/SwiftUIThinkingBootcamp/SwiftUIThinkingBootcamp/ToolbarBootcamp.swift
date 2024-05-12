//
//  ToolbarBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []

    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()

                ScrollView {
                    TextField("Placeholder", text: $text)

                    ForEach(0 ..< 50) { _ in
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 200, height: 100)
                    }
                }
            }
            .navigationTitle("Toolbar")

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                        .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                        .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                }
            }
//            .navigationBarHidden(true)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
//            .navigationBarTitleDisplayMode(.inline)

            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
