//
//  ToggleBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 3.05.2024.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var toggleIsOn: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Satatus:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)

            Toggle(isOn: $toggleIsOn, label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle())
            .tint(Color.pink)
            Spacer()
        }
        .padding(.horizontal, 70)
    }
}

#Preview {
    ToggleBootCamp()
}
