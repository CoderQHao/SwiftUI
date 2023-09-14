//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    private let animals = ["🐶 Dog", "🐯 Tiger", "🐷 Pig"]
    @State private var selectedAnimal = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedAnimal) {
                ForEach(0 ..< animals.count, id: \.self) {
                    Text(self.animals[$0]).tag($0)
                }
            } label: {
                Text("animals")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Your choice: \(animals[selectedAnimal])")
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
