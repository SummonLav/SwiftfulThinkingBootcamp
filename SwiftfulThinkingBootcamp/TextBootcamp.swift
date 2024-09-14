//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/11/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Welcome to the Swiftful Thinking Bootcamp, hope you enjoy this journey!")
//            .font(.body)
//            .fontWeight(.bold)
//            .underline()
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextBootcamp()
}
