//
//  AlertBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 30.04.2024.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.orange
    @State var alertTitle: String = "Error"
    @State var alertMessage: String = "Error Message"
    @State var alertType: MyAlerts? = nil

    enum MyAlerts {
        case success
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            VStack {
                Button("Button 1") {
                    showAlert.toggle()
                    alertType = .error
                }

                Button("Button 2") {
                    showAlert.toggle()
                    alertType = .success
                }
            }

            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }.foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
    }

    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("This was a succces"), message: nil, dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))

        case .error:
            return Alert(title: Text("This was an error"))

        default: return Alert(title: Text("error"))
        }

        /* return Alert(
         title: Text(alertTitle),
         message: Text(alertMessage),
         primaryButton: .destructive(Text("Delete"), action: {
             backgroundColor = .red
         }),
         secondaryButton: .cancel(Text("Cancel"), action: {
             backgroundColor = .blue
         })
         ) */
    }
}

#Preview {
    AlertBootCamp()
}
