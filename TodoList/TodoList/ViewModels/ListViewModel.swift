//
//  ListViewModel.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }

    let itemsKey: String = "item_List"

    init() {
        getItems()
    }

    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }

        items = savedItems
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        let newItems = ItemModel(title: title, isCompleted: false)
        items.append(newItems)
    }

    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }

    func saveItems() {
        if let encoded = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encoded, forKey: itemsKey)
        }
    }
}
