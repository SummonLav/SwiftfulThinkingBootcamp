//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/20/24.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "Button Gallery"
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            
            Button("press me!") {
                self.title = "BUTTON #1 WAS PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {self.title = "BUTTON #2 WAS PRESSED"},
                   label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10))
            })
            
            Button(action: {self.title = "Button #3 WAS PRESSED"},
                   label: {
                            Circle()
                    .fill(Color.white)
                    .frame(width: 64, height: 64)
                    .shadow(radius: 10)
                    .overlay(Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.pink))
            })
            
            Button(action: {
                self.title = "BUTTON #4 WAS PRESSED"
            }, label: {
                Text("finished".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 1.0))
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
