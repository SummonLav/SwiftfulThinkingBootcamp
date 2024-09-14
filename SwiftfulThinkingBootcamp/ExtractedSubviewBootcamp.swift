//
//  ExtractedSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/20/24.
//

import SwiftUI

struct ExtractedSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color(.cyan).ignoresSafeArea()
            
            FruitList()
        }
    }
}

#Preview {
    ExtractedSubviewBootcamp()
}

struct FruitList: View {
    var body: some View {
        VStack {
            Text("1")
            Text("Apples")
        }
        .padding()
        .background(.orange)
        .cornerRadius(10)
    }
}
