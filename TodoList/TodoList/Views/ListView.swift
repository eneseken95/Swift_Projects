//
//  ListView.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewModel: ListViewModel

    var body: some View {
        ZStack {
            if listviewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List {
                    ForEach(listviewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listviewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewModel.deleteItem)
                    .onMove(perform: listviewModel.moveItem)
                }
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
        .font(.title3)
        .fontWeight(.semibold)
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(ListViewModel())
}
