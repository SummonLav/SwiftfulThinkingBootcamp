//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/16/24.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstack -> Vertical
    // Hstack -> Horizontal
    // Zstack -> zIndex (back to front)
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 300, height: 500)
            
            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                }
                
                HStack (alignment: .bottom, spacing: 10 ) {
                    Text("Items in your cart: ")
                        .font(.caption)
                        .foregroundColor(.blue)
                    Text("5")
                        .font(.largeTitle)
                }
            }
        }
    }
}

#Preview {
    StacksBootcamp()
}
