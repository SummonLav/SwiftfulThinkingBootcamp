//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/31/24.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    
                    Text("This color is black")
                        .foregroundColor(.black)
                    
                    Text("This color is white")
                        .foregroundColor(.white)
                    
                    Text("This color is globally ADAPTIVE!")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    Group {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
//        DarkModeBootcamp()
//            .preferredColorScheme(.dark)
    }
}
