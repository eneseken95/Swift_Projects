//
//  DocumentationBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 7.05.2024.
//

import SwiftUI

struct DocumentationBootCamp: View {
    
    // MARK: PROPERTİES

    @State var data: [String] = ["Apples", "Oranges", "Bananas"]

    @State var showAlert: Bool = false

    // MARK: BODY

    var body: some View {
        NavigationStack // Start: Nav
            {
                ScrollView {
                    Text("Hello")
                    ForEach(data, id: \.self) { name in

                        Text(name)
                            .font(.headline)
                    }
                }
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("ALERT", action: {
                    showAlert.toggle()
                }))

                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")

                })
            } // End: Nav
    }

    // MARK: FUNCTİONS

    /// Gets an alert  with a specified title.
    ///
    /// ```
    /// getAlert(text: String) -> Alert(title: Text("Hi))
    ///
    /// ```
    ///
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert  with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootCamp()
}
