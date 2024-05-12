//
//  AppStorageBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 9.05.2024.
//

import SwiftUI

struct AppStorageBootCamp: View {
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")

            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootCamp()
}
