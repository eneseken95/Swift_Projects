//
//  ContextMenuBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 2.05.2024.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    
    @State var background: Color = .pink

    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            Text("SwitfUI")
                .font(.headline)
            Text("How to use Context Menu")
        }
        .padding()
        .foregroundStyle(.white)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                background = .orange
            }, label: {
                Label("Share Post", image: "flame.fill")
            })

            Button(action: {
                background = .blue
            }, label: {
                Text("Report Post")
            })

            Button(action: {
                background = .green
            }, label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            })

        }))
    }
}

#Preview {
    ContextMenuBootCamp()
}
