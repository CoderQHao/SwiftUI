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
        NavigationView {
            List {
                ForEach(languages, id: \.self) {
                    Text($0)
                }
                .onDelete { offsets in
                    if let first = offsets.first {
                        languages.remove(at: first)
                    }
                }
            }
            .navigationBarItems(trailing: EditButton())
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
