//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/25/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var ToggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(ToggleIsOn ? "Online" : "Offlline")
            }
            .font(.headline)
            
            Toggle(
                isOn: $ToggleIsOn,
                label: {
                    Text("Change Status" )
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            //Spacer()
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    ToggleBootcamp()
}
