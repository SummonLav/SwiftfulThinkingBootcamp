//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/11/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 25)
            //.fill(Color.blue)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [80]))
            //.trim(from: 0.2, to: 1)
            //.stroke(Color.purple, lineWidth: 50)
            .fill(Color(UIColor.secondarySystemBackground))
            .frame(width: 300, height: 200).shadow(color: Color.red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 8, y: 8)
    }
}

#Preview {
    ShapesBootcamp()
}
