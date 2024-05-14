//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.05.2024.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    
    var body: some View {
        NavigationStack {
            List(0 ..< 10) { _ in
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 300)
                    .overlay(
                            Image("image")
                                .resizable()
                                
                        )
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                    .padding()
            }
            .navigationTitle("Safe Area Insets")
//            .navigationBarTitleDisplayMode(.inline)
//            .overlay {
//                Text("Hi")
//                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                    .background(.yellow)
//                ,alignment: .bottom
//            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Home Page")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("return")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
