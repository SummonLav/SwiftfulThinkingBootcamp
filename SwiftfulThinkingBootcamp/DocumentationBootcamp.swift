//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/1/24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // LAV - WORKING COPY - things to do:
    /*
     1)
     2)
     
     */
    
    var body: some View {
        NavigationView { // START: NAV
            VStack { // START: SCROLLV
                Text("Hello")
                
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            } // END: SCROLLV
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the Alert!")
            }
        } // END: NAV
    }
    
    // MARK: FUNCTIONS
    
    /// gets an alert with a specified title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
