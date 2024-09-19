//
//  NavStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct NavStackBootcamp: View {
    let fruit = ["apple", "banana", "cherry"]
    
    var body: some View {
        // lazy loading of Navigation
        NavigationStack {
            ScrollView {
                VStack(spacing: 20.0) {
                    
                    ForEach(fruit, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) {x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                SecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { fruit in
                Text("View: \(fruit)")
            }
        }
    }
}

struct SecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT Screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavStackBootcamp()
}
