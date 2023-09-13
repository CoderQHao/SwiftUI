//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var myDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
//            DatePicker(selection: $selectedDate, displayedComponents: .hourAndMinute) {
//                Text("Date")
//            }
//
//            DatePicker(selection: $selectedDate, displayedComponents: .date) {
//                Text("Date")
//            }
//            .labelsHidden()
            
            DatePicker(selection: $selectedDate,in: Date()...Date().advanced(by: 7 * 24 * 3600), displayedComponents: [.date, .hourAndMinute]) {
                Text("Date")
            }
            .datePickerStyle(GraphicalDatePickerStyle())

            Text("Your Choice: \(selectedDate, formatter: myDateFormatter)")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
