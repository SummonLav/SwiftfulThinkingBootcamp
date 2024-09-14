//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/17/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hello, World!")
//                .background(Color.yellow)
//                .padding(.all, 10)
//                .padding(.leading, 20)
//                .background(Color.blue)
                .font(.largeTitle)
                .fontWeight(.semibold)
                // add between-texts padding
                .padding(.bottom, 20)
            
            Text("Here is the description of the project. Please expand to view the details.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
