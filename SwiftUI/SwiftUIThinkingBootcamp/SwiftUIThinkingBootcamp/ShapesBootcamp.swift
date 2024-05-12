//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 10.04.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 90, height: 90))
//        Ellipse()
//        Circle()
//           .fill(Color.blue)
//            .stroke(Color.blue)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 3)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, style: StrokeStyle(lineWidth:30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 40)

            .frame(width: 200, height: 330, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ShapesBootcamp()
}
