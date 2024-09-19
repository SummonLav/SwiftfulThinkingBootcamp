//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            NextView()
                // resizs sheet
                .presentationDetents([.fraction(0.3), .medium, .large])
//                .presentationDetents([.medium])
                // dragable sheet from medium to large size
//                .presentationDetents([.medium, .large])
//                .interactiveDismissDisabled()
        }
    }
}

struct NextView: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            Text("View #2")
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
