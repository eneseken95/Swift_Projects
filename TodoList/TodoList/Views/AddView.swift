//
//  AddView.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText = ""

    @State var alertTitle: String = "Your new item's title must be at least 3 characters long. 🤔"
    @State var showAlert: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somethingh here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(Color.white)
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.accentColor)
                }).clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }

    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }

    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            showAlert.toggle()
            return false
        }
        return true
    }

    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddView()
    }

    .environmentObject(ListViewModel())
}
