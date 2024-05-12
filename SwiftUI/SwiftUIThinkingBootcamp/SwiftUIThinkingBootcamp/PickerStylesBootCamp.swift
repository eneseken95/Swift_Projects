//
//  PickerStylesBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 4.05.2024.
//

import SwiftUI

struct PickerStylesBootCamp: View {
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red

        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]

        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    @State var selection: String = "Most Recent"
    @State var Age: String = "1"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]

    var body: some View {
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices, id: \.self) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())

        Spacer()

        VStack {
            HStack {
                Text("Age:")
                Text(Age)
            }
            Picker(selection: $Age, label: Text("Picker")) {
                ForEach(18 ..< 100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundStyle(.orange)
                        .tag("\(number)")
                }
            }
            .pickerStyle(MenuPickerStyle())
        }

        Spacer()

        Picker(
            selection: $Age
            , label:
            HStack {
                Text("Picker")
                Text(Age)
            }
        ) {
            Text("1").tag(1)
            Text("2").tag(2)
        }
    }
}

#Preview {
    PickerStylesBootCamp()
}
