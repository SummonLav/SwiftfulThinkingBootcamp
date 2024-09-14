//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/22/24.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SheetView()
            })
//            .sheet(isPresented: $showSheet, content: {
                // DO NOT ADD CONDITIONAL LOGIC!!!!!!!!!!!!!!!!!!!! 
//                SheetView()
//            })
        }
    }
}


struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var  body: some View {
        ZStack(alignment: .topTrailing) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    //.background(Color.white.cornerRadius(10))
            })
        }
    }
}



#Preview {
    SheetsBootcamp()
    //SheetView()
}
