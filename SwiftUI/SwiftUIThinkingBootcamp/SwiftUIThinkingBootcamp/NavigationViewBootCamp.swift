//
//  NavigationViewBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 27.04.2024.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView(content: {
            ScrollView {
                NavigationLink("Hello Word", destination: MyOtherScreen())

                Text("Hello Word")
                Text("Hello Word")
                Text("Hello Word")
                Text("Hello Word")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/ .automatic/*@END_MENU_TOKEN@*/)
            // .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },

                trailing: NavigationLink(destination: MyOtherScreen(), label: {
                    NavigationLink(destination: MyOtherScreen()) {
                        Image(systemName: "gear")
                            .accentColor(.orange)
                            .font(.title)
                    }

                })
            )

        })
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
            // .navigationBarHidden(true)

            VStack {
                Button("Back Button") {
                    dismiss()
                }

                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootCamp()
}
