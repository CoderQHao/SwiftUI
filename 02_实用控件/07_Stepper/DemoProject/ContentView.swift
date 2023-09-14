//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var temperature: Double = 0
    
    var body: some View {
        VStack {
            
            Stepper {
                Text("Temperature: \(Int(temperature))")
            } onIncrement: {
                self.temperature += 1
            } onDecrement: {
                self.temperature -= 1
            } onEditingChanged: { item in
                print(item)
            }
        }.padding()
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
