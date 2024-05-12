//
//  TapGestureBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 7.05.2024.
//

import SwiftUI

struct TapGestureBootCamp: View {
    
    @State var isSelected: Bool = false

    var body: some View {
        VStack(spacing: 20.0) {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .orange : .blue)

            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: 200)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))

            })

            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: 200)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .onTapGesture {
                    isSelected.toggle()
                }

            Text("TAP Gesture 2")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: 200)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })

            Spacer()
        }
        .padding()
    }
}

#Preview {
    TapGestureBootCamp()
}
