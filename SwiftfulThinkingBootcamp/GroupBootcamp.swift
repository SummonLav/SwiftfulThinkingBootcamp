//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Hello, World!")

            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.headline)
            .foregroundStyle(.red)
        }
        .font(.largeTitle)
        .foregroundStyle(.blue)
    }
}

#Preview {
    GroupBootcamp()
}
