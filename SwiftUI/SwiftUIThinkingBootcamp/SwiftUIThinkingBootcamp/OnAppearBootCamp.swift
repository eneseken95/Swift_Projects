//
//  OnAppearBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 7.05.2024.
//

import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)

                LazyVStack {
                    ForEach(0 ..< 50) { _ in
                        RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)
                            .fill(Color.orange)
                            .frame(width: 300, height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
                    myText = "This is the new text"
                }

            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearBootCamp()
}
