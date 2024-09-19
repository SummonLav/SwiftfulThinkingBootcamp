//
//  GridViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/18/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow() {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
//                            EmptyView()
                            Color.green
                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                        }
                    }
                }
            }
        }
//        Grid() {
//            GridRow() {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            
//            GridRow() {
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}
