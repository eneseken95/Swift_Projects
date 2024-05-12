//
//  ActionsSheetsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 1.05.2024.
//

import SwiftUI

struct ActionsSheetsBootCamp: View {
    
    @State var showActionSheet: Bool = false

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(Gradient(colors: [.primary]))
            }
            .padding(.horizontal)

            Rectangle()
                .aspectRatio(contentMode: .fit)

                .confirmationDialog("Post", isPresented: $showActionSheet, titleVisibility: .visible) {
                    Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                        Text("Report")

                    })

                    Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                        Text("Delete")

                    })

                    Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                        Text("Share")
                    })
                }
        }
    }
}

#Preview {
    ActionsSheetsBootCamp()
}
