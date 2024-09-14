//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
