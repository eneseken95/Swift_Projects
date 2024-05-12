//
//  EnvironmentObjectBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 9.05.2024.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        dataArray.append(contentsOf: ["İphone", "İpad", "İmac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootCamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }

            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink(
                destination: FinalView(),
                label: { Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                }
            )
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.pink, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootCamp()
}
