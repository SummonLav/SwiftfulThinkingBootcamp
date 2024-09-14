//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/22/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
//        VStack (spacing: 20) {
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            if showCircle == true {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            
//            Spacer()
//        }
        VStack {
            Button("is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                Text("Some Contents here!")
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
