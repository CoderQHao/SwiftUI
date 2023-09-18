//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var languages = ["Objective-C", "Swift", "SwiftUI"]

    var body: some View {
        List {
            Section {
                Text("Apple")
                Text("Banana")
                Text("Pear")
            } header: {
                Text("Fruit")
            } footer: {
                Text("Total: 3")
            }
            
            Section {
                Text("Tiger")
                Text("Lion")
                Text("Monkey")
                Text("Rabbit")
            } header: {
                Text("Animals")
            } footer: {
                Text("Total: 4")
            }

        }
    }
    
    func addItem() {
        languages.append("Flutter")
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
