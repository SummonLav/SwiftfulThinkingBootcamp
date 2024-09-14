//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/20/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //        ZStack {
        //            // Background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            //foreground
        //            VStack {
        //                Text("Remain Text inside the Safe Area!")
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            //.background(Color.red)
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) {index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(Color.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
