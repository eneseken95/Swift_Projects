//
//  ListSwipeBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.05.2024.
//

import SwiftUI

struct ListSwipeBootCamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach",
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: /*@START_MENU_TOKEN@*/ .trailing/*@END_MENU_TOKEN@*/, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                        Button("Archive") {
                        }
                        .tint(.green)

                        Button("Save") {
                        }
                        .tint(.blue)

                        Button("Junk") {
                        }
                        .tint(.pink)
                    }

                    .swipeActions(edge: .leading, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                        Button("Share") {
                        }
                        .tint(.orange)
                    }
            }
        }
    }
}

#Preview {
    ListSwipeBootCamp()
}
