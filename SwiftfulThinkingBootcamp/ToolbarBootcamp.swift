//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/15/24.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // bg
                Color.indigo.edgesIgnoringSafeArea(.all)
                
                // body
                Text("Hey")
                    .foregroundStyle(.white)
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "house.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
