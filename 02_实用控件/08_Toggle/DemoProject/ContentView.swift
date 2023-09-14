//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var showNotification = true
    
    var body: some View {
        VStack {
            Text("Show Notification: ")
            + Text("\(self.showNotification.description)")
                .foregroundColor(.green)
                .bold()
            Toggle(isOn: $showNotification) {
                Text("Show notification:")
            }.tint(.yellow)
            .padding()
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
