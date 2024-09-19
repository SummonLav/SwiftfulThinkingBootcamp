//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/17/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            // bg
            Color.orange.ignoresSafeArea()
            
            // Main
            Button("Click me") {
                showPopover.toggle()
            }
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading)) {
                Text("Hello, subscriber!")
                    .presentationCompactAdaptation(.popover)
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
