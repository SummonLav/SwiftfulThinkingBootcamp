//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/16/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("Portrait-of-Picasso")
            //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerSize: 20))
    }
}

#Preview {
    ImageBootcamp()
}
