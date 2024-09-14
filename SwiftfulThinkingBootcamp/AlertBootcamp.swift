//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAAlerts? = nil
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String = ""
    @State var bgColor: Color = Color.yellow
    
    enum MyAAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
        
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("Successfully uploaded 🥳"), dismissButton: .default(Text("OK"), action: {
                bgColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error!") )
        case nil:
            return Alert(title: Text("ERROR."))
        }
//        return Alert(title: Text("Opps, an error occurs!"),
//                     message: Text("describing the error"),
//                     primaryButton:  .destructive(Text("DELETE"), action: {
//            bgColor = .red
//        }),
//                     secondaryButton: .cancel())
        //Alert(title: Text("There was an error!"))
    }
}

#Preview {
    AlertBootcamp()
}
