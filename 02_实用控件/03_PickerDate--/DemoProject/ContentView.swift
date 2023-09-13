//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {

    
    @State var formatedDate = ""
    var bindingDate : Binding<Date> {
        Binding<Date>  {
            Date()
        } set: {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            formatedDate = formatter.string(from: $0)
        }

    }
    
    var body: some View {
        VStack {
            DatePicker(selection: bindingDate, displayedComponents: DatePickerComponents.date) {
                Text("\(formatedDate)")
            }

            Text("Your Choice: \(formatedDate)")
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
