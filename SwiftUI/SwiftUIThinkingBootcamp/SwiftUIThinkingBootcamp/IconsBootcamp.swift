//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 11.04.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.crop.circle.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
    }
}

#Preview {
    IconsBootcamp()
}
