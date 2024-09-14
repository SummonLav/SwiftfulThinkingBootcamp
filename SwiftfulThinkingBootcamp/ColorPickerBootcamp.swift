//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/25/24.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var bgColor: Color = .green
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea(.all)
            
            ColorPicker("Select a Color",
                        selection: $bgColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10) 
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
