//
//  TernaryBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct TernaryBootCamp: View {
    @State var isStartingState: Bool = false

    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
        }
        Text(isStartingState ? "Starting State" : "Ending State")

        RoundedRectangle(cornerRadius: isStartingState ? 20 : 0)
            .fill(isStartingState ? .red : .orange)
            .frame(width: isStartingState ? 100 : 90, height: isStartingState ? 50 : 200)
        Spacer()
    }
}

#Preview {
    TernaryBootCamp()
}
