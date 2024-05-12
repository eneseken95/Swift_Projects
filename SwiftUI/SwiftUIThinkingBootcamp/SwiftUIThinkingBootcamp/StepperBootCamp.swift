//
//  StepperBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 5.05.2024.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0

    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()

            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)
                .fill(Color.orange)
                .frame(width: 300 + widthIncrement, height: 200)

            Stepper("Stepper 2") {
                incrementWidth(amount: 100)
            } onDecrement: {
                incrementWidth(amount: -100)
            }
        }
    }

    func incrementWidth(amount: CGFloat) {
        withAnimation {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootCamp()
}
