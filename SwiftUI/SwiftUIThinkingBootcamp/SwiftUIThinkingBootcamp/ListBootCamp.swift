//
//  ListBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 29.04.2024.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach",
    ]

    @State var veggies: [String] = [
        "tomato", "patato", "carrot",
    ]

    var body: some View {
        NavigationStack {
            List {
                Section(header:

                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.title3)
                    .foregroundStyle(.pink)

                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }

                Section(header:

                    HStack {
                        Text("Vegies")
                        Image(systemName: "flame.fill")
                    }
                    .font(.title3)
                    .foregroundStyle(.orange)

                ) {
                    ForEach(veggies, id: \.self) { veggies in

                        Text(veggies.capitalized)
                    }

                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            // .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)

        }.accentColor(.pink)
    }

    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }

    func add() {
        fruits.append("coconat")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
