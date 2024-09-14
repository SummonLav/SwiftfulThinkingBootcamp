//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/22/24.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 50: 5)
                .fill(isStartingState ? Color.red: Color.blue)
                .frame(width: isStartingState ? 200: 50,
                       height: isStartingState ? 50: 200)
            
            //Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
