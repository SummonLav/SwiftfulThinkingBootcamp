//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here ...", text: $textfieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.blue)
                    .font(.headline)
                
                Button(action: {
                    if textisAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .background(textisAppropriate() ? Color.cyan : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textisAppropriate())
                
                ForEach(dataArray, id:\.self) {data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Sign in")
        }
    }
    
    func textisAppropriate() -> Bool {
        // check text
        if textfieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textfieldText)
        textfieldText = ""
    }
}


#Preview {
    TextFieldBootcamp()
}
