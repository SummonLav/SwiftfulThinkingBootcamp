//
//  BgMaterialBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/14/24.
//

import SwiftUI

struct BgMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4.0)
                    .frame(width: 60, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30.0)
        }
        .ignoresSafeArea()
        .background(
            Image("Portrait-of-Picasso")
        )
    }
}

#Preview {
    BgMaterialBootcamp()
}
