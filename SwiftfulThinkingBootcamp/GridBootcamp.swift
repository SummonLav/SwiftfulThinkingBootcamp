//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/19/24.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 500)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .padding()
                    ) {
                        ForEach(0..<50) {index in
                            Rectangle()
                                .frame(height:  150)
                        }
                    }

                    Section(header:
                                Text("Section 2")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.red)
                                    .padding()
                    ) {
                        ForEach(0..<50) {index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height:  150)
                        }
                    }
                })
        }
    }
}

#Preview {
    GridBootcamp()
}
