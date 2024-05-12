//
//  SliderBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 5.05.2024.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating")
                .font(.title2)
            Text(
                String(format: "%.2f", sliderValue)
            )
            .foregroundStyle(.orange)
            .font(.title)
            Slider(
                value: $sliderValue,
                in: 1 ... 5) {
                    Text("Tittle")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("5")
                } onEditingChanged: { _ in
                    color = .green
                }

                .foregroundStyle(.pink)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    SliderBootCamp()
}
