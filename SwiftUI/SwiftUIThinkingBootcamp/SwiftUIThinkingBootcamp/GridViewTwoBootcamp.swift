//
//  GridViewTwoBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

struct GridViewTwoBootcamp: View {
    var body: some View {
        NavigationStack {
            Grid {
                GridRow {
                    Color.green.opacity(0.4)
                        .gridCellColumns(3)
                }

                GridRow {
                    Color.blue.opacity(0.4)
                    Color.orange.opacity(0.4)
                        .gridCellColumns(2)
                }

                GridRow {
                    Color.blue.opacity(0.4)
                    Color.pink.opacity(0.4)
                    Color.yellow.opacity(0.4)
                }
                GridRow {
                    Color.blue.opacity(0.4)
                    Color.green.opacity(0.4)
                    Color.yellow.opacity(0.4)
                }
            }
            .navigationTitle("Grid View Bootcamp")
            .padding()
        }
    }
}

#Preview {
    GridViewTwoBootcamp()
}
