//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/20/24.
//

import SwiftUI

struct StateBootcamp: View {
    @State var bgColor: Color = Color.green
    @State var mytitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            bgColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(mytitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        bgColor = .blue
                        mytitle = "button 1 is pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        bgColor = .purple
                        mytitle = "button 2 is pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
