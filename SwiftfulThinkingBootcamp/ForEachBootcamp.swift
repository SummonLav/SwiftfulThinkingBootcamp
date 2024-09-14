//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/19/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("Index is: \(index)")
                }
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
