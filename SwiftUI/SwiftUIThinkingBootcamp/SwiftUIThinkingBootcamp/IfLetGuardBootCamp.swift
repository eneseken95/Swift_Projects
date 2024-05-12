//
//  IfLetGuardBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 7.05.2024.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    
    @State var currentUserID: String? = "user123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding")

                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

//                Safe coding = Great coding
//                Text(displayText!)

                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }

    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }

    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootCamp()
}
