//
//  ObservableObjectBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

class ObservableViewModel: ObservableObject {
    @Published var title: String = "Some title"
}

struct ObservableBootcamp: View {
    @StateObject private var viewModel = ObservableViewModel()

    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title"
            }

            SomeChildView(viewModel: viewModel)

            SomeThirdView()
        }
        .environmentObject(viewModel)
    }
}

struct SomeChildView: View {
    @ObservedObject var viewModel: ObservableViewModel

    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Second View"
        }
    }
}

struct SomeThirdView: View {
    @EnvironmentObject var viewModel: ObservableViewModel

    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
