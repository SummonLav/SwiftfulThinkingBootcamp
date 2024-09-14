//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/25/24.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Trending"
    ]
    
    // set color to a selected tag
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.cyan
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            Picker(
                selection: $selection,
                label:
                    HStack {
                        Text("Filter")
                        Text(selection)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(color: .blue.opacity(0.3), radius: 10, y: 10)
                ,
                content: {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option)
                            .tag(option)
                    }
                })
            
            
            HStack {
                Text("Age: ")
                Text(selection)
            }
            
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(1..<4) {number in
                        Text("\(number)").tag("\(number)")
                    }
                })
            //.pickerStyle(MenuPickerStyle())
            //.pickerStyle(WheelPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
            //.background(Color.yellow)
        }
        
    }
}

#Preview {
    PickerBootcamp()
}
