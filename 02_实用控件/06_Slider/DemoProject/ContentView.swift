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
            Slider(value: $temperature, in: -20...40) { item in
                print(item)
            }
            
            HStack {
                Image(systemName: "sun.max")
                Slider(value: $temperature, in: -20...40, step: 2) { item in
                    print(item)
                }
                .accentColor(.pink).colorInvert()
               Image(systemName: "sun.max.fill")
            }
            .padding()

            Text("The temperature is \(Int(temperature))")
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
