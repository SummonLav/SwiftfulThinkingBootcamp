//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.blue.cornerRadius(20))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                
            }, label: {
                Label("share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                
            }, label: {
                Text("report post")
            })
            
            Button(action: {
                
            }, label: {
                HStack {
                    Text("collect post")
                    Image(systemName: "heart.fill")
                }
            })
        }))
    }
}

#Preview {
    ContextMenuBootcamp()
}
