//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/31/24.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Float = 3
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                //"\(sliderValue)"
                String(format: "%.1f", sliderValue)
            )
            //Slider(value: $sliderValue)
            Slider(value: $sliderValue, in: 1...5, step: 0.5)
                .accentColor(.red)
                .padding(20)
        }
    }
}

#Preview {
    SliderBootcamp()
}
