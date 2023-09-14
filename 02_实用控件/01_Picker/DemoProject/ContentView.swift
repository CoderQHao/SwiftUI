//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var fruits = ["Apple", "Banner", "Pear", "Watermelon"]
    var colors = [Color.blue, Color.orange, Color.red, Color.pink]
    
    @State private var selectedItem = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedItem) {
                ForEach(0 ..< fruits.count, id: \.self) {
                    Text(self.fruits[$0]).tag($0)
                        .foregroundColor(self.colors[$0])
                }
            } label: {
                Text("Fruits")
            }
            .pickerStyle(.wheel)
            
            Text("Your choice:")
            + Text("\(fruits[selectedItem])")
                .foregroundColor(colors[selectedItem])
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
