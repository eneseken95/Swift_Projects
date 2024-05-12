//
//  NavigationStackBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    let fruits = ["Apple", "Orange", "Banana"]

    @State private var stackPath: [String] = []

    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    Button("Super segue") {
                        stackPath.append(contentsOf:
                            ["Cocunat", "Watermelon", "Mango"]
                        )
                    }
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }

                    ForEach(0 ..< 10) { x in
                        NavigationLink(value: x) {
                            Text("Click me:\(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav BootCamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }

            .navigationDestination(for: String.self) { value in
                Text("Another Screen: \(value)")
            }
        }
    }

    struct MySecondScreen: View {
        let value: Int

        init(value: Int) {
            self.value = value
            print("INIT SCREEN: \(value)")
        }

        var body: some View {
            Text("SCREEN: \(value)")
        }
    }
}

#Preview {
    NavigationStackBootCamp()
}
