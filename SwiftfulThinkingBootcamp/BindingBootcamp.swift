//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/22/24.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var bgColor: Color = Color.green
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            ButtonView(bgColor: $bgColor)
        }
    }
}

#Preview {
    BindingBootcamp()
}

// child view -> Change var  in parent view
struct ButtonView: View {
    @Binding var bgColor: Color
    var body: some View {
        Button(action: {
            bgColor = Color.orange
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}
