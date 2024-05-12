//
//  TextFieldBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 2.05.2024.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
                    .padding(20)
                    .background(Color.gray.opacity(0.3).clipShape(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/)))
                    .foregroundStyle(.black)
                    .font(.headline)

                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }

                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                        .background(textIsAppropriate() ? .pink : .gray)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                        .foregroundStyle(.white)
                        .font(.headline)

                }).disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField BootCamp")
        }
    }

    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        } else {
            return false
        }
    }

    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootCamp()
}
