//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/16/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue, Color.orange, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
