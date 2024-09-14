//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/19/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: true, content:  {
            HStack (spacing: nil) {
                ForEach(0..<50) { rec in
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 300, height: 300)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        })
    }
}

#Preview {
    ScrollViewBootcamp()
}
