//
//  BadgetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/14/24.
//

import SwiftUI

// List
// Tabview

struct BadgetsBootcamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Collected")
                }
//                .badge(5)
                .badge("NEW")
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Collected")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Collected")
                }
            
        }
    }
}

#Preview {
    BadgetsBootcamp()
}
