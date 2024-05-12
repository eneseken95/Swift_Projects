//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        ContentUnavailableView.search(text: "search")
        Spacer()
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to the internet and try again.")
        )
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
