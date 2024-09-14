//
//  ExtractedFunctionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/20/24.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var bgColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // Background
            bgColor.ignoresSafeArea()
            
            // Content
            VStack {
                Text("Title")
                    .font(.largeTitle)
                
                Button(action: {
                    ButtonPressed()
                }, label: {
                    Text("press me".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                })
            }
        }
    }
    
    func ButtonPressed() {
        bgColor =  .yellow
    }
}


#Preview {
    ExtractedFunctionBootcamp()
}
