//
//  TextEditorBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 3.05.2024.
//

import SwiftUI

struct TextEditorBootCamp: View {
    
    @State var textEditor: String = "This is the starting text"
    @State var savedText: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditor)
                    .frame(height: 150)
                    .colorMultiply(Color("Gray"))
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                    .padding()

                Button(action: {
                    savedText = textEditor
                }, label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/ .continuous/*@END_MENU_TOKEN@*/))
                        .padding()

                })

                Text(savedText)
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor BootCamp")
        }
    }
}

#Preview {
    TextEditorBootCamp()
}
