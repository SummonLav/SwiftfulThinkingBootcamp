//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animation1: Bool = false
    @State private var animation2: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 40.0) {
                Button("Action 1") {
                    animation1.toggle()
                }

                Button("Action 2") {
                    animation2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animation1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animation2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)

            }
        }
        .animation(.spring(), value: animation1)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
