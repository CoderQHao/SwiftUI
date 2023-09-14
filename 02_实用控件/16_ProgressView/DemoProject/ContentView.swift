//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    @State var value  = 20.0
    
    var body: some View {
        VStack {
//            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle(tint: Color.orange))
            
            ProgressView(value: value, total: 100) {
                Text(String(format: "%.2f", value))
            }
            Button {
                if (self.value <= 90) {
                    self.value += 10
                }
            } label: {
                Text("Go ahead")
            }
        }
        .padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
