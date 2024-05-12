//
//  ExtractSubViewsBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 25.04.2024.
//

import SwiftUI

struct ExtractSubViewsBootCamp: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            contentLayer
        }
    }

    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, bgColor: Color.red)
            MyItem(title: "Oranges", count: 2, bgColor: .orange)
            MyItem(title: "Banana", count: 3, bgColor: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewsBootCamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let bgColor: Color

    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding(10)
        .foregroundColor(.white)
        .background(bgColor)
        .cornerRadius(10)
    }
}
