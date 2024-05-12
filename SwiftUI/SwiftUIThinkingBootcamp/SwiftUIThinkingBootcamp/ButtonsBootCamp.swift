//
//  ButtonsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct ButtonsBootCamp: View {
    @State var title: String = "Tittle"

    var body: some View {
        VStack(spacing: 20) {
            Text(title)

            Button("button") {
                self.title = "Button was pressed"
            }
            .accentColor(Color.blue)

            Button(action: {
                self.title = "Saved"

            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )

            })

            Button(action: {
                self.title = "Liked"

            }, label: {
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.pink, Color.red], startPoint: .topLeading, endPoint: .bottomLeading)
                    )
                    .frame(width: 75, height: 75)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }

            })

            Button(action: {
                self.title = "Finish"
            }, label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootCamp()
}
