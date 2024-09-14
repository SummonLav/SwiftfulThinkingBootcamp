//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/24/24.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditortext: String = "this is the example text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // text editor
                TextEditor(text: $textEditortext)
                    .frame(height: 250)
                    .colorMultiply(.purple)
                
                // save button
                Button {
                    savedText = textEditortext
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                // show saved text
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            //.background(Color.orange.opacity(0.5))
            .navigationTitle("TextEditor Example")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
