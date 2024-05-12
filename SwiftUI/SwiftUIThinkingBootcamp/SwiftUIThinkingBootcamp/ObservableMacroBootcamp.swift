//
//  ObservableMacroBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

@Observable class ObservableViewModel2 {
    
    var title: String = "Some title"
    //@ObservationIgnored var value: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    @State private var viewModel2 = ObservableViewModel2()

    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel2.title) {
                viewModel2.title = "new title!"
            }

            SomeChildView2(viewModel2: viewModel2)

            SomeThirdView2()
        }
        .environment(viewModel2)
    }
}

struct SomeChildView2: View {
    @Bindable var viewModel2: ObservableViewModel2

    var body: some View {
        Button(viewModel2.title) {
            viewModel2.title = "Second View"
        }
    }
}

struct SomeThirdView2: View {
    @Environment(ObservableViewModel2.self) var viewModel2

    var body: some View {
        Button(viewModel2.title) {
            viewModel2.title = "Third View"
        }
    }
}

#Preview {
    ObservableMacroBootcamp()
}
