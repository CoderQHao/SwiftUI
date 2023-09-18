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
                Label("Menu", systemImage: "list.bullet")
                Label("Menu", systemImage: "heart")
                    .listItemTint(.red)
                Label("Menu", systemImage: "seal")
                    .listItemTint(.orange)
            }
            
            Section {
                Label("Menu", systemImage: "list.bullet")
                Label("Menu", systemImage: "list.bullet")
                    .listRowBackground(Color.pink)
            }
            .listItemTint(.green)

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
