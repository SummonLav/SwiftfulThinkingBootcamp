//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/16/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
    }
}

#Preview {
    FrameBootcamp()
}
