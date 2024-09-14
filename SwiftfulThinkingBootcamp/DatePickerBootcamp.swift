//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/26/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2000)) ?? Date()
    let endingDate: Date = Date()
    
    // customize date display
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date is: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
                .accentColor(Color.red)
                .datePickerStyle(
                    .compact
                    //.graphical
                    //.wheel
            )
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
