//
//  ColorPickerBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 5.05.2024.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var background: Color = .orange

    var body: some View {
        ZStack {
            background.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            ColorPicker(
                "Select a color :",
                selection: $background,
                supportsOpacity: true)

                .padding()
                .background(.black)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                .padding()
                .font(.headline)
        }
    }
}

#Preview {
    ColorPickerBootCamp()
}
