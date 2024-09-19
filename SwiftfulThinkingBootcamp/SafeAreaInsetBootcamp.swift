//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding(30.0)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
