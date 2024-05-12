//
//  GridViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 12.05.2024.
//

import SwiftUI

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Spacer()

        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0 ..< 4) { rowIndex in

                GridRow(alignment: .bottom) {
                    ForEach(0 ..< 4) { columnIndex in

                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)

                        if cellNumber == 7 {
                            EmptyView()
                            // Color.green
                            // .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.trailing)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                        .center
                                )
                        }
                    }
                }
            }
        }

        Spacer()

        Grid {
            GridRow {
                cell(int: 1)
                cell(int: 2)
                cell(int: 3)
            }

            Divider()
                .gridCellUnsizedAxes(.horizontal)
            cell(int: 33333333333333)

            GridRow {
                cell(int: 4)
                cell(int: 5)
            }
        }

        Spacer()
    }

    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}
