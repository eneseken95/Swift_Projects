//
//  TabViewBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 6.05.2024.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab, content: {
            houseView(selectedTab: $selectedTab).tabItem {
                Image(systemName: "house.fill")
                Text("browse")
            }.tag(0)

            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("browse")
                }.tag(1)

            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("person")

                }.tag(2)
        }).tint(Color.pink)
    }
}

#Preview {
    TabViewBootCamp()
}

struct houseView: View {
    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            VStack {
                Text("Home Page")
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)

                Button(action: {
                    selectedTab = 2

                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))

                }).tint(Color.white)
            }
        }
    }
}
