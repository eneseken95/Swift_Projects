//
//  DatePickerBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 5.05.2024.
//

import SwiftUI

struct DatePickerBootCamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2023))
        ?? Date()

    let endingDate: Date = Date()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        VStack {
            Text("Selected date ıs:")
            Text(dateFormatter.string(from: selectedDate))
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
            DatePicker("Select a date:", selection: $selectedDate, in: startingDate ... endingDate)
                .tint(Color.pink)
                .datePickerStyle(
//                    GraphicalDatePickerStyle()
//                    CompactDatePickerStyle()
                    WheelDatePickerStyle()
                )
        }
    }
}

#Preview {
    DatePickerBootCamp()
}
