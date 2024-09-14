//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/22/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
// Solution: Animation Not Working w/ if showView {...}
//            You're defining 2 different states:
//            1. With RoundedRectangle if showView = true
//            2. Without RoundedRectangle if showView = false
            
//            So, every time showView changes, the body will be re-rendered. If it toggles from false -> true, then RoundedRectangle will be displayed instantly without any animations because it's not here until showView = true. And if it toggles from true -> false, then it can be dismissed with animation because now, it's a part of the View. You may try this to make it show/disappear more smoothly:
            
            //if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: showView ? (UIScreen.main.bounds.height * 0.5) : 0.0)    // half of the screen height
                    .transition(.move(edge:  .bottom))
                    .animation(.easeInOut, value: showView)
            //}
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
