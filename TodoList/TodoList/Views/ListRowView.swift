//
//  ListRowView.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .pink)
            Text(item.title)
            Spacer()
        }.font(.title3)
    }
}

/* var item1 = ItemModel(title: "First item", isCompleted: false)
 var item2 = ItemModel(title: "Second item", isCompleted: true)

 #Preview {

         Group {
             ListRowView(item: item1)
             ListRowView(item: item2)
         }
 } */
