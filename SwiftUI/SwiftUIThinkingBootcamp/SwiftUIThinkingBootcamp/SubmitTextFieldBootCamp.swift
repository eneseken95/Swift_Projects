//
//  SubmitTextFieldBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct SubmitTextFieldBootCamp: View {
    @State private var text: String = ""

    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                }

            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
                }

            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
                }
        }
    }
}

#Preview {
    SubmitTextFieldBootCamp()
}
